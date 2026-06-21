-- EPUB filter for The Library: The Indifference of Enumeration
-- Two-pass filter:
--   Pass 1: Strip raw LaTeX junk, rename frontmatter divs
--   Pass 2: Detect chapter epigraph+image patterns, wrap in styled divs
--
-- Adapted from the Worldlines filter. The book-epigraph attribution is left
-- WITHOUT a leading dash, matching the PDF and the house no-dash discipline.

-- == Helpers ==

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

  -- Convert empty figures (TikZ diagrams) to captioned descriptions
  Figure = function(el)
    if #el.content == 0 and el.caption and el.caption.long and #el.caption.long > 0 then
      local caption_inlines = el.caption.long[1].content
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

return {cleanup, restructure}
