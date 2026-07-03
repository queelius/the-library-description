# Appendices and Notes Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a curated back-matter Appendices section (five named pieces) plus a marker-free keyed endnotes section to *The Library: The Indifference of Description*, without disturbing the lay-readable body.

**Architecture:** Lore-first. Author `lore/appendices.md`, then scaffold the `\appendix` zone in `the-library.tex`, then draft each appendix as its own `\include`d file, then the endnotes, then verify the build and run the editorial gate. The change is additive: no body chapter prose is edited except a few optional cross-references.

**Tech Stack:** LaTeX (`book` class, `latexmk`/`pdflatex`, Libertinus + `libertinust1math`), pandoc + `kdp/` assets for EPUB, `detex` for wordcount.

## Global Constraints

Every task implicitly includes these (copied from the spec and CLAUDE.md):

- **No em-dashes** (U+2014). Use commas, colons, semicolons, parentheses, or sentence breaks. A write hook rejects any file containing one.
- **Math in math mode** (`$K(x)$`, `$\sum 2^{-|p|}$`); no raw Unicode math; no CJK.
- **Voice:** second-person, plain, companionate, unflinching, never hype (the Worldlines voice). Appendices are calmer and more technical than the body but stay in this voice.
- **Discipline:** never claim the math supports more than it does (finitude is a consequence of Kraft, not a theorem; dominance is asymptotic and up to a constant; $M$ is uncomputable). The moral and grace spine stays argued from the structure, never propped up by citations (no Origen, Hart, Gregory of Nyssa, Levinas, Nagarjuna, or "emptiness"). Mathematical citations (Hutter; Li and Vitanyi; Chaitin; Solomonoff) are welcome in A and B.
- **Budget:** about 3,000 to 5,000 words total across all appendices and notes.
- **Build loop:** `make check` is the fast single-pass compile; `make` is the full `latexmk` build; `make epub` builds the EPUB; `make wordcount` counts.
- **Include order source of truth:** `the-library.tex`. Do not maintain a second copy of the chapter list.

---

### Task 1: Lore doc and structural propagation

**Files:**
- Create: `lore/appendices.md`
- Modify: `lore/outline.md` (the Backmatter section, currently near line 215)
- Modify: `CLAUDE.md` (section 4 lore-map table only)

**Interfaces:**
- Produces: the canonical description of the appendix set, the per-appendix source-lore mapping, and the endnotes policy. Every later task draws its content checklist from here.

- [ ] **Step 1: Write `lore/appendices.md`.** Include, in the book's prose: the purpose of the appendices (a home for deferred depth); the set (A The Bedrock Formally; B The Born Measure and the Universal Prior; C Anthropic Assumptions; D Refusing the Postulate; E Objections and Replies; plus Notes); for each, one paragraph on what it covers and which existing lore/chapters it derives from; the endnotes policy (marker-free, keyed by phrase, organized per chapter); and the discipline (voice, no em-dashes, math in math mode, moral spine from structure not citations, math citations allowed). State that this doc is canonical for the appendices and that later conflicts are resolved by fixing the prose.

- [ ] **Step 2: Update `lore/outline.md` Backmatter section.** Change the Backmatter list so it reads: Appendices (A to E), then Notes (endnotes), then Resources, Further reading, About, Also by. Add one sentence that the appendices carry the deferred technical and discursive material.

- [ ] **Step 3: Update `CLAUDE.md` section 4 lore map.** Add one table row: `` `appendices.md` `` with role "The appendix set, per-appendix source mapping, endnotes policy, discipline." Do not touch section 5 yet (status is updated in Task 9, after the appendices exist).

- [ ] **Step 4: Verify no em-dashes and commit.**

Run: `grep -rlP '\x{2014}' lore/appendices.md lore/outline.md CLAUDE.md; echo "exit $?"`
Expected: no file paths printed (grep exit 1 means none found).

```bash
git add lore/appendices.md lore/outline.md CLAUDE.md
git commit -m "lore: add appendices governing doc; propagate to outline and CLAUDE map"
```

---

### Task 2: Scaffold the appendix zone and the opener

**Files:**
- Create: `chapters/A0_appendices.tex`
- Modify: `the-library.tex:177-179` (insert the `\appendix` block after chapter 15, before `\backmatter`)

**Interfaces:**
- Produces: a compiling `\appendix` zone with an "Appendices" opener at root outline level. Later appendix tasks each add one `\include` line after `A0`.

- [ ] **Step 1: Create `chapters/A0_appendices.tex`.** A short opener (about 120 to 200 words), in the book's voice, framing what the appendices are: the room for depth the chapters kept out, the math for the reader who wants it, and the digressions the argument did not need. Use a starred, unnumbered heading so it does not consume the letter A:

```latex
\chapter*{Appendices}
\addcontentsline{toc}{chapter}{Appendices}
\markboth{APPENDICES}{APPENDICES}

% ~120-200 words of opener prose here, in the Worldlines voice.
% States: the body stayed plain on purpose; here is the formal spine (Appendix A),
% the seam to Multitudes (B), the assumptions declined (C), the refusal (D),
% and the objections (E); the Notes gather sources and asides at the very back.
```

- [ ] **Step 2: Wire the `\appendix` block into `the-library.tex`.** After `\include{chapters/15_the_pattern_describing_itself}` (line 177) and before `\backmatter` (line 179), insert:

```latex

\appendix
\bookmarksetup{startatroot}
\include{chapters/A0_appendices}
```

- [ ] **Step 3: Build and verify the book still compiles.**

Run: `make check`
Expected: exit 0, `the-library.pdf` produced, no new "Undefined" or "Runaway argument" errors in the tail of the log.

- [ ] **Step 4: Confirm the opener appears at root level.**

Run: `pdfinfo the-library.pdf | grep -i pages`
Expected: page count is one or two greater than the prior 116. Optionally open the PDF outline and confirm "Appendices" is a sibling of the Parts, not a child of "The Self."

- [ ] **Step 5: Commit.**

```bash
git add chapters/A0_appendices.tex the-library.tex
git commit -m "appendix: scaffold the \\appendix zone with the Appendices opener"
```

---

### Task 3: Appendix A, The Bedrock, Formally

**Files:**
- Create: `chapters/A1_bedrock.tex`
- Modify: `the-library.tex` (add `\include{chapters/A1_bedrock}` after `A0`)

**Interfaces:**
- Consumes: the reasoning skeleton in `lore/foundations.md`.
- Produces: label `app:bedrock` (on the `\chapter`) for optional body cross-references.

Content checklist (four sections; each is a precise statement in math mode, a short sketch, and a pointer to Li and Vitanyi / Hutter). Target 1,200 to 1,500 words.

1. **Bayes and Cox.** State $P(H\mid D)=\dfrac{P(D\mid H)\,P(H)}{P(D)}$. State Cox's result: any real-valued measure of plausibility meeting the consistency desiderata is isomorphic to probability (the sum and product rules are forced). Sketch: the functional equations from consistency force those rules. Note the body used this informally in Ch 3.
2. **Kraft and the universal prior.** State Kraft's inequality: for a prefix-free code with lengths $\ell_i$, $\sum_i 2^{-\ell_i}\le 1$, and conversely any such lengths admit a prefix-free code. Sketch: codewords are leaves of a binary tree; a leaf at depth $\ell$ owns fraction $2^{-\ell}$ of the unit interval; disjointness gives the bound. Then define $M(x)=\sum_{p:\,U(p)=x}2^{-|p|}$ for a universal prefix machine $U$, and $K(x)=\min\{|p|:U(p)=x\}$, with the coding-theorem relation $-\log M(x)=K(x)+O(1)$.
3. **Solomonoff dominance.** State: $M$ dominates every computable semimeasure $\mu$ up to a constant, $M(x)\ge 2^{-K(\mu)}\mu(x)$, and the total expected squared prediction error is bounded by $\ln 2\cdot K(\mu)$, so $M$'s predictions converge to $\mu$'s. Sketch: $M$ is a mixture placing weight $2^{-K(\mu)}$ on $\mu$; a mixture is at least its weighted component; the convergence bound follows from telescoping the log-loss.
4. **Invariance.** State: for universal prefix machines $U,V$, $|K_U(x)-K_V(x)|\le c_{U,V}$, a constant independent of $x$. Sketch: a fixed interpreter of one machine on the other has constant length; prepend it. Discipline line: the constant can be large; invariance is asymptotic; this is exactly why the book says the simplicity bias is real for the observer, not a property of the structure.

- [ ] **Step 1: Write `chapters/A1_bedrock.tex`.** Begin `\chapter{The Bedrock, Formally}\label{app:bedrock}`, then the four sections above as prose with displayed math. Keep each statement honest about scope (see the discipline line in Global Constraints).

- [ ] **Step 2: Add the include.** In `the-library.tex`, after `\include{chapters/A0_appendices}`, add `\include{chapters/A1_bedrock}`.

- [ ] **Step 3: Build.**

Run: `make check`
Expected: exit 0; the appendix renders as "Appendix A"; all math compiles (no "Missing $" or "Undefined control sequence" in the log tail).

- [ ] **Step 4: Math check.** Re-derive each of the four statements independently (by hand or with sympy where a symbolic check helps) and confirm the appendix's statement and sketch match. Confirm no result is over-claimed. If a dedicated agent is available, dispatch the bookwright math-auditor on `chapters/A1_bedrock.tex`.

- [ ] **Step 5: Commit.**

```bash
git add chapters/A1_bedrock.tex the-library.tex
git commit -m "appendix A: The Bedrock, Formally (Bayes/Cox, Kraft, dominance, invariance)"
```

---

### Task 4: Appendix B, The Born Measure and the Universal Prior

**Files:**
- Create: `chapters/A2_born_measure.tex`
- Modify: `the-library.tex` (add `\include{chapters/A2_born_measure}` after `A1`)

**Interfaces:**
- Consumes: `\Cref{app:bedrock}` (defined in Task 3) for the definition of $M$.
- Produces: label `app:born`.

Content checklist (target 500 to 700 words): expand the Ch 8 identification. Both the Born measure and the universal distribution are the bookkeeping of cuts, a measure over descriptions. State the precise sense in which they are the same kind of object, and the precise sense in which the book relocates rather than derives the Born measure ("why this measure" presupposes a privileged vantage the postulate denies). Cross-reference *Multitudes* by name (gloss it inline; it is a companion, not a prerequisite).

- [ ] **Step 1: Write `chapters/A2_born_measure.tex`,** beginning `\chapter{The Born Measure and the Universal Prior}\label{app:born}`.
- [ ] **Step 2: Add `\include{chapters/A2_born_measure}` after `A1` in `the-library.tex`.**
- [ ] **Step 3: Build.** Run: `make check`. Expected: exit 0; renders as "Appendix B".
- [ ] **Step 4: Commit.**

```bash
git add chapters/A2_born_measure.tex the-library.tex
git commit -m "appendix B: The Born Measure and the Universal Prior (the Multitudes seam)"
```

---

### Task 5: Appendix C, Anthropic Assumptions

**Files:**
- Create: `chapters/A3_anthropics.tex`
- Modify: `the-library.tex` (add `\include{chapters/A3_anthropics}` after `A2`)

**Interfaces:**
- Produces: label `app:anthropics`.

Content checklist (target 500 to 700 words): define SSA (Self-Sampling Assumption), SIA (Self-Indication Assumption), and the speed prior briefly and in plain terms; state what adopting each would add to the picture; explain why the book adopts none (each is an extra cut, not forced by the bedrock or the postulate). Neutral tone: the reader may adopt one and see what changes. Cross-reference Ch 8/9 where these were noted-but-not-adopted.

- [ ] **Step 1: Write `chapters/A3_anthropics.tex`,** beginning `\chapter{Anthropic Assumptions}\label{app:anthropics}`.
- [ ] **Step 2: Add `\include{chapters/A3_anthropics}` after `A2`.**
- [ ] **Step 3: Build.** Run: `make check`. Expected: exit 0; renders as "Appendix C".
- [ ] **Step 4: Commit.**

```bash
git add chapters/A3_anthropics.tex the-library.tex
git commit -m "appendix C: Anthropic Assumptions (SSA, SIA, speed prior; none adopted)"
```

---

### Task 6: Appendix D, Refusing the Postulate

**Files:**
- Create: `chapters/A4_refusing.tex`
- Modify: `the-library.tex` (add `\include{chapters/A4_refusing}` after `A3`)

**Interfaces:**
- Produces: label `app:refusing`.

Content checklist (target 500 to 700 words): expand the Ch 9 humility hinge. The bedrock (Bayes, Kraft, Solomonoff) survives any refusal of "no cut is privileged"; only the ontological reading is optional. State plainly what the reader keeps (all the predictive mathematics) and what they give up (the dissolution of the privileged world and self) if they decline the postulate. Do not argue the reader into the postulate; present the fork honestly.

- [ ] **Step 1: Write `chapters/A4_refusing.tex`,** beginning `\chapter{Refusing the Postulate}\label{app:refusing}`.
- [ ] **Step 2: Add `\include{chapters/A4_refusing}` after `A3`.**
- [ ] **Step 3: Build.** Run: `make check`. Expected: exit 0; renders as "Appendix D".
- [ ] **Step 4: Commit.**

```bash
git add chapters/A4_refusing.tex the-library.tex
git commit -m "appendix D: Refusing the Postulate (what survives the refusal)"
```

---

### Task 7: Appendix E, Objections and Replies

**Files:**
- Create: `chapters/A5_objections.tex`
- Modify: `the-library.tex` (add `\include{chapters/A5_objections}` after `A4`)

**Interfaces:**
- Produces: label `app:objections`.

Content checklist (target 700 to 1,000 words): a handful of the strongest objections, each answered from the structure, never from imported authority. Cover at least: (1) this is anti-realism in disguise; (2) the universal prior is uncomputable and therefore idle; (3) simplicity is smuggled in as a value; (4) the turn to care is a non-sequitur from the math; (5) the multiverse is unfalsifiable. Ground every reply in the postulate, finitude, and the bedrock. Carry the reader-safety framing of `information_hazards.md`: do not console with what is not true, and keep objection (4)'s reply honest that care is a chosen cut, not a theorem.

- [ ] **Step 1: Write `chapters/A5_objections.tex`,** beginning `\chapter{Objections and Replies}\label{app:objections}`. Use a clear form per objection (a short statement of the objection, then the reply).

- [ ] **Step 2: Add `\include{chapters/A5_objections}` after `A4`.**
- [ ] **Step 3: Build.** Run: `make check`. Expected: exit 0; renders as "Appendix E".
- [ ] **Step 4: Discipline check.** Grep for forbidden citation anchors and confirm none crept into the reply prose.

Run: `grep -niE 'origen|gregory of nyssa|\bhart\b|levinas|nagarjuna|bodhisattva|emptiness' chapters/A5_objections.tex; echo "exit $?"`
Expected: no matches (exit 1).

- [ ] **Step 5: Commit.**

```bash
git add chapters/A5_objections.tex the-library.tex
git commit -m "appendix E: Objections and Replies (answered from the structure)"
```

---

### Task 8: The Notes (marker-free keyed endnotes)

**Files:**
- Create: `chapters/96_notes.tex`
- Modify: `the-library.tex` (add `\include{chapters/96_notes}` as the first item after `\backmatter`, before `97_resources`)

**Interfaces:**
- Produces: the endnotes section, organized per chapter.

Content checklist (target variable, roughly 300 to 800 words): a `\chapter*{Notes}` with `\addcontentsline` and per-chapter `\section*{Chapter N: Title}` groups. Each note is a short lemma that quotes the phrase it annotates, with no marker in the body. Include at least the source notes the chapters lean on, for example: Ch 1 Russell's chicken; Ch 2 Borges, "The Library of Babel"; Ch 3 Jaynes and Cox; Ch 4 Kraft, Solomonoff, Chaitin; Ch 5 Hutter and the invariance constant; Ch 6 Wheeler, "it from bit"; Ch 7 Wittgenstein and the "why anything" question; Ch 8 DeWitt and the anthropic references; Ch 9 Boltzmann observers; Ch 11 quantum immortality as a labeled implication; Ch 12 Epicurus; Ch 13 Rilke; Ch 14 Hume and Parfit; Ch 15 Camus and Eliot. Only include a note where it earns its place.

- [ ] **Step 1: Write `chapters/96_notes.tex`.**

```latex
\chapter*{Notes}
\addcontentsline{toc}{chapter}{Notes}
\markboth{NOTES}{NOTES}

% \section*{Chapter 1: The Question} ... keyed notes ...
% (one \section* per annotated chapter, in order)
```

- [ ] **Step 2: Add the include.** In `the-library.tex`, immediately after `\bookmarksetup{startatroot}` inside the `\backmatter` block and before `\include{chapters/97_resources}`, add `\include{chapters/96_notes}`.

- [ ] **Step 3: Build.** Run: `make check`. Expected: exit 0; "Notes" appears in the back matter at root level, before Resources.

- [ ] **Step 4: Commit.**

```bash
git add chapters/96_notes.tex the-library.tex
git commit -m "notes: add marker-free keyed endnotes, grouped by chapter"
```

---

### Task 9: Integration, propagation, and the editorial gate

**Files:**
- Modify: `CLAUDE.md` (section 5 status; the build-facts line if page count changed)
- Modify: `README.md` (only if its structure or word-count facts changed)

**Interfaces:**
- Consumes: all prior tasks.

- [ ] **Step 1: Full build.** Run: `make` then `make epub`. Expected: both exit 0; `the-library.pdf` and `the-library.epub` are produced.

- [ ] **Step 2: Validate the EPUB and confirm appendix rendering.**

Run: `epubcheck the-library.epub 2>&1 | tail -3`
Expected: "No errors or warnings detected" (or the pre-existing baseline). Open the EPUB TOC and confirm the appendices and Notes appear as headings.

- [ ] **Step 3: Word count within budget.**

Run: `make wordcount`
Expected: total grew by roughly 3,000 to 5,000 words over the pre-appendix count (about 24k body to about 28k or 29k). If it overshot materially, trim before proceeding.

- [ ] **Step 4: Editorial gate.** Run the book's review over the new files. Dispatch the bookwright reviewer (spec, quality, math, cross-reference auditors) scoped to `chapters/A0_appendices.tex`, `chapters/A1_bedrock.tex` through `chapters/A5_objections.tex`, and `chapters/96_notes.tex`. Apply fixes with the bookwright rewriter (or by hand) until no BLOCKING or SUBSTANTIVE findings remain. Re-run `make` after fixes.

- [ ] **Step 5: Update `CLAUDE.md` section 5 status.** Note that the appendices (A to E) and the Notes are drafted and integrated, and update the page count and any "116 pages" figure to the new value from `pdfinfo the-library.pdf`. Update `README.md` only if a fact it states (structure, word count) changed.

- [ ] **Step 6: Verify no em-dashes across all new and edited files.**

Run: `grep -rlP '\x{2014}' chapters/A0_appendices.tex chapters/A1_bedrock.tex chapters/A2_born_measure.tex chapters/A3_anthropics.tex chapters/A4_refusing.tex chapters/A5_objections.tex chapters/96_notes.tex CLAUDE.md README.md; echo "exit $?"`
Expected: no paths printed (exit 1).

- [ ] **Step 7: Commit.**

```bash
git add -A
git commit -m "appendices: integrate, verify build/epub/wordcount, pass editorial gate; update status"
```

---

## Downstream (out of scope for this plan)

The v1.0.0 DOI release resumes only after this plan is complete. It is a separate step: rotate the exposed Zenodo token, enable the Zenodo GitHub webhook (or use the Zenodo REST uploader with the PDF and EPUB), tag `v1.0.0`, cut the release, then wire the minted DOI into `README.md`, `CITATION.cff`, and `CLAUDE.md` section 5. The version bump (`98b5780`) already sets 1.0.0 in the metadata.

## Self-Review

- **Spec coverage:** appendix set (Tasks 3 to 7), endnotes marker-free (Task 8), math depth statements-plus-sketches (Task 3 checklist), lore doc + propagation (Task 1), LaTeX integration and order (Tasks 2 to 8), word budget and release impact (Task 9 and Downstream), quality gate (Task 9 Step 4), discipline constraints (Global Constraints; Task 7 Step 4 grep). All spec sections map to a task.
- **Placeholder scan:** no "TBD"/"handle edge cases"; prose tasks carry concrete content checklists and the math task carries the actual statements; the "opener prose here" comments are drafting slots inside a scaffolding file, with the content specified in the surrounding checklist.
- **Type/name consistency:** labels `app:bedrock`, `app:born`, `app:anthropics`, `app:refusing`, `app:objections` are defined once and referenced consistently; file names `A0` through `A5` and `96_notes` match every include line; `the-library.tex` insertion points match the read-verified lines 177 and 179.
