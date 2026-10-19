-- EPUB filter for The Library: The Indifference of Description
-- Three-pass filter:
--   Pass 0: Number figures the way the print book does (chapter.figure)
--   Pass 1: Strip raw LaTeX junk, place rendered figures, rename frontmatter divs
--   Pass 2: Detect chapter epigraph+image patterns, wrap in styled divs
--
-- Figures: `make epub-figures` (kdp/render-figures.lua) renders each TikZ figure
-- to build/epub-figures/<identifier>.png. A figure whose image exists is shown as
-- that image with its numbered caption; one without falls back to a captioned
-- text description, so the build never depends on the render step succeeding.
--
-- Adapted from the Worldlines filter. The book-epigraph attribution is left
-- WITHOUT a leading dash, matching the PDF and the house no-dash discipline.

-- == Helpers ==

local figure_dir = "build/epub-figures"

-- File stem for a figure identifier: "fig:two-carvings" -> "fig-two-carvings".
-- The same mapping lives in kdp/render-figures.lua.
local function figure_image(identifier)
  if identifier == "" then return nil end
  local path = figure_dir .. "/" .. identifier:gsub("[^%w%-]", "-") .. ".png"
  local f = io.open(path, "rb")
  if not f then return nil end
  f:close()
  return path
end

-- Alt text for a rendered figure: "Figure N.M: " plus the caption's first
-- sentence, rendered as plain text so inline math reads as symbols, not TeX.
local function alt_text(number, inlines)
  local plain = pandoc.write(pandoc.Pandoc({pandoc.Plain(inlines)}), "plain")
  plain = plain:gsub("%s+", " "):gsub("^ ", ""):gsub(" $", "")
  local first = plain:match("^(.-%.)%s") or plain
  return (number and ("Figure " .. number .. ": ") or "") .. first
end

-- == Pass 0: Numbering ==
-- One numbering for chapters, appendices, and figures, matching the print
-- book: numbered chapters are level-2 headers (parts are level 1); chapters
-- after the header whose id is the `appendix-start` metadata value are lettered
-- A, B, ...; figures count within their chapter. Pandoc's own reference
-- numbers restart in every Part, so references are rewritten from this table.

local numbers = {}

local numbering = {
  Pandoc = function(doc)
    local appendix_start = doc.meta["appendix-start"]
      and pandoc.utils.stringify(doc.meta["appendix-start"]) or nil
    local chapter, appendix, figure, in_appendix = 0, 0, 0, false
    local current = nil
    local function visit(blocks)
      for _, b in ipairs(blocks) do
        if b.tag == "Header" and b.level == 2 then
          if b.identifier == appendix_start then
            in_appendix = true
          elseif not b.classes:includes("unnumbered") then
            if in_appendix then
              appendix = appendix + 1
              current = string.char(string.byte("A") + appendix - 1)
            else
              chapter = chapter + 1
              current = tostring(chapter)
            end
            figure = 0
            if b.identifier ~= "" then numbers[b.identifier] = current end
          end
        elseif b.tag == "Figure" then
          figure = figure + 1
          if b.identifier ~= "" then numbers[b.identifier] = current .. "." .. figure end
        elseif b.tag == "Div" then
          visit(b.content)
        end
      end
    end
    visit(doc.blocks)
    return doc
  end,
}

-- Check if a Para's first inline is Emph (the epigraph pattern)
local function is_epigraph_para(block)
  if block.tag ~= "Para" or #block.content == 0 then return false end
  return block.content[1].tag == "Emph"
end

-- Check if a Para contains a chapter image (figures/ch*)
local function is_chapter_image_para(block)
  if block.tag ~= "Para" then return false end
  for _, inline in ipairs(block.content) do
    if inline.tag == "Image" and inline.src:match("figures/ch") then
      return true
    end
  end
  return false
end

-- Split Emph inlines at LineBreak into quote + attribution
local function split_at_linebreak(inlines)
  local quote = pandoc.List{}
  local attribution = pandoc.List{}
  local past_break = false
  for _, il in ipairs(inlines) do
    if il.tag == "LineBreak" then
      past_break = true
    elseif past_break then
      attribution:insert(il)
    else
      quote:insert(il)
    end
  end
  return quote, attribution
end

-- == Pass 1: Cleanup ==

local cleanup = {
  -- Strip raw LaTeX blocks (minipage wrappers, spacing, layout commands)
  RawBlock = function(el)
    if el.format == "latex" then
      local t = el.text
      if t:match("\\begin{minipage}")
        or t:match("\\end{minipage}")
        or t:match("\\hfill")
        or t:match("\\hspace")
        or t:match("\\vspace")
        or t:match("\\raggedleft")
        or t:match("\\noindent")
        or t:match("\\cleardoublepage")
        or t:match("\\thispagestyle") then
        return {}
      end
    end
  end,

  -- Strip raw inline LaTeX remnants
  RawInline = function(el)
    if el.format == "latex" then
      if el.text:match("\\noindent") then
        return {}
      end
    end
  end,

  -- TikZ figures: show the rendered image with a numbered caption, or fall
  -- back to a captioned text description if no image was rendered. The figure
  -- is emitted as a div (image, then caption paragraph) rather than <figure>,
  -- so that links inside captions are retargeted across the EPUB's split files
  -- the same way body links are.
  Figure = function(el)
    if #el.content ~= 0 or not el.caption or not el.caption.long or #el.caption.long == 0 then
      return nil
    end
    local caption_inlines = el.caption.long[1].content
    local number = numbers[el.identifier]
    local image = figure_image(el.identifier)
    if image then
      local label = pandoc.List{}
      if number then
        label:insert(pandoc.Emph{pandoc.Str("Figure " .. number .. ".")})
        label:insert(pandoc.Space())
      end
      label:extend(caption_inlines)
      local alt = alt_text(number, caption_inlines)
      return pandoc.Div({
        pandoc.Plain{pandoc.Image({pandoc.Str(alt)}, image)},
        pandoc.Div({pandoc.Para(label)}, pandoc.Attr("", {"diagram-caption"})),
      }, pandoc.Attr(el.identifier, {"diagram"}))
    end
    local prefix = pandoc.List{
      pandoc.Emph{pandoc.Str("[Diagram:")},
      pandoc.Space()
    }
    local suffix = pandoc.List{pandoc.Emph{pandoc.Str("]")}}
    local full = pandoc.List{}
    full:extend(prefix)
    full:extend(caption_inlines)
    full:extend(suffix)
    -- Preserve the figure's label as the div id so that
    -- "Figure~\ref{fig:...}" cross-reference links still resolve.
    return pandoc.Div(
      {pandoc.Para(full)},
      pandoc.Attr(el.identifier or "", {"diagram-description"})
    )
  end,

  -- Cross-references: replace pandoc's per-Part numbers with the book's own.
  Link = function(el)
    local target = el.attributes["reference"]
    if el.attributes["reference-type"] == "ref" and target and numbers[target] then
      el.content = {pandoc.Str(numbers[target])}
      return el
    end
  end,

  -- Rename frontmatter divs for CSS targeting
  Div = function(el)
    if el.classes:includes("center") then
      local text = pandoc.utils.stringify(el)
      if text:match("Kimberly") or text:match("love you") then
        el.classes = pandoc.List{"dedication"}
        return el
      end
    end
    if el.classes:includes("epigraph") then
      el.classes = pandoc.List{"book-epigraph"}
      return el
    end
  end,
}

-- == Pass 2: Restructure chapter epigraphs ==

local restructure = {
  Pandoc = function(doc)
    local blocks = doc.blocks
    local result = pandoc.List{}
    local i = 1

    while i <= #blocks do
      local b = blocks[i]

      -- Detect numbered chapter headers (level 2, no "unnumbered" class)
      if b.tag == "Header" and b.level == 2
         and not b.classes:includes("unnumbered") then
        result:insert(b)
        i = i + 1

        -- Check for epigraph Para right after the header
        if i <= #blocks and is_epigraph_para(blocks[i]) then
          local epigraph_para = blocks[i]
          i = i + 1

          -- Split italic content into quote and attribution
          local emph = epigraph_para.content[1]
          local quote_il, attr_il = split_at_linebreak(emph.content)

          -- Build text side (quote + attribution)
          local text_children = pandoc.List{}
          if #quote_il > 0 then
            text_children:insert(pandoc.Div(
              {pandoc.Para(pandoc.List{pandoc.Emph(quote_il)})},
              pandoc.Attr("", {"quote"})
            ))
          end
          if #attr_il > 0 then
            text_children:insert(pandoc.Div(
              {pandoc.Para(attr_il)},
              pandoc.Attr("", {"attribution"})
            ))
          end
          local text_div = pandoc.Div(text_children, pandoc.Attr("", {"epigraph-text"}))

          -- Build outer div: text + image side by side
          local epigraph_children = pandoc.List{text_div}

          -- Check for chapter image immediately after
          if i <= #blocks and is_chapter_image_para(blocks[i]) then
            epigraph_children:insert(pandoc.Div(
              {blocks[i]},
              pandoc.Attr("", {"chapter-image"})
            ))
            i = i + 1
          end

          -- Wrap in chapter-epigraph div
          result:insert(pandoc.Div(
            epigraph_children,
            pandoc.Attr("", {"chapter-epigraph"})
          ))
        end
      else
        result:insert(b)
        i = i + 1
      end
    end

    doc.blocks = result
    return doc
  end,
}

return {numbering, cleanup, restructure}
