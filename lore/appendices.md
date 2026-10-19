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
the sequential universal semimeasure $M(x)=\sum_{p:U(p)=x*} 2^{-|p|}$, summed over minimal
programs on a universal monotone machine $U$ (with minimality defined, and the equivalent form
$M(x)=\lambda\{\omega: U(\omega)\text{ begins with } x\}$); the distinct exact-output
algorithmic probability $m_V(x)$ on a universal prefix machine $V$, used with $K(x)$ in the coding
theorem; Solomonoff's dominance and convergence; the invariance theorem (two universal monotone
machines for $M$, two universal prefix machines for $K$). The Appendices opener (A0) lists the five footings in
their standard names (theorem, construction, finitude, postulate, optional additions). Pointers to Li and Vitanyi and to Hutter for full rigor. Derives from
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
does not by itself define probabilities over observer occurrences. Also carries the
quantum-immortality premise analysis moved here from Chapter 11 (the optional additions it needs:
Everett, an identity rule, a self-location rule; why none is adopted), with the same
non-metaphysical reader-safety framing as Chapter 11. Neutral in tone. Derives from the Chapter 8,
9, and 11 notes and `foundations.md` (the missing occurrence measure).

### D. Refusing the Postulate (ideas)

The Chapter 7 humility hinge ("What if you refuse"), expanded. The bedrock survives any refusal of "no cut is
privileged"; only the ontological reading is optional. States plainly what the reader
keeps and what they give up. Derives from `foundations.md` and `landing.md`. Presents
the fork; does not argue the reader into the postulate.

### E. Objections and Replies (ideas)

The strongest pushbacks, each answered from the structure and never from imported
authority: anti-realism in disguise; the uncomputable prior is idle; simplicity
smuggled in as a value; the turn to care is a non-sequitur; the multiverse is
unfalsifiable. Derives from `apokatastasis.md` and `information_hazards.md`. Carries the
reader-safety framing: never console with what is not true; the reply about care keeps
it a chosen cut, not a theorem. "Realism is a cut" is stated in the body at the end of
Chapter 8; the reply to "anti-realism in disguise" points back there rather than being its
only statement. The footing list uses the five standard names.

### Notes (endnotes)

Marker-free and keyed by phrase, organized per chapter. The Notes add no superscript
markers to the body, so the companionate voice is never interrupted. (The body does keep a
small number of ordinary footnotes for scoping asides; the Notes' opening must not claim the
chapters carry no markers at all. Safety notes are never footnotes: they live in the body, as
at Chapters 9, 11, 12, and 14.) Each note quotes the phrase it annotates, and the key must
match the body's wording exactly. Every chapter has a section, including Chapter 10, and every
epigraph is sourced (author, work, date, translator where relevant; elisions marked). Content: sources (Russell,
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
