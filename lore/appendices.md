# Appendices and Notes

Canonical for the back-matter Appendices section and the Notes (endnotes). When this
doc and the manuscript conflict, fix the manuscript; when a fact changes, update this
doc first, then propagate. Upstream: `foundations.md`.

## Purpose

The body is lay-readable on purpose: second-person, plain, companionate, its bedrock
stated informally so the voice is never broken by formalism. The appendices are where
the depth the chapters kept out finds a home: the mathematics for the reader who wants
it, the digressions the argument did not need, and a place to answer the reader who
pushes back. They are a supplement, not a second book (target about 3,000 to 5,000
words total), and they keep the book's voice and discipline.

## The set

### A. The Bedrock, Formally (math)

Precise statements and short proof sketches of the results the body uses
informally: Bayes and conditional Cox-style representation results; Kraft's inequality;
the sequential universal semimeasure $M(x)=\sum 2^{-|p|}$; the distinct exact-output
algorithmic probability $m(x)$ used with $K(x)$; Solomonoff's dominance and convergence; the invariance
theorem. Pointers to Li and Vitanyi and to Hutter for full rigor. Derives from
`foundations.md` (the bedrock). Discipline: each statement is honest about scope.
Kraft makes fair-bit length weights admissible but does not force a prior; finitude forces
approximation, not Solomonoff induction; dominance is up to a source- and machine-dependent
constant; machine choice matters at finite scales; $M$ is uncomputable.

### B. The Born Measure and the Universal Prior (ideas)

Expands the Chapter 8 comparison: the Born measure and the universal prior arise in
distinct formal settings and can be compared only as weighting schemes. States the precise
limits of the analogy and that the book neither derives nor closes the Born-measure question. Derives from `foundations.md` and
`index.md`; the seam to *Multitudes*.

### C. Anthropic Assumptions (ideas)

SSA, SIA, reference classes, and xerographic distributions, defined plainly, with what each would
add and why the book adopts none. The speed prior is treated separately as a program prior that
does not by itself define probabilities over observer occurrences. Neutral in tone. Derives from the
Chapter 8 and 9 notes and `foundations.md`.

### D. Refusing the Postulate (ideas)

The Chapter 9 humility hinge, expanded. The bedrock survives any refusal of "no cut is
privileged"; only the ontological reading is optional. States plainly what the reader
keeps and what they give up. Derives from `foundations.md` and `landing.md`. Presents
the fork; does not argue the reader into the postulate.

### E. Objections and Replies (ideas)

The strongest pushbacks, each answered from the structure and never from imported
authority: anti-realism in disguise; the uncomputable prior is idle; simplicity
smuggled in as a value; the turn to care is a non-sequitur; the multiverse is
unfalsifiable. Derives from `apokatastasis.md` and `information_hazards.md`. Carries the
reader-safety framing: never console with what is not true; the reply about care keeps
it a chosen cut, not a theorem.

### Notes (endnotes)

Marker-free and keyed by phrase, organized per chapter. No superscript markers in the
body, so the companionate voice is never interrupted and the fifteen chapters need no
marker edits. Each note quotes the phrase it annotates. Content: sources (Russell,
Borges, Jaynes, Solomonoff, Chaitin, Wheeler, Wittgenstein, DeWitt, Hume, Parfit,
Camus, Eliot, and the like), precise caveats, and small asides.

## Discipline (carried from the book)

- The book's voice: second-person, plain, companionate, unflinching, never hype.
- No em-dashes; math in math mode; no CJK.
- The moral and grace spine stays argued from the structure, never propped up by
  citations (no Origen, Hart, Gregory of Nyssa, Levinas, Nagarjuna, or "emptiness").
  Mathematical citations are welcome in A and B.
- The appendices stay a supplement, under about 20 percent of the body.

## Placement

A back-matter Appendices section (LaTeX `\appendix`, chapters A to E) after Chapter 15,
then the Notes as the first item of `\backmatter`, then the existing Resources, Further
reading, About, and Also by.
