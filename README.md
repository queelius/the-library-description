# The Library: The Indifference of Description

Volume III of the "Indifference of" suite, after *Worldlines: The Indifference of Geometry* and *Multitudes: The Indifference of Measure*.

A nonfiction book that takes the reader from optimal learning to the indifference of description: from the everyday act of induction to the realization that the joints you navigate by, the index, the world, the self, are cuts you make in a structure that has none of its own. It takes up the question the previous volume left open, why the Born measure, why any particular system at all, and answers that the question presupposes a privileged cut there is none of.

**Status:** Re-foundation complete, on `main`. This repository re-founds an earlier draft (originally subtitled *The Indifference of Enumeration*, since superseded and consolidated into this one) around a single spine: *there are no joints, only the cuts you make.* The lore bible is authored and the manuscript ported and reframed: fifteen chapters, three parts, building to a 116-page PDF and a clean-validating EPUB. The one remaining step is the DOI mint (see `CLAUDE.md`). See `CLAUDE.md` for the governing frame and `docs/superpowers/` for the design spec and plans.

## What This Book Is

*Worldlines* established the eternalism of physical spacetime: your life is a finite four-dimensional worm in an indifferent manifold. *Multitudes* established a quantum eternalism: every branch of the wavefunction is equally real, weighted by the Born measure, and it postulates that measure without explaining it. This book goes one level further out, to the totality of all computable structures, and finds the indifference there too, at the bottom, with nothing under it.

The bedrock is mathematics settled since the 1960s:

1. **Bayes' theorem** (Cox's uniqueness)
2. **Kraft's inequality** (prefix-free codes turn length into probability)
3. **Solomonoff's dominance theorem** (the universal prior is asymptotically optimal)

On top of the bedrock the book takes exactly one interpretive commitment, labeled where it enters:

> **The postulate: no cut is privileged.** The totality has no decomposition that is the correct one, and no element that is the one that is real. Every carving, including the carving that says only this world exists, is a cut an observer makes.

Simplicity is not a second postulate; it is what a finite cutter is forced toward, because Kraft makes short descriptions scarce. Quantum mechanics enters only as a familiar landmark, not a step: the plainest reading of the wave-function equations already branches, and a reader who rejects it loses nothing. Observer-measure assumptions (SSA, SIA, the speed prior) are discussed and deliberately not adopted.

The question *Multitudes* leaves open, why the Born measure, is answered by relocation rather than derivation: the Born measure and the universal prior are the same kind of object, the bookkeeping of cuts, and "why this measure" presupposes a privileged vantage the postulate denies. The book traces what the picture does to continuation, mortality, love, memory, and the self, and closes with care: not because the structure implies it, but because the structure does not, and a configuration that holds care is, even so, not the same as one that does not. The same chosen response as *Worldlines*, in a colder room.

## The Spine

> **There are no joints. There are only the cuts you make.**

Generating everything is trivial: the totality of all computable structures, the Library of every possible book, is the output of a one-line program. What is hard, what is the whole of the problem, is locating yourself within it, and every act of locating (predicting, worlding, self-modeling) is a cut. The one move appears at three depths, which are the book's three parts: the index (cut to predict), the system (cut to have a world), and the self (cut to be someone, and to care). Dissolve the self and you dissolve, in the same motion, the privileged coordinate and the privileged world; all three were the same cut.

## Structure

| Part | Chapters | The cut |
|------|----------|---------|
| I. The Index | 1-5 | cut to predict (induction, Bayes, Kraft, the universal prior, optimality) |
| II. The System | 6-10 | cut to have a world (the slip and the postulate, the inhabited Library, the observer, the limits, the indifference of description) |
| III. The Self | 11-15 | cut to be someone, and the held-cut response (continuation, death, love, the pattern, the closing) |

Three parts, 15 chapters (canonical structure in `lore/outline.md`). Target length 20,000 to 25,000 words.

## Repository Structure

```
the-library-description/
├── the-library.tex        # Main LaTeX file (builds to the-library.pdf / .epub)
├── chapters/              # Chapter .tex files (01-15, plus front/back matter)
├── lore/                  # The lore bible (authoritative; foundations.md is canonical)
│   ├── foundations.md         # Bedrock, the postulate, finitude, the cut at three depths
│   ├── themes.md              # Core vision, the inversion, the seven themes, the suite table
│   ├── outline.md             # Canonical three-part, 15-chapter structure
│   ├── direction.md           # Format, tone, pedagogy, the cut as figure
│   ├── index.md               # Picture A vs B (choosing is a cut); local inference
│   ├── implications.md        # Each human concept re-derived as a cut
│   ├── grace.md               # The destination: the held cut
│   ├── landing.md             # Why the closing was hard, and how (c) resolves it
│   ├── apokatastasis.md       # The universalist moral spine; the refusal as a chosen cut
│   └── information_hazards.md # Reader-harm analysis, re-audited under (c)
├── docs/superpowers/      # Design spec and implementation plans for the re-foundation
├── figures/               # TikZ diagrams
├── images/                # Bitmap images
├── kdp/                   # KDP build: metadata.yaml, EPUB css/filter/postprocess, cover
├── CLAUDE.md              # Guidance for Claude Code sessions (the governing frame)
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

The EPUB validates cleanly with `epubcheck`. The cover (`kdp/the-library-cover-ebook.jpg`, 1600x2560) is set for the *Description* subtitle, passes `kdp_validate_cover`, and is embedded in the EPUB. `make epub` builds with whatever cover is present.

## Pairing with the Suite

This is Volume III of the "Indifference of" suite and is intended to be read after *Worldlines* and *Multitudes*, though each stands alone. The three together form a single argument that descends one level at a time: physical eternalism (geometry), quantum eternalism (measure), and computational eternalism (this).

## Author

Alex Towell. [lex@metafunctor.com](mailto:lex@metafunctor.com). [metafunctor.com](https://metafunctor.com)

## License

CC-BY-NC-SA-4.0 (Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International). Pedagogical adaptation is welcome.
