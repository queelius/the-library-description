# Makefile for The Library: The Indifference of Description
# Volume III of the "Indifference of" suite. Computational eternalism.
#
# Main file: the-library.tex. Build artifacts: the-library.pdf and the-library.epub.

PDFLATEX = pdflatex -interaction=nonstopmode
MAIN     = the-library
TEX      = $(MAIN).tex
PDF      = $(MAIN).pdf
EPUB     = $(MAIN).epub
TITLE    = The Library: The Indifference of Description
COVER    = kdp/the-library-cover-ebook.jpg
DEPS     = $(TEX) $(wildcard chapters/*.tex) $(wildcard figures/*.tex)

AUX_EXTS = aux log out toc bbl blg lof lot fls fdb_latexmk synctex.gz

.DEFAULT_GOAL := pdf
.PHONY: pdf check epub ebook wordcount clean distclean help

# PDF build: latexmk reruns pdflatex until the TOC and cross-references converge.
pdf: $(PDF)

$(PDF): $(DEPS)
	latexmk -pdf -pdflatex="$(PDFLATEX) %O %S" $(TEX)
	@echo "PDF built: $(PDF) ($$(pdfinfo $(PDF) 2>/dev/null | awk '/Pages/ {print $$2}') pages)"

# Quick single-pass compile
check: $(DEPS)
	$(PDFLATEX) $(TEX)
	@echo "Quick compile done (run 'make pdf' for full build)"

# EPUB via pandoc, using the kdp/ assets. Cover is used if present; the build
# still succeeds (with a warning) when the cover has not been generated yet.
epub: $(EPUB)
ebook: $(EPUB)

$(EPUB): $(DEPS) kdp/epub-filter.lua kdp/kindle.css kdp/epub-postprocess.py
	@cover=""; \
	if [ -f "$(COVER)" ]; then \
		cover="--epub-cover-image=$(COVER)"; \
	else \
		echo "WARNING: no cover at $(COVER); building EPUB without a cover image."; \
	fi; \
	pandoc $(TEX) \
		-o $(EPUB) \
		--toc --toc-depth=2 \
		--split-level=2 \
		--mathml \
		--epub-title-page=true \
		$$cover \
		--lua-filter=kdp/epub-filter.lua \
		--css=kdp/kindle.css \
		-M title="$(TITLE)" \
		-M author="Alex Towell" \
		-M date="2026" \
		-M lang="en-US"
	@if [ -f kdp/epub-postprocess.py ]; then python3 kdp/epub-postprocess.py $(EPUB); fi
	@echo "EPUB built: $(EPUB)"

wordcount:
	@if command -v detex >/dev/null 2>&1; then \
		detex $(TEX) 2>/dev/null | wc -w | tr -d ' '; \
	else \
		cat chapters/*.tex 2>/dev/null | wc -w | tr -d ' '; \
	fi

clean:
	@for ext in $(AUX_EXTS); do rm -f *.$$ext; done
	@rm -f chapters/*.aux
	@echo "Cleaned auxiliary files (outputs preserved)"

distclean: clean
	rm -f $(PDF) $(EPUB)
	@echo "Cleaned all generated files"

help:
	@echo "The Library: The Indifference of Description -- Build System"
	@echo ""
	@echo "  make pdf         Build the-library.pdf (latexmk, default)"
	@echo "  make epub        Build the-library.epub (pandoc + kdp/ assets)"
	@echo "  make check       Quick single-pass compile"
	@echo "  make wordcount   Word count"
	@echo "  make clean       Remove auxiliary files"
	@echo "  make distclean   Remove all generated files"
	@echo "  make help        Show this message"
