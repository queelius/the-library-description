# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this
repository.

> Also read the parent conventions: `../../CLAUDE.md` (the `literature/` cross-project
> conventions: manuscript format, build patterns, lore-first workflow, license, author
> identity). This file covers what is specific to *this* book. For current working state and
> the remaining release step, see section 5.

---

## 0. What this book is

This directory is **Volume III** of the "Indifference of" nonfiction suite by Alex Towell:

**\*The Library: The Indifference of Description.\***

Its subject is algorithmic information theory (Bayes, Kraft, Solomonoff), followed all the way
down to a single claim. The book distinguishes theorem, universal construction, practical limit,
and interpretation, then follows them to a cold
structural conclusion, and answers that cold with the same chosen human response as its siblings
(grace). It stands alone; it pairs most directly with *Worldlines* (Vol I).

This is a re-foundation of an earlier draft subtitled *The Indifference of Enumeration*, which
used an older "two labeled moves + cascade" framing. That predecessor has been superseded: it is
no longer a live sibling directory, and this book was re-founded from it, taking its lore and
manuscript as *source material* (the manuscript was ported in and then reframed onto the new
spine; see the `port:` commits). Treat *this* directory as the single source of truth. See §3.

---

## 1. The spine

> There are no joints. There are only the cuts you make.

The structure the book is about (the totality of computable possibility, the Library of Babel
made formal) has no natural decomposition: no books, no shelves, no index, no list of "systems,"
no privileged "you." Every one of those is a *cut*, a carving an observer brings to a structure
that has none of its own. Generation is trivial (the totality is one line of code); the cut is
everything; and the cut is yours, including the one you call "I."

The one move (cutting, equivalently local compression) appears at three depths, which are the
three Parts:

- **The Index** (cut to *predict*).
- **The System** (cut to have a *world*).
- **The Self** (cut to be *someone*, and to *care*).

Self, system, and index are not three facts; they are one move at three levels. The dissolution
of the self in Part III is the same operation as the dissolution of the index.

---

## 2. The reasoning skeleton

Replaces the old "bedrock + labeled moves + cascade" architecture. Every conclusion traces to
one of these layers, and the trace is always kept visible.

1. **Theorems:** Bayes; conditional Cox-style representation results; Kraft; Solomonoff
   dominance and convergence; invariance. State hypotheses and machine dependence.
2. **Construction:** fair random bits and a chosen universal prefix machine define sequential
   $M$. Kraft makes the length weights admissible; it does not force them. Exact-output $m$ is
   distinct and is the quantity used in the coding theorem with $K$.
3. **The postulate** (the single interpretive commitment, asked once, refusable): **no cut is
   privileged.** It is a stance, worded as what the book declines (2026-10-21): the book treats
   no decomposition of the describable totality as view-independently correct, because nothing
   from inside could certify a joint or its absence (the one-way certificate, Chapter 2). "Only
   this world is real" is itself a cut. The postulate does not prove that all described worlds
   exist, does not prove that no joint exists, and does not turn $M$ into an ontic or
   observer-occurrence measure.
4. **Finitude:** a finite observer must use bounded local models. Finitude does not force one
   unique prior.
5. **Consequences:** everything in Parts II and III, with optional premises labeled.

Underneath the postulate sit three pre-postulate principles, stated once each and cited by name
afterward (`lore/foundations.md`, "Three principles the book names"): *no description contains
its center* (Chapter 9, "The Center"; the indexical gap, supplier-neutral, with Everett as the
landmark supplier), *weights come after cuts* (Chapter 3), and *a found name certifies itself; an
absence cannot be certified* (Chapter 2; Chaitin's theorem in Appendix A). Every cold sentence in
the book is either a finding resting on one of these or a refusal resting on the postulate; the
sorting table is in `foundations.md`.

**The ontology is (c): realism is itself a cut.** The book declines to assert the multiverse
exists or does not; the existence question is underdetermined by $M$ and held open. The Born
rule and universal prior can be compared as weighting schemes, but their domains and warrants
differ. The postulate neither derives nor closes the Born question. $M$ weights programs and
prefixes, not observer occurrences; any self-location distribution is an additional rule.

**The landing is the held cut:** both the cold and the warmth are cuts at the same level, and
neither is the ground; care is the cut we choose to keep, with no floor under it. "We" is a cut
we make anyway, and the making is the whole point. The book itself is the holding performed.

---

## 3. Relationship to the earlier draft (superseded)

This book re-founds an earlier draft subtitled *The Indifference of Enumeration* (the old "two
labeled moves + cascade" framing). That draft was authored in a separate directory and has since
been superseded and consolidated into this one; it is no longer present at `../the-library/`
(that path now resolves to *this* directory). Its lore and manuscript were the source material
for the re-foundation: the manuscript was carried in through the `port:` commits and then
reframed onto the new spine. There is nothing separate to avoid editing and nothing separate to
read; *this* directory is the current and only identity. If you need the pre-refoundation
argument and what changed, read the `port:` commits and the design spec
(`docs/superpowers/specs/2026-06-20-the-library-respine-design.md`).

---

## 4. Lore map

The bible in `lore/` is authoritative. When lore and (future) manuscript conflict, fix the
manuscript; when changing a fact, update the lore doc first, then propagate.

| Doc | Role |
|---|---|
| `foundations.md` | **Canonical.** Theorem/construction distinctions, the three principles (P1 to P3), the postulate as a stance, finitude, $M$ versus $m$, the missing indexical measure, the ontology (c), and discipline. Upstream of all. |
| `themes.md` | Core vision, the inversion, the seven themes (theme 6 = the indifference of description), the suite table, "What This Book Is NOT." |
| `index.md` | Supporting detail: the outside view vs the inside view (formerly Picture A and B; choosing between them is a cut), local inference, hierarchical decomposability. |
| `outline.md` | The three parts as three cuts; per-chapter cut notes; Ch 9 = "The Center," Ch 10 = "The Indifference of Description"; word targets; pedagogical sequencing. |
| `direction.md` | Format, tone, pedagogy, comparable works, diagrams (the cut as figure), the voice sample. |
| `grace.md` | The destination (the held cut); no view from the top in two halves (P1 and the postulate); the symmetric-distribution resolution. |
| `landing.md` | Why the closing was hard and how (c) resolves it; the three directions reconciled into the held cut; the adequacy-doubt decision. |
| `apokatastasis.md` | The universalist moral spine; the refusal as a chosen orientation-cut; the crux-4 resolution. |
| `implications.md` | Each human concept (free will, death, love, self) re-derived as a cut. |
| `information_hazards.md` | Reader-harm analysis re-audited under (c): quantum-immortality demoted, groundlessness raised, with mitigations. |
| `appendices.md` | The appendix set (A to E) and the Notes: purpose, per-appendix source mapping, the marker-free endnotes policy, and the discipline. Governs the back-matter depth. |

The dated documents under `docs/superpowers/` record design history. Where they conflict with the
current mathematical corrections, `lore/foundations.md` governs. In particular, the June 20
re-spine spec is no longer authoritative for claims that Kraft forces a prior, that Cox is
assumption-free, or that $M$ is an observer measure.

---

## 5. Structure and status

Three parts, fifteen chapters, no fixed length target (the author's decision, 2026-10-21:
as long as it needs to be, with chapters and parts added as needed), plus a back-matter
Appendices section (A to E) and marker-free keyed Notes. Part I = The Index (Ch 1-5),
Part II = The System (Ch 6-10, capped by Ch 10 "The Indifference of Description"), Part III =
The Self (Ch 11-15, closing on the held cut: a header-less coda, address "Stay.", Camus's *must*
literal, the adequacy-doubt named).

**Status (2026-10-21): the unifying-principles revision.** Spec: `docs/superpowers/specs/2026-10-21-unifying-principles-design.md`; plan: `docs/superpowers/plans/2026-10-21-unifying-principles.md`; record: `.worldsmith/reviews/2026-10-21/unifying-principles-revision.md`. The author's observation that an infinite cosmos supplies "quantum immortality without the quantum" led to naming three principles the book had been using one case at a time: no description contains its center (Chapter 9, retitled "The Center," file unchanged, with "Where am I?" moved in from Chapter 8 and "Without Everett" dropped), weights come after cuts (Chapter 3), and the one-way certificate (Chapter 2; Chaitin's theorem in Appendix A). The postulate is now worded as a stance in the Chapter 6 box and the README (the Chapter 9 recall of the box was dropped the same evening); "no view from the top" is split into a finding and a refusal; UDASSA is Appendix E's seventh objection; Part III cites Chapter 9 instead of re-deriving. Three fresh auditors (mathematics and claim scope; prose, voice, and cross-references; reader safety) and a whole-book reader reviewed the branch; their findings were applied (an infinite cosmos supplies frequencies, not "nothing"; the one-way certificate named in Chapter 2 and labeled as an analogy elsewhere; the stance register stated once and hedges cut; a Resources pointer in Chapter 9). Build: 160 pages, 35167 words including back matter (body 27841; appendices 5049), no overfull boxes or undefined references; EPUB passes `epubcheck`. The earlier October history follows.

**Earlier status (2026-10-19, evening): release candidate after the October review, the whole-book check, and the author's read-through.** The author's reading notes (scratch, gitignored at `lore/reading-notes.md`) and a fresh Fable 5.1 cover-to-cover review led to one more revision the same day: Chapter 2 gained the section "The address of a book" (the address arithmetic and the counting fact; see `lore/foundations.md`, "The counting fact"); Chapter 4 opens with a fast-path signpost and defines $K$ in one paragraph, with $m_V$ and the coding theorem now in Appendix A only; Chapter 7 treats the empty set as an explicit stand-in for nothing that is itself something; the two pictures are now "the outside view" and "the inside view" (formerly Picture A and B), introduced by name in Chapter 6; Chapter 8 defines the observer before the Everett landmark; Chapter 10 says what the mathematics bought Part III; Appendix E has a sixth objection (joint-carving realism, the postulate's named adversary); Chapters 11 and 13 are retitled "The Chooser" and "The Braid" (files unchanged). Build: 146 pages, about 31,500 words including back matter; EPUB passes `epubcheck`. The same evening added a worked law example (Ch 2), three inline objection-and-reply pairs (Ch 6, 7, 11), the refusal-not-proof status of the postulate (Ch 6, Ch 10), the asymmetry of the two views (Ch 8), and the one sanctioned Chapter 15 Note naming the universalist kinship. The earlier October history follows.

**The October review and check.** A fresh cover-to-cover
Worldsmith review (`.worldsmith/reviews/2026-10-18/`) confirmed the July 15 fixes held in the
body, then found one new BLOCKING error (the definition of the sequential $M$, which must sum
over minimal programs of a universal monotone machine) and a July over-correction of Parts II
and III. The revision fixed all 63 findings (60 verified per finding), restored the spine
sentence and Part III, made the EPUB carry every figure, and aligned README, About, KDP, and
citation metadata with the book (CC BY-NC-SA 4.0; KDP Select off). Author decisions and the
epigraph source checks are in `.worldsmith/reviews/2026-10-18/decisions/revision.md`. A
whole-book `/worldsmith:check` on 2026-10-19 (`.worldsmith/reviews/2026-10-19/`) found the
mathematics and lore sound but Part III re-performing moves after the per-finding fixes; those
seams, the stale outline, and the cross-reference residue were fixed and independently verified
the same day. Build at that point: 140 pages, about 28,750 words, no undefined references or overfull boxes;
EPUB passed `epubcheck` 5.3.0. Do not restore categorical multiverse or observer-measure language
from older commits or specs.

**Appendices (2026-07-02):** a back-matter Appendices section (A The Bedrock, Formally;
B The Born Measure and the Universal Prior; C Anthropic Assumptions; D Refusing the
Postulate; E Objections and Replies) and marker-free keyed Notes were drafted, reviewed, and
integrated, then corrected by the 2026-07-15 revision (several appendix claims the July 2
math check had passed were overclaims). Governing docs: `lore/appendices.md`, the design spec
(`docs/superpowers/specs/2026-07-02-appendices-design.md`), and the plan
(`docs/superpowers/plans/2026-07-02-appendices.md`). The DOI release waits on a clean review.

---

## 6. Build and conventions

The manuscript is present and builds. It follows the `literature/` conventions and the
standard pattern: LaTeX, 6x9 `book` class, `the-library.tex` `\include`-ing
`chapters/NN_name.tex`. `make` produces `the-library.pdf` (Libertinus text + Libertinus Math;
`amssymb` is intentionally not loaded, since no amssymb-only symbols are used), and `make epub`
produces `the-library.epub` via pandoc and the `kdp/` assets. The EPUB styles from
`kdp/kindle.css` and the reader's own fonts, so the print font choice does not affect it. Print
typography decisions are recorded in `docs/superpowers/specs/2026-06-21-typography-design.md`.

**Commands** (run from the repo root; the `Makefile` is the source of truth):

```bash
make            # default: full PDF via latexmk (reruns until TOC and cross-references converge)
make check      # fast inner loop: single-pass pdflatex, no convergence reruns
make epub       # the-library.epub via pandoc + kdp/ assets (validate with epubcheck)
make wordcount  # detex | wc -w (falls back to raw chapter word count)
make clean      # remove aux files, preserve the PDF/EPUB outputs
make distclean  # also remove the-library.pdf and the-library.epub
make help       # list all targets
```

There is no per-chapter isolated build (chapters are `\include`d and share one cross-reference
namespace), so `make check` is the "compile this one edit" loop and `make` is the
release-quality build. The canonical chapter list and include order live in `the-library.tex`
(do not maintain a second copy here). A build needs LaTeX (`latexmk`, `pdflatex`), `pandoc`
(EPUB), and the Libertinus + `libertinust1math` fonts; `detex` is optional for `make wordcount`.

**Prose and house-style rules (these apply to every file written here, including this one):**

- **No em-dashes.** Use commas, colons, semicolons, parentheses, or sentence breaks. (A write
  hook enforces this; it matches the em-dash codepoint, so even a `grep` example for it must use
  `\x{2014}`, not a literal em-dash.)
- **Math in math mode** (`$K(x)$`, `$\sum$`); no raw Unicode math; no CJK (romanize).
- **Figures are arguments, not decoration.** The recurring figure is the cut.
- **Voice:** second-person, plain, companionate, unflinching, never hype (the Worldlines voice);
  the care is present as tone from the preface, long before it is argued in Part III.
- **Discipline:** never claim the math supports more than it does (Kraft permits fair-bit length
  weights but does not force a prior; finitude forces approximation; "no view from the top" has
  its indexical half from P1 and its joints half from the postulate, never from a Turing-jump
  ladder); never project emotional properties
  onto the structure; never console with what is not true; never engineer away what the framework
  permits; keep the moral spine in the structure, never in citations (no Origen, Hart, Gregory of
  Nyssa, the bodhisattva vow, Levinas; and under (c), no Nagarjuna, Pyrrho, or "emptiness"). The
  rule guards the moral spine against borrowed authority; it does not bar mathematical sources, and
  a philosophical adversary (Lewis, Sider) may be named in the Notes, as Appendix E's sixth
  objection does. One sanctioned exception: a single Chapter 15 Note names the universalist kinship
  as kinship and disclaims resting on it. Rationale in `lore/apokatastasis.md`, "What Not To Do."
- *Worldlines* is a **companion, not a prerequisite**: gloss any borrowed concept (block
  universe, worldline, the braid) inline.

This CLAUDE.md is the authoritative statement of what the book *is*; section 5 records where the
work *is*.
