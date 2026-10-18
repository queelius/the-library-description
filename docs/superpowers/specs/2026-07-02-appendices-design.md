# Appendices and Notes: Design Spec

**Date:** 2026-07-02
**Status:** Approved (brainstorm complete); implementation plan to follow.
**Governs:** the new back-matter Appendices section and the endnotes ("Notes")
apparatus for *The Library: The Indifference of Description*.

> **Correction (2026-07-15).** This is a historical implementation design. Current
> `lore/appendices.md` and `lore/foundations.md` govern. Appendix A must distinguish sequential
> $M$ from exact-output $m$, state Cox-style assumptions, and deny that Kraft or finitude forces
> a unique prior. Appendix B treats Born/program weighting only as a limited analogy. Appendix C
> separates program priors from observer-occurrence measures.

---

## 1. Motivation

The body is deliberately lay-readable: second-person, plain, companionate, and it
states its bedrock (Bayes/Cox, Kraft, the universal prior, Solomonoff dominance,
invariance) informally so the voice is never interrupted by formalism. Several
threads are also deliberately deferred (the Born-measure / universal-prior seam,
the anthropic assumptions, the reader who wants to refuse the postulate, the
strongest objections). Appendices give that depth a home without taxing the main
chapters, on the model of *the-unbegotten*'s discrete named back-matter pieces.

## 2. Confirmed decisions (brainstorm outcomes)

1. **Register:** both a mathematical track and a discursive track.
2. **Notes:** endnotes gathered at the back, not page-bottom footnotes.
3. **Math depth:** precise statements plus proof sketches (not intuition-only, not
   full rigorous proofs); pointers to Li and Vitanyi / Hutter for full rigor.
4. **Structure:** a curated set of about five named appendices (not two grouped, not
   ten-plus granular).
5. **Endnote style:** marker-free keyed notes (see section 4).
6. **Budget:** about 3,000 to 5,000 words total (see section 7).

## 3. The appendix set

| # | Appendix | Track | Purpose (deferred from body) | Source lore | Target |
|---|---|---|---|---|---|
| A | The Bedrock, Formally | Math | Statements + sketches of Bayes/Cox, Kraft and $M(x)=\sum 2^{-\lvert p\rvert}$, Solomonoff dominance, invariance | `foundations.md` | 1,200 to 1,500 |
| B | The Born Measure and the Universal Prior | Ideas | The seam to *Multitudes*, expanded from Ch 8 | `foundations.md`, `index.md` | 500 to 700 |
| C | Anthropic Assumptions | Ideas | SSA, SIA, the speed prior, and why none is adopted | Ch 8/9 notes, `foundations.md` | 500 to 700 |
| D | Refusing the Postulate | Ideas | What survives if you decline "no cut is privileged," expanded from Ch 9 | `foundations.md`, `landing.md` | 500 to 700 |
| E | Objections and Replies | Ideas | Strongest pushbacks, answered from the structure | `apokatastasis.md`, `information_hazards.md` | 700 to 1,000 |
| Notes | (endnotes) | Notes | Per-chapter sources, precise caveats, small asides | keyed to passages | variable |

### Per-appendix detail

**A. The Bedrock, Formally.** Four short sections: (i) Bayes and Cox's uniqueness;
(ii) Kraft's inequality and how prefix-free codes turn length into probability,
defining $M(x)=\sum 2^{-\lvert p\rvert}$ and $K(x)$; (iii) Solomonoff's dominance
theorem; (iv) the invariance theorem. Each gives a precise statement, a proof sketch
where it rewards one (Kraft from the prefix-free tree; the dominance mixture
inequality; invariance up to an additive constant), and a pointer to the literature.
Discipline: state exactly what each result gives and does not give. Finitude is a
consequence of Kraft, not a theorem; dominance is asymptotic and up to a constant;
$M$ is uncomputable. No result is allowed to carry more than it does.

**B. The Born Measure and the Universal Prior.** Expands the Ch 8 identification:
both are the bookkeeping of cuts, a measure over descriptions. States the precise
sense in which they are the same kind of object, and the precise sense in which the
book relocates rather than derives the Born measure (the "why this measure" question
presupposes a privileged vantage the postulate denies). Cross-references *Multitudes*.

**C. Anthropic Assumptions.** Defines SSA, SIA, and the speed prior briefly; states
what adopting each would add; explains why the book adopts none (each is an extra
cut, not forced). Neutral in tone: the reader may adopt one and see what changes.

**D. Refusing the Postulate.** The Ch 9 humility hinge, expanded. The bedrock
(Bayes, Kraft, Solomonoff) survives any refusal; only the ontological reading is
optional. States plainly what the reader keeps and what they give up if they decline
"no cut is privileged."

**E. Objections and Replies.** A handful of the strongest objections, each answered
from the structure, never from imported authority. Candidate objections: it is
anti-realism in disguise; the universal prior is uncomputable and therefore idle;
simplicity is smuggled in as a value; the turn to care is a non-sequitur from the
math; the multiverse is unfalsifiable. Replies are grounded in the postulate,
finitude, and the bedrock. This appendix carries the reader-safety framing of
`information_hazards.md` and must not console with what is not true.

## 4. Endnotes (marker-free keyed)

The "Notes" section is organized by chapter. Each note is a short lemma that quotes
the phrase it annotates (for example, *Chapter 4, "short descriptions are scarce":
...*), with **no superscript markers in the body**. Rationale: the companionate
second-person voice stays completely uninterrupted, and no marker edits are needed in
the fifteen chapters. Trade-off accepted: notes are keyed by phrase rather than
hyperlinked to an exact point. Content: sources (Russell's chicken, Borges, Jaynes,
Solomonoff, DeWitt, Parfit, Hume, Camus, and so on), precise caveats, and small
asides that would interrupt the body.

## 5. LaTeX structure and build integration

**New files (in `chapters/`):** `A0_appendices.tex` (a short opener framing what the
appendices are), `A1_bedrock.tex`, `A2_born_measure.tex`, `A3_anthropics.tex`,
`A4_refusing.tex`, `A5_objections.tex`, and `96_notes.tex` (the endnotes).

**`the-library.tex` changes:** after `\include{chapters/15_the_pattern_describing_itself}`
(currently line 177) and before `\backmatter` (line 179), insert:

```latex
\appendix
\bookmarksetup{startatroot}   % appendices are their own section, not part of "The Self"
\include{chapters/A0_appendices}
\include{chapters/A1_bedrock}
\include{chapters/A2_born_measure}
\include{chapters/A3_anthropics}
\include{chapters/A4_refusing}
\include{chapters/A5_objections}
```

Then, inside the existing `\backmatter` block, add `\include{chapters/96_notes}` as
the first back-matter item, before `97_resources`. Appendices letter automatically
(A to E). The `A0` opener treatment (a `\chapter*` divider versus a lighter opener)
is left to the plan; the requirement is that the TOC shows an "Appendices" heading
followed by A to E, at root outline level.

**Build:** the change is almost purely additive. `make` (latexmk) picks up the new
includes and reruns until the TOC and any `\Cref` converge; `make epub` carries the
appendices, and the EPUB's handling of `\appendix` (appendix chapters should render
as ordinary headings) is verified during the build rather than assumed;
`make wordcount` grows. The EPUB is otherwise structurally unaffected.
Optional: a few light forward cross-references from the body to the appendices (for
example `\Cref{app:bedrock}`); default is a small number, added only where they help.

## 6. Lore governance and discipline

**New `lore/appendices.md`** (canonical for this section): records the appendix set,
the per-appendix source-lore mapping, the endnotes policy, and the discipline. Per
the lore-first workflow, this doc is authored before the prose, and later conflicts
are resolved by fixing the prose.

**Propagation:** update `CLAUDE.md` section 4 (add `appendices.md` to the lore map)
and section 5 (note the appendices and Notes in the structure); update
`lore/outline.md` back-matter section to list Appendices and Notes.

**Constraints (carried verbatim):** the book's voice; no em-dashes; math in math
mode; no CJK. The moral and grace spine stays argued from the structure and is never
propped up by citations (no Origen, Hart, Gregory of Nyssa, Levinas, Nagarjuna, or
"emptiness" in appendix E). Mathematical citations (Hutter, Li and Vitanyi, Chaitin,
Solomonoff) are welcome in A and B.

## 7. Word budget and release impact

Target about 3,000 to 5,000 words total (A about 1,200 to 1,500; B, C, and D about
500 to 700 each; E about 700 to 1,000; Notes variable). This grows the book from
about 24,000 to about 28,000 or 29,000 words; the appendices stay under about 20
percent of the body. The v1.0.0 DOI release waits until the appendices are drafted,
the math sketches are checked, and a review pass is clean. The version bump already
committed (`98b5780`, version 1.0.0 in `CITATION.cff` and `.zenodo.json`) stays
valid.

## 8. Quality gate

- **Math check:** the sketches in A (and the identification in B) are verified for
  correctness, by the bookwright math-auditor or a careful manual/symbolic pass.
  Most content is symbolic rather than numeric, so the emphasis is logical validity
  and honest scope, not arithmetic.
- **Review pass:** the drafted appendices and Notes go through the book's editorial
  review (bookwright for technical non-fiction: spec, quality, math, cross-reference)
  before the release. The reviewer choice is confirmed in the plan.

## 9. Non-goals (YAGNI)

- Not full rigorous proofs (sketches only).
- Not a glossary or notation table (possible future addition; out of scope now).
- No restructuring of the body chapters.
- No in-text footnote or endnote markers (marker-free keyed notes only).

## 10. Open items for the plan

- The exact `A0` opener treatment (divider page versus light opener).
- Whether and where to add the optional body-to-appendix forward cross-references.
- The final objection list in E (candidates in section 3; trimmed or extended during
  drafting).
