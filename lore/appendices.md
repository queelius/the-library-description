# Appendices and Notes

Canonical for the back-matter Appendices section and the Notes (endnotes). When this
doc and the manuscript conflict, fix the manuscript; when a fact changes, update this
doc first, then propagate. Upstream: `foundations.md`.

## Purpose

The body is lay-readable on purpose: second-person, plain, companionate, its bedrock
stated informally so the voice is never broken by formalism. The appendices are where
the depth the chapters kept out finds a home: the mathematics for the reader who wants
it, the digressions the argument did not need, and a place to answer the reader who
pushes back. They are a supplement, not a second book (about 5,000 words as of 2026-10-21; the earlier
target of 3,000 to 5,000 is historical, since the author set no length target), and they keep
the book's voice and discipline.

## The set

### A. The Bedrock, Formally (math)

Precise statements and short proof sketches of the results the body uses
informally: Bayes and conditional Cox-style representation results; Kraft's inequality;
the sequential universal semimeasure $M(x)=\sum_{p:U(p)=x*} 2^{-|p|}$, summed over minimal
programs on a universal monotone machine $U$ (with minimality defined, and the equivalent form
$M(x)=\lambda\{\omega: U(\omega)\text{ begins with } x\}$); the distinct exact-output
algorithmic probability $m_V(x)$ on a universal prefix machine $V$, used with $K(x)$ in the coding
theorem (this appendix is the only home of $m_V$ and the coding theorem; Chapter 4 defines $K$
in one paragraph and points here); Solomonoff's dominance and convergence; the invariance theorem (two universal monotone
machines for $M$, two universal prefix machines for $K$); and (2026-10-21) a short section "The
one-way certificate": the compressible strings are computably enumerable, $K$ is upper
semicomputable and not computable, and Chaitin's incompleteness theorem stated with its
hypothesis (a system that proves only true statements of the form $K(x) > n$ proves none with
$n$ above a constant that depends on the system; the 1974 paper cited, no section number), with
one sentence saying the body uses this as a theorem about strings in Chapter 2 and as a labeled
analogy elsewhere. The Appendices opener (A0) lists the five footings in
their standard names (theorem, construction, finitude, postulate, optional additions). Pointers to Li and Vitanyi and to Hutter for full rigor. Derives from
`foundations.md` (the bedrock). Discipline: each statement is honest about scope.
Kraft makes fair-bit length weights admissible but does not force a prior; finitude forces
approximation, not Solomonoff induction; dominance is up to a source- and machine-dependent
constant; machine choice matters at finite scales; $M$ is uncomputable.

### B. The Born Measure and the Universal Prior (ideas)

Expands the Chapter 8 comparison: the Born measure and the universal prior arise in
distinct formal settings and can be compared only as weighting schemes. States the precise
limits of the analogy and that the book neither derives nor closes the Born-measure question. One
sentence (2026-10-21) names the Deutsch-Wallace program (Born weights from decision-theoretic
axioms inside Everett) as the Everettian analog of defending a native weighting; the book takes
no side. Derives from `foundations.md` and
`index.md`; the seam to *Multitudes*.

### C. Anthropic Assumptions (ideas)

Reframed (2026-10-21) around P1: Chapter 9 named the principle (no description contains its
center) and the three ingredients (a supplier of occurrences, a now-rule, a next-rule); this
appendix surveys the rules offered for the two faces. SSA, SIA, reference classes, and
xerographic distributions, defined plainly, with what each would add and why the book adopts
none. UDASSA added (the universal distribution over observer-moments by the length of the
program that generates the world and locates the observer in it; Wei Dai, Hal Finney) with the
reply from `foundations.md`, "The native-weighting slip" (an index, machine-relative, a chosen
rule; used for a job it is as legitimate as $M$; what it cannot do is crown). The speed prior
is treated separately as a program prior that does not by itself define probabilities over
observer occurrences. Also carries the quantum-immortality premise analysis moved here from
Chapter 11, with the supplier made general (Everett's reading taken ontically is the usual one;
a spatially infinite cosmos does the same work with no interpretation of quantum mechanics) and
the "copy was already there" reply after the selection-effect paragraph; the same
non-metaphysical reader-safety framing as Chapter 11, verbatim. Neutral in tone. Derives from
the Chapter 8, 9, and 11 notes and `foundations.md` (the missing occurrence measure; "Three
principles").

### D. Refusing the Postulate (ideas)

The Chapter 7 humility hinge ("What if you refuse"), expanded. The bedrock survives any refusal of "no cut is
privileged"; only the ontological reading is optional. States plainly what the reader
keeps and what they give up. Under the stance register (2026-10-21): to refuse is to assert that
some carving is the structure's own, which the book declined to assert either way, since
(Appendix A's one-way certificate) nothing inside could certify a joint or its absence; the
refuser keeps every theorem and all three principles. Derives from `foundations.md` and `landing.md`. Presents
the fork; does not argue the reader into the postulate.

### E. Objections and Replies (ideas)

The strongest pushbacks, each answered from the structure and never from imported
authority: anti-realism in disguise; the uncomputable prior is idle; simplicity
smuggled in as a value; the turn to care is a non-sequitur; the multiverse is
unfalsifiable; and (sixth, added 2026-10-19) some cuts really do carve at the joints, the
postulate's named adversary (see `foundations.md`, "The named adversary"), answered by
separating "rewarded for a job" from "the structure's own," with the one-way certificate added
to the reply (neither a joint nor its absence can be certified from inside); and (seventh,
added 2026-10-21) the occurrence measure is not missing, the book's own prior supplies it
(UDASSA, stated at full strength, including that it is built from exactly the machinery of
Part I), answered from `foundations.md`, "The native-weighting slip," including why "chosen"
does not disqualify $M$. The opener says "seven of them."
 Derives from `apokatastasis.md` and `information_hazards.md`. Carries the
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
match the body's wording exactly. Every chapter has a section, including Chapter 10, and Appendices B and E have one (B: the
Deutsch-Wallace sources; E: the sources of the joint-carving view, Plato's *Phaedrus*, Lewis
1983, Sider 2011, named there and not in the body, and, for objection 7, the UDASSA sources). New Chapter 9 entries (2026-10-21): Lewis,
"Attitudes De Dicto and De Se," *Philosophical Review* 88 (1979), for the two gods; Perry, "The
Problem of the Essential Indexical," *Noûs* 13 (1979); Tegmark, "Parallel Universes,"
*Scientific American* (May 2003), and *Our Mathematical Universe* (2014), for the infinite
cosmos; one review of the cosmological measure problem, verified before citation; UDASSA:
proposed by Wei Dai on his everything-list in the late 1990s and set out by Hal Finney in the
web essay "UDASSA" (undated), with Carlsmith, "Anthropics and the Universal Distribution"
(2021), as the secondary account; no dissent citation. The Chapter 2 entry cites Chaitin 1974
for the one-way certificate. The Chapter 11 entry on Tegmark's thought experiment adds that
the argument's form does not depend on the quantum. The Chapter 9 Notes heading is "Chapter
9: The Center," and the Bostrom (SSA/SIA) item moves there from Chapter 8), and every
epigraph is sourced (author, work, date, translator where relevant; elisions marked). Content: sources (Russell,
Borges, Jaynes, Solomonoff, Chaitin, Wheeler, Wittgenstein, DeWitt, Hume, Parfit,
Camus, Eliot, and the like), precise caveats, and small asides.

## Discipline (carried from the book)

- The book's voice: second-person, plain, companionate, unflinching, never hype.
- No em-dashes; math in math mode; no CJK.
- The moral and grace spine stays argued from the structure, never propped up by
  citations (no Origen, Hart, Gregory of Nyssa, Levinas, Nagarjuna, or "emptiness").
  Mathematical citations are welcome in A and B, and a philosophical adversary may be named
  in the Notes: the rule guards the moral spine against borrowed authority, not the
  metaphysics against its opponents. The one Chapter 15 Note that names the universalist
  kinship as kinship, and disclaims resting on it, is the single sanctioned exception (see
  `apokatastasis.md`, "What Not To Do").
- The appendices stay a supplement, under about 20 percent of the body.

## Placement

A back-matter Appendices section (LaTeX `\appendix`, chapters A to E) after Chapter 15,
then the Notes as the first item of `\backmatter`, then the existing Resources, Further
reading, About, and Also by.
