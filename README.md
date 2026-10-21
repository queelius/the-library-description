# The Library: The Indifference of Description

Volume III of the "Indifference of" suite, after *Worldlines: The Indifference of Geometry* and *Multitudes: The Indifference of Measure*.

A nonfiction book that takes the reader from optimal learning to the indifference of description: from the everyday act of induction to the recognition that the joints you navigate by, the index, the world, the self, are cuts you make. It takes up the question the previous volume left open, why the Born measure, and declines to answer it by fiat: the book compares the Born rule and the universal prior as weightings that play the same role, derives neither from the other, and leaves "why this weighting?" to quantum theory, where it belongs.

**Status:** Fifteen chapters in three parts, plus a back-matter Appendices section (A to E) and keyed Notes. A 2026-07-15 review and revision removed a set of formal and ontological overclaims; a fresh release review on 2026-10-18 found one remaining formal defect (the definition of Solomonoff's $M$) and asked for the argument and voice of Parts II and III to be restored, and the revision from that review is in the working tree for the author's approval. The DOI release waits on that approval. See `CLAUDE.md` for the governing frame and `.worldsmith/reviews/` for the review record.

## What This Book Is

*Worldlines* read relativity as a block universe: your life a finite four-dimensional worm in an indifferent manifold. *Multitudes* read quantum mechanics the Everettian way, with every branch weighted by the Born measure, a measure it postulates rather than explains. This book goes one level further out, to the space of all computable descriptions, and finds no joint there to stand on.

The argument keeps five footings apart, and every conclusion can be traced to one of them:

1. **Theorem.** Bayes' theorem; Cox-style representation results under stated regularity assumptions; Kraft's inequality (prefix-free codes can afford the length weights $2^{-\ell}$, which makes those weights admissible, not compulsory); Solomonoff's dominance theorem (the universal semimeasure $M$ dominates every lower-semicomputable semimeasure up to a source- and machine-dependent constant), with its convergence results for computable sources; and the invariance theorem, which relates universal machines up to constants that can still matter at finite scales.
2. **Construction.** $M$ itself: a universal monotone machine fed fair coin flips, with $M(x)$ the probability that its output begins with $x$. It is a choice, and a well-earned one; it is not the only coherent prior.
3. **Finitude.** A finite observer must use bounded, local models. Finitude forces approximation; it does not force this prior.
4. **The postulate**, asked once and refusable:

   > **The postulate: no cut is privileged.** The book treats no decomposition of the describable totality as view-independently correct. Every carving into worlds, systems, and selves it reads as a cut an observer makes, and none as the structure's own.

   The postulate is a refusal, not an addition, and it is worded as what the book declines rather than as what the structure lacks: nothing from inside could certify a joint or its absence. It does not assert that all computable worlds exist, and it does not turn $M$ into a measure on realities. Whether the totality is real is itself a cut, and the book holds the question open.
5. **Optional additions**, named wherever a conclusion would need them and adopted nowhere: an ontic reading of the totality, a supplier of occurrences (Everett's interpretation of quantum mechanics, a landmark and never evidence, is one; a spatially infinite cosmos is another), identity rules, self-location rules (SSA, SIA, xerographic distributions), and cosmologies. $M$ weights candidate programs, not observer occurrences; the book calls the gap the missing occurrence measure and does not fill it.

From these the book traces what the indifference does to choice, mortality, love, and the self, and closes with care: not because the structure implies it, but because the structure does not require it, does not reward it, and does not notice, and a situation with care is still not the same, for the people in it, as one without. The same chosen response as *Worldlines*, in a colder room.

## The Spine

> **There are no joints. There are only the cuts you make.**

Generating everything is trivial: an enumeration of all programs, the Library of every possible book made formal, is the output of a short program. What is hard, what is the whole of the problem, is picking out anything in it, and every act of picking out (predicting, worlding, self-modeling) is a cut. Part of this is a theorem-level fact (no computable procedure sorts the Library by how cheaply each thing in it can be said); the rest, that no decomposition at all is the correct one, is the postulate. The one move appears at three depths, which are the book's three parts: the index (cut to predict), the system (cut to have a world), and the self (cut to be someone, and to care). Chapter 14 shows the three as one cut.

## Structure

| Part | Chapters | The cut |
|------|----------|---------|
| I. The Index | 1-5 | cut to predict (induction, Bayes, Kraft, the universal prior, optimality) |
| II. The System | 6-10 | cut to have a world (the slip and the postulate, the inhabited Library, the observer, the center, the indifference of description) |
| III. The Self | 11-15 | cut to be someone, and the held-cut response (continuation, death, love, the pattern, the closing) |

Three parts, 15 chapters (canonical structure in `lore/outline.md`). About 35,000 words including the back matter.

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
│   ├── index.md               # outside vs inside view (choosing is a cut); local inference
│   ├── implications.md        # Each human concept re-derived as a cut
│   ├── grace.md               # The destination: the held cut
│   ├── landing.md             # Why the closing was hard, and how (c) resolves it
│   ├── apokatastasis.md       # The universalist moral spine; the refusal as a chosen cut
│   ├── appendices.md          # The appendix set (A to E) and the Notes policy
│   └── information_hazards.md # Reader-harm analysis, re-audited under (c)
├── docs/superpowers/      # Design spec and implementation plans for the re-foundation
├── figures/               # Shared figure preamble (fonts, math, TikZ setup)
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

`make epub` first renders every TikZ figure to a PNG (`make epub-figures`, via `kdp/render-figures.lua`, into `build/epub-figures/`) so the EPUB carries the same diagrams as the print book. The EPUB validates cleanly with `epubcheck`. The cover (`kdp/the-library-cover-ebook.jpg`, 1600x2560) is set for the *Description* subtitle, passes `kdp_validate_cover`, and is embedded in the EPUB. `make epub` builds with whatever cover is present.

## Pairing with the Suite

This is Volume III of the "Indifference of" suite and is intended to be read after *Worldlines* and *Multitudes*, though each stands alone. The three together form a single argument that descends one level at a time: the indifference of geometry, of measure, and of description.

## Author

Alex Towell. [lex@metafunctor.com](mailto:lex@metafunctor.com). [metafunctor.com](https://metafunctor.com)

## License

CC-BY-NC-SA-4.0 (Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International). Pedagogical adaptation is welcome.
