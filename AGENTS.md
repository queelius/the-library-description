# Repository Guidelines

## Project Structure & Source of Truth

`the-library.tex` is the master LaTeX file and defines chapter order. Manuscript files live in `chapters/`: numbered chapters use `NN_snake_case.tex`, while appendices use `A#_snake_case.tex`. Treat `lore/` as authoritative. When an argument, fact, or framing changes, update the relevant lore document first, then propagate the change to the manuscript and cross-references. Store TikZ sources in `figures/`, bitmap artwork in `images/`, and EPUB metadata, filters, CSS, and cover assets in `kdp/`. `docs/superpowers/` records design decisions and implementation plans. Do not commit generated PDFs, EPUBs, or LaTeX auxiliary files.

Worldsmith reviews live in `.worldsmith/`; its repository-local Codex plugin and marketplace entry live in `plugins/worldsmith/` and `.agents/plugins/marketplace.json`.

## Build & Development Commands

Run commands from the repository root:

```bash
make check       # Fast, single-pass pdflatex compile
make             # Full latexmk PDF build with converged references
make epub        # Build the EPUB with pandoc and kdp/ assets
epubcheck the-library.epub  # Validate the finished EPUB
make wordcount   # Count manuscript words; detex is optional
make clean       # Remove auxiliary files but preserve outputs
```

The toolchain requires `pdflatex`, `latexmk`, Libertinus fonts, and `pandoc`. Chapters share one cross-reference namespace, so do not compile them independently.

## Editorial Style & Naming Conventions

Match surrounding LaTeX formatting and indent nested environments consistently. Put every mathematical symbol in math mode, for example `$K(x)$`; avoid raw Unicode math and romanize CJK text. Do not use em dashes. Prefer commas, colons, semicolons, parentheses, or sentence breaks. Keep the voice plain, second-person, companionate, and free of hype. Figures must advance an argument rather than decorate it. Preserve the manuscript's distinction between settled mathematics, the stated postulate, and later consequences.

## Validation Guidelines

There is no unit-test framework or coverage target. Use `make check` during editing, then run `make` before submitting. For EPUB, typography, navigation, figure, or front-matter changes, also run `make epub` and `epubcheck`. Visually inspect affected page openings, the table of contents, cross-references, and figures. Use `make wordcount` when changing chapter scope.

## Commits & Pull Requests

Follow the concise prefixes visible in history, such as `docs:`, `lore:`, `review:`, `port:`, and scoped fixes like `fix(epub):`. Keep each commit focused and describe the outcome, not the editing process. Pull requests should summarize manuscript and lore impact, list validation commands run, link the governing issue or design document, and include screenshots or rendered pages for visual changes.
