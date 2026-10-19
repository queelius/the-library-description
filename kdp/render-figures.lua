-- Render every TikZ figure in the book to a PNG for the EPUB.
--
-- Run by `make epub-figures` with the LaTeX reader's raw_tex extension, so each
-- Figure element carries its tikzpicture as a raw LaTeX block:
--
--   pandoc -f latex+raw_tex chapters/*.tex -t native -o /dev/null \
--     --lua-filter=kdp/render-figures.lua -M figure-dir=build/epub-figures
--
-- (With raw_tex pandoc keeps \include as raw LaTeX, so the chapters are read
-- directly rather than through the-library.tex.)
--
-- Each figure is keyed by its \label (the Figure identifier) and compiled
-- standalone against figures/figure-preamble.tex, the same font, math, and TikZ
-- setup the print book loads. A figure is re-rendered only when its TikZ source
-- changes (a SHA-1 of the source is stored beside the PNG). kdp/epub-filter.lua
-- then places build/epub-figures/<identifier>.png in the matching figure.

local system = require("pandoc.system")
local utils = require("pandoc.utils")

local figure_dir = "build/epub-figures"
local resolution = "300"

local function read_file(path)
  local f = io.open(path, "rb")
  if not f then return nil end
  local data = f:read("a")
  f:close()
  return data
end

local function write_file(path, data)
  local f = assert(io.open(path, "wb"))
  f:write(data)
  f:close()
end

-- File stem for a figure identifier: "fig:two-carvings" -> "fig-two-carvings".
-- The same mapping lives in kdp/epub-filter.lua.
local function stem(identifier)
  return (identifier:gsub("[^%w%-]", "-"))
end

local function tikz_source(figure)
  local source = nil
  figure.content:walk({
    RawBlock = function(raw)
      if raw.format == "latex" and raw.text:find("\\begin{tikzpicture}", 1, true) then
        source = raw.text
      end
    end,
  })
  return source
end

local function standalone_document(preamble_path, tikz)
  return table.concat({
    "\\documentclass[border=6pt]{standalone}",
    "\\usepackage[utf8]{inputenc}",
    "\\input{" .. preamble_path .. "}",
    "\\begin{document}",
    tikz,
    "\\end{document}",
    "",
  }, "\n")
end

local function render(identifier, tikz, preamble_path)
  local base = figure_dir .. "/" .. stem(identifier)
  local digest = utils.sha1(tikz .. read_file(preamble_path))
  if read_file(base .. ".sha1") == digest and read_file(base .. ".png") then
    return
  end
  system.with_temporary_directory("tikz", function(dir)
    write_file(dir .. "/figure.tex", standalone_document(preamble_path, tikz))
    pandoc.pipe("pdflatex", {
      "-interaction=nonstopmode", "-halt-on-error",
      "-output-directory=" .. dir, dir .. "/figure.tex",
    }, "")
    pandoc.pipe("pdftoppm", {
      "-png", "-r", resolution, "-singlefile", dir .. "/figure.pdf", base,
    }, "")
  end)
  write_file(base .. ".sha1", digest)
  io.stderr:write("rendered " .. base .. ".png\n")
end

-- Identifiers seen in this run; images for anything else are stale.
local seen = {}

-- Remove images and digests left behind by figures that no longer exist.
local function remove_stale()
  for _, name in ipairs(system.list_directory(figure_dir)) do
    local base = name:match("^(.*)%.png$") or name:match("^(.*)%.sha1$")
    if base and not seen[base] then
      os.remove(figure_dir .. "/" .. name)
      io.stderr:write("removed stale " .. figure_dir .. "/" .. name .. "\n")
    end
  end
end

return {
  {
    Meta = function(meta)
      if meta["figure-dir"] then
        figure_dir = utils.stringify(meta["figure-dir"])
      end
    end,
  },
  {
    Figure = function(figure)
      local tikz = tikz_source(figure)
      if figure.identifier ~= "" and tikz then
        seen[stem(figure.identifier)] = true
        local preamble = system.get_working_directory() .. "/figures/figure-preamble"
        render(figure.identifier, tikz, preamble .. ".tex")
      end
    end,
  },
  {
    Pandoc = function(doc)
      remove_stale()
      return doc
    end,
  },
}
