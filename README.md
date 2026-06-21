# The Library: The Indifference of Description

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20747069.svg)](https://doi.org/10.5281/zenodo.20747069)

Volume III of the "Indifference of" suite, after *Worldlines: The Indifference of Geometry* and *Multitudes: The Indifference of Measure*.

A nonfiction book that takes the reader from optimal learning to the indifference of enumeration: from the everyday act of induction to the realization that physical reality is one trajectory through the space of all computable structures, weighted by a measure that singles out no one. It asks the question the previous volume left open: why the Born measure? Indeed, why any particular system or law at all?

**Status:** Full first draft complete (fifteen chapters; ~120 pages). Two editorial passes (structural, then line-level) and a full multi-agent review are done. The repository was repositioned from its original working identity (it began as the *Multitudes* draft, before that title moved to Volume II). See `CLAUDE.md` for working state.

## What This Book Is

Worldlines established the eternalism of physical spacetime: your life is a finite four-dimensional worm in an indifferent manifold. Multitudes established a quantum eternalism: every branch of the wavefunction is equally real, weighted by the Born measure, and it postulates that measure without explaining it. This book asks the question Multitudes leaves open: why the Born measure? Indeed, why any particular system or law at all?

The bedrock is mathematics settled since the 1960s:

1. **Bayes' theorem** (Cox's uniqueness)
2. **Kraft's inequality** (prefix-free codes turn length into probability)
3. **Solomonoff's dominance theorem** (the universal prior is asymptotically optimal)

On top of the bedrock the book takes two interpretive moves, each labeled at its entry:

1. Church-Turing applied to reality
2. Computable Universe Hypothesis (Tegmark IV, restricted)

Quantum mechanics enters only as corroboration, not as a move: the plainest reading of the wave-function equations already branches, a familiar physical instance of the multiplicity Move II supplies, and a reader who rejects it loses nothing. Observer-measure assumptions (SSA, SIA, the speed prior) are discussed and deliberately not adopted.

The candidate answer to "why this measure": the Born measure and Solomonoff's universal prior are the same kind of object, a measure over possibilities. If physical reality is a computable subset of all possibility, the Born rule is the measure problem generalized. That honestly pushes the question back one level: why a measure structure at all, and why simplicity (program length) as the prior. The book follows this where it leads, then traces what the picture does to free will, mortality, love, memory, and the self, and asks: if the measure cannot console us, what can?

It closes with care. Not because the measure implies it, but because the measure does not forbid it, and a configuration that contains care is structurally different from one that does not. The same chosen response as Worldlines, in a colder room.

## The Inversion

The book's central conceptual move:

> **Generation is trivial. Indexing is everything.**

The "generator" for reality, taken as the totality of computable structures, is a one-line program: enumerate all programs. The hard problem is not what reality is. The hard problem is where you are in it.

Bayesian inference is the indexing procedure. The simplicity bias is the natural prior on indices. The universal prior is the mathematical structure of indexing under uncertainty. The Computable Universe Hypothesis is the route to the fact that many indices contain a version of you, and the measure does not single out which one is yours; quantum many-worlds is that same fact glimpsed inside confirmed physics, a corroboration rather than a second route.

## Structure

| Part | Chapters | Focus |
|------|----------|-------|
| I. The Discovery | 1-9 | The bedrock, the indexing inversion, the speculative moves, the limits |
| II. The Response | 10-15 | What multiplicity does to human concepts, and the chosen response |

Two parts, 15 chapters (canonical structure in `lore/outline.md`). Target length 20,000 to 25,000 words.

## Repository Structure

```
the-indexing-problem/
├── the-library.tex        # Main LaTeX file (builds to the-library.pdf / .epub)
├── chapters/              # Chapter .tex files (01-15, all drafted)
├── lore/                  # Pedagogical documentation (the lore bible)
│   ├── foundations.md         # Bedrock theorems, the inversion, the cascade
│   ├── themes.md              # Core vision and the seven themes
│   ├── outline.md             # Canonical 15-chapter structure
│   ├── direction.md           # Format, tone, pedagogy
│   ├── index.md               # The two senses of "index"; index-as-abstraction
│   ├── implications.md        # What multiplicity does to each concept
│   ├── grace.md               # The destination
│   ├── landing.md             # Why the closing is hard, and how to land it
│   ├── apokatastasis.md       # The universalist moral spine
│   └── information_hazards.md # Reader-harm analysis and mitigations
├── figures/               # TikZ diagrams
├── images/                # Bitmap images
├── kdp/                   # KDP build: metadata.yaml, EPUB css/filter/postprocess, cover
├── CLAUDE.md              # Guidance for Claude Code sessions
└── Makefile               # Build system
```

## Building

The main file is `the-library.tex`; the build produces `the-library.pdf` and `the-library.epub`.

```bash
make            # Full PDF build (latexmk) -> the-library.pdf
make epub       # EPUB via pandoc + kdp/ assets -> the-library.epub
make check      # Quick single-pass compile
make wordcount  # Word count
make clean      # Remove auxiliary files (outputs preserved)
make distclean  # Remove the-library.pdf and the-library.epub
```

The EPUB validates cleanly with `epubcheck`. The one missing publishing asset is the cover image (`kdp/the-library-cover-ebook.jpg`, 1600x2560); `make epub` builds without it (with a warning) until it is generated.

## Pairing with the Suite

This is Volume III of the "Indifference of" suite and is intended to be read after Worldlines and Multitudes, though each stands alone. The three together form a single argument that descends one level at a time: physical eternalism (geometry), quantum eternalism (measure), and computational eternalism (this).

## Author

Alex Towell. [lex@metafunctor.com](mailto:lex@metafunctor.com). [metafunctor.com](https://metafunctor.com)

## License

CC-BY-NC-SA-4.0 (Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International). Pedagogical adaptation is welcome.
