# Lore Bible Authoring (Phase A) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Author a clean, internally consistent lore bible for *The Library: The Indifference of Description* in `the-library-description/lore/`, derived from the approved respine spec and from `../the-library/lore/` as read-only reference.

**Architecture:** Lore-first. `foundations.md` is upstream of every other doc, so it is authored first and the rest propagate from it. Each doc is authored fresh here (never by editing the old repo), consulting the old doc plus the spec as source material. Each task is one doc, with a content checklist (the acceptance criteria) drawn verbatim from the spec, mechanical verification (em-dash scan, title consistency), and a commit.

**Tech Stack:** Markdown prose. Git for version control (new repo, initialized in Task 0). No build system in Phase A (the manuscript port is Phase B).

**This is prose authoring, not software.** The skill's "write a failing test / run it" cycle is adapted to "author to the checklist / verify with grep + a content review." There are no unit tests; the acceptance checklist is the test.

## Global Constraints

These apply to every task. Copied from the spec (`docs/superpowers/specs/2026-06-20-the-library-respine-design.md`) and the repo conventions.

- **The spec is the source of truth.** When a doc and the spec disagree, the doc is wrong. Quote the spec's framing; do not reinvent it.
- **`../the-library/` is READ-ONLY.** Read it for source material. Never edit any file under it. All writes go under `the-library-description/`.
- **House style: no em-dashes.** Use commas, colons, semicolons, parentheses, or sentence breaks. (Hyphens in compound words are fine.)
- **Math in math mode** (`$K(x)$`, `$\sum$`); no raw Unicode math; no CJK (romanize).
- **Title:** *The Library: The Indifference of Description.* Subtitle word is "Description," never "Enumeration" (except where a doc deliberately contrasts the old subtitle).
- **Spine line:** "There are no joints. There are only the cuts you make."
- **Reasoning skeleton:** bedrock (settled math) to the postulate ("no cut is privileged") to finitude (a consequence of Kraft, never called a theorem) to consequences.
- **Moral-spine discipline:** the universalist position lives in the structure, never in citations. No Origen, Hart, Gregory of Nyssa, the bodhisattva vow, Levinas. Under (c), also keep the emptiness/Pyrrhonist traditions out of prose (no Nagarjuna, etc.). These belong in lore, not the book.
- **Never claim the math supports more than it does.** Finitude is presented as a consequence of Kraft; "no view from the top" follows from the stated postulate.

---

## File Structure

All paths relative to `the-library-description/`.

| File | Responsibility |
|---|---|
| `lore/foundations.md` | **Canonical.** Bedrock theorems, the postulate, finitude, the cut at three depths, the ontology as (c), the recast cascade, what bedrock does not provide, the discipline. Upstream of all. |
| `lore/themes.md` | Core vision, the inversion, the seven themes (theme 6 = Indifference of Description), the suite table, "What This Book Is NOT," relationship to other projects. |
| `lore/index.md` | Post-migration: Picture A vs Picture B (and that choosing between them is a cut), index-as-one-instance-of-the-cut, local inference and hierarchical decomposability (the detail that supports finitude), pointer up to foundations/themes. |
| `lore/outline.md` | Three parts (Index/System/Self), per-chapter "names its cut" notes, Ch 10 retitle, word targets, pedagogical sequencing. |
| `lore/direction.md` | Title, pedagogy, comparable works, diagrams (the cut as recurring figure), voice sample, KDP considerations. |
| `lore/grace.md` | The held cut, no-view-from-the-top re-grounded on the postulate, warmth-between-cuts, the symmetric-distribution resolution, humility. |
| `lore/landing.md` | The (c) resolution of the figure/ground and small-object problems; Directions A/B/C reconciled into the held cut; the adequacy-doubt decision. |
| `lore/apokatastasis.md` | The universalist refusal reframed as a chosen cut; the crux-4 resolution; the "what not to do" discipline. |
| `lore/implications.md` | Each human concept (free will, death, love, self) re-derived as a cut. |
| `lore/information_hazards.md` | Re-audit under (c): quantum-immortality consolation removed; groundlessness/derealization register added; crisis-note and back-matter requirements carried. |
| `CLAUDE.md` | New-dir identity and conventions, authored once the lore exists. Durable counterpart to the working-state HANDOFF.md. |
| `.gitignore` | LaTeX aux and build-output ignores (carried from the old repo's pattern), ready for the Phase B manuscript port. |

The two dated decision docs from the old repo (`2026-06-16-qm-as-corroboration-design.md`, `2026-06-17-simplicity-prior-design.md`) are **not** copied. They are historical snapshots of the old framing; the spec records how they are superseded.

---

## Task 0: Scaffold and initialize the repo

**Files:**
- Create: `the-library-description/.gitignore`
- Already present: `HANDOFF.md`, `docs/superpowers/specs/2026-06-20-the-library-respine-design.md`, `docs/superpowers/plans/2026-06-20-lore-bible-authoring.md`

**Interfaces:**
- Produces: an initialized git repo with the spec, plan, and HANDOFF committed, so every later task can commit its doc.

- [ ] **Step 1: Write `.gitignore`**

Copy the LaTeX-aux pattern from the old repo for Phase B readiness:

```
# LaTeX aux
*.aux
*.log
*.out
*.toc
*.bbl
*.blg
*.fdb_latexmk
*.fls
*.synctex.gz
# Build outputs (release assets, not committed)
*.pdf
*.epub
```

- [ ] **Step 2: Initialize the repo**

Run:
```bash
cd /home/spinoza/github/literature/the-library-description && git init
```
Expected: "Initialized empty Git repository".

- [ ] **Step 3: Commit the scaffold**

```bash
cd /home/spinoza/github/literature/the-library-description
git add .gitignore HANDOFF.md docs/
git commit -m "chore: scaffold the-library-description with approved respine spec and lore plan"
```

- [ ] **Step 4: Verify**

Run: `git -C /home/spinoza/github/literature/the-library-description log --oneline`
Expected: one commit listed. Confirm `git status` is clean.

---

## Task 1: foundations.md (the spine doc)

**Files:**
- Create: `the-library-description/lore/foundations.md`
- Read (reference): `../the-library/lore/foundations.md` (for the bedrock theorems, verbatim in substance), `../the-library/lore/index.md` (for the C3 spine content that migrates up), spec sections 2.2, 2.4, 2.5, 3, 4, 8.

**Interfaces:**
- Produces: the canonical statement every other doc is checked against. Establishes the exact wording of: the spine line, the postulate ("no cut is privileged"), the finitude argument, the recast cascade.

- [ ] **Step 1: Read sources.** Read `../the-library/lore/foundations.md` in full, `../the-library/lore/index.md` in full, and spec sections 2.2, 2.4, 2.5, 3, 4, 8.

- [ ] **Step 2: Author `lore/foundations.md` to this content checklist:**
  - Opens with the inversion: the spine line ("There are no joints. There are only the cuts you make."), and what it means (the structure has no canonical decomposition; every joint is a cut the observer makes).
  - The principle of earned axioms, reframed: the book earns "no joints" through everyday inquiry, not by assertion.
  - **Bedrock**, stated as theorems, verbatim in substance from the old doc: Bayes (Cox uniqueness), Kraft's inequality, the universal prior definition $M(x)=\sum_{p:U(p)=x*}2^{-|p|}$, the dominance theorem $M(x)\geq c_\mu\,\mu(x)$, the invariance theorem. These do not change; they are settled.
  - **The postulate: no cut is privileged.** The single load-bearing commitment. Explain that it replaces the old Move I and Move II: those were additions you take on ("physics is computable," "all computable structures exist"); the postulate is a refusal to privilege any carving, including the carving "only this one is real."
  - **Finitude.** A finite cutter is forced toward cheap cuts. State explicitly that this is a consequence of Kraft (short descriptions are necessarily scarce, so finite probability mass is compelled toward them), NOT a new theorem. This is the guardrail against relativism: simplicity is real for the observer, never in the structure.
  - **The cut at three depths**: index (predict), system (world), self (someone). Names the three Parts.
  - **The ontology, (c):** "one world exists" is itself a cut; the existence question is undecidable from inside; the book holds it open. Include the central-promise shift: the book no longer owes "explain the Born measure" but shows the "why" presupposes a joint; the Born measure and the universal prior are both cut-bookkeeping; this is the seam to *Multitudes*.
  - **The cascade, recast:** every Part II/III conclusion traces to bedrock, the postulate, or finitude. Traceability discipline preserved; vocabulary changed.
  - **What the bedrock does not provide**, updated: drop the move-specific items; keep coherence of mathematics, the hard problem of consciousness (bracketed), UTM choice at finite scales, and "why something rather than nothing" reframed (now itself a cut).
  - **The discipline** list, from spec section 8.

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/foundations.md            # expect 0
grep -c "no cut is privileged" lore/foundations.md   # expect >= 1
grep -n "Move I\|Move II" lore/foundations.md        # expect only in the "replaces the old Move..." explanation, if anywhere
```

- [ ] **Step 4: Content verify.** Re-read the doc against the Step 2 checklist. Confirm finitude is described as a consequence of Kraft, not a theorem. Confirm the four bedrock theorems are present and unchanged in substance.

- [ ] **Step 5: Commit.**

```bash
git add lore/foundations.md
git commit -m "lore: author foundations.md (bedrock, the postulate, finitude, the cut at three depths)"
```

---

## Task 2: themes.md

**Files:**
- Create: `the-library-description/lore/themes.md`
- Read (reference): `../the-library/lore/themes.md`, the just-authored `lore/foundations.md`, spec sections 2, 5.

**Interfaces:**
- Consumes: the postulate wording and the three-cut framing from `foundations.md`.
- Produces: the seven-theme vocabulary and the suite table later docs reference.

- [ ] **Step 1: Read sources.** Read `../the-library/lore/themes.md`, the new `lore/foundations.md`, and spec sections 2 and 5.

- [ ] **Step 2: Author `lore/themes.md` to this checklist:**
  - The central discomfort, reframed: not "the manifold is one index in a larger indexing problem" but "every joint you navigate by is your cut; the structure has none."
  - The inversion section restated around the cut (generation trivial; the cut is everything).
  - The seven core themes, reframed around the cut. Theme 6 becomes "The Indifference of Description." Themes that named "enumeration" or "the measure over indices" are restated in cut language.
  - The suite table (spec section 5): Worldlines / Multitudes / The Library, rows for bedrock, subtitle noun (Geometry / Measure / Description), the cut named, indifference, self, seam handed forward, response.
  - "What This Book Is NOT," updated: remove "two labeled moves"; the speculative content is now the single postulate plus the refusal to privilege cuts; keep the other exclusions (no alien intelligence, not techno-futurist, not about consciousness, not consoled by the structure, not anti-mathematical, not a survey).
  - Relationship to other projects, carried and lightly reframed.

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/themes.md                          # expect 0
grep -c "Indifference of Description" lore/themes.md  # expect >= 1
grep -n "Move I\|Move II\|labeled move" lore/themes.md  # expect none as live framing
```

- [ ] **Step 4: Content verify.** Re-read against the checklist; confirm the suite table matches spec section 5.

- [ ] **Step 5: Commit.**

```bash
git add lore/themes.md
git commit -m "lore: author themes.md (the inversion, seven themes, suite table) around the cut"
```

---

## Task 3: index.md (post-migration)

**Files:**
- Create: `the-library-description/lore/index.md`
- Read (reference): `../the-library/lore/index.md`, the new `lore/foundations.md` and `lore/themes.md`, spec section 6 (index entry).

**Interfaces:**
- Consumes: the spine and the postulate from `foundations.md` (its core claim has migrated there).
- Produces: the Picture A / Picture B vocabulary and the local-inference detail that supports finitude.

- [ ] **Step 1: Read sources.** Read the old `index.md` fully, the new `foundations.md` and `themes.md`, and the spec's index entry in section 6.

- [ ] **Step 2: Author `lore/index.md` to this checklist:**
  - Open by noting the spine claim now lives in `foundations.md` (the index-as-cut is no longer a clarification the book has not yet made; it is the spine). This doc carries the supporting detail.
  - **Picture A (multiverse-as-object) vs Picture B (observer-situated)**, with the table, and the explicit point that *choosing between them as "the real one" is itself a cut* (the (c) move).
  - The index as one instance of the cut, parallel to the self (both are local compressions; neither carves at a joint).
  - **Local inference**: what observers actually do (isolate a substructure, find a short local program, compose across scales); not global Solomonoff.
  - **Hierarchical decomposability as anthropic constraint**: observers whose inference works exist only where $U(p)$ is hierarchically decomposable; this is the detail that grounds finitude and the observer definition.
  - Remove the old "where in the manuscript" section's stale chapter plan; replace with a short pointer to `outline.md`.

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/index.md                  # expect 0
grep -c "Picture A\|Picture B" lore/index.md  # expect >= 2
```

- [ ] **Step 4: Content verify.** Confirm the doc no longer claims to be introducing the spine (the spine is in foundations); confirm "choosing between A and B is a cut" is present.

- [ ] **Step 5: Commit.**

```bash
git add lore/index.md
git commit -m "lore: author index.md (Picture A/B as a cut, local inference, decomposability)"
```

---

## Task 4: outline.md

**Files:**
- Create: `the-library-description/lore/outline.md`
- Read (reference): `../the-library/lore/outline.md`, the new `foundations.md`, spec sections 2.3 and 7.

**Interfaces:**
- Consumes: the three-part structure from `foundations.md`.
- Produces: the chapter-to-part mapping and per-chapter cut notes the manuscript port (Phase B) will follow.

- [ ] **Step 1: Read sources.** Read the old `outline.md`, the new `foundations.md`, and spec sections 2.3 and 7.

- [ ] **Step 2: Author `lore/outline.md` to this checklist:**
  - Three parts: **The Index** (Ch 1-5), **The System** (Ch 6-10), **The Self** (Ch 11-15), each introduced as the Nth instance of the one cut.
  - Per-chapter entries in the existing order, each with a note naming the construct it introduces as a cut (Ch 2 the cut itself, Ch 3 the index, Ch 6-7 the system, Ch 8 the observer, Ch 14 the self).
  - Ch 10 retitled "The Indifference of Description."
  - Title updated; word-count targets carried; pedagogical sequencing rewritten to the new skeleton (bedrock to postulate to finitude to consequences).
  - Epigraph candidates carried over; flag (do not resolve) any that named "enumeration" for later review.

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/outline.md                                  # expect 0
grep -c "The Index\|The System\|The Self" lore/outline.md      # expect >= 3
grep -c "Indifference of Description" lore/outline.md           # expect >= 1
```

- [ ] **Step 4: Content verify.** Confirm chapter order is unchanged from the old outline and that each part is framed as a cut.

- [ ] **Step 5: Commit.**

```bash
git add lore/outline.md
git commit -m "lore: author outline.md (three parts as three cuts; Ch 10 retitled)"
```

---

## Task 5: direction.md

**Files:**
- Create: `the-library-description/lore/direction.md`
- Read (reference): `../the-library/lore/direction.md`, the new `themes.md`, spec sections 2.1 and 8.

- [ ] **Step 1: Read sources.** Read the old `direction.md`, the new `themes.md`, and spec sections 2.1 and 8.

- [ ] **Step 2: Author `lore/direction.md` to this checklist:**
  - Title block updated to *The Library: The Indifference of Description*.
  - Pedagogy: earned axioms now earn "no joints"; the reader is led to the cut, not told it.
  - Comparable works carried, with added positioning against deflationary / structural-realist readings (since (c) is adjacent to them) and a note that this book refuses even the realism question.
  - Diagrams: the cut as the recurring figure; carry the candidate-diagram list and add cut-themed ones (the imposed index, the same data cut two ways).
  - Voice sample and KDP considerations carried (update the title in them).

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/direction.md                          # expect 0
grep -c "Indifference of Description" lore/direction.md  # expect >= 1
```

- [ ] **Step 4: Content verify.** Confirm no stale "Enumeration" title and that the diagrams section centers the cut.

- [ ] **Step 5: Commit.**

```bash
git add lore/direction.md
git commit -m "lore: author direction.md (title, pedagogy, comparables, the cut as figure)"
```

---

## Task 6: grace.md

**Files:**
- Create: `the-library-description/lore/grace.md`
- Read (reference): `../the-library/lore/grace.md`, the new `foundations.md`, spec sections 2.6, 3 (crux 5), 8.

- [ ] **Step 1: Read sources.** Read the old `grace.md`, the new `foundations.md`, and spec sections 2.6, 3, 8.

- [ ] **Step 2: Author `lore/grace.md` to this checklist:**
  - The destination is the held cut: warmth between cuts; "we" is a cut we make anyway; the book is the holding performed.
  - "No view from the top" re-grounded on the postulate (every view is a cut; no cut is privileged; so no view is the view), NOT on diagonalization. Remove the "shadow of a theorem" overclaim or restate it as "follows from the postulate."
  - Resolve the symmetric-distribution problem: both cold and warmth are cuts at the same level; the structure distributes everything; we provide the preference by choosing the cut.
  - The braid as a cut we maintain; Camus's *must* literal; the adequacy-doubt named.
  - Humility about the framework, carried.

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/grace.md                         # expect 0
grep -n "diagonalization\|shadow of a theorem" lore/grace.md  # expect none, or only as superseded note
```

- [ ] **Step 4: Content verify.** Confirm no-view-from-the-top is grounded on the postulate and the held-cut landing is stated.

- [ ] **Step 5: Commit.**

```bash
git add lore/grace.md
git commit -m "lore: author grace.md (the held cut; no-view-from-the-top re-grounded on the postulate)"
```

---

## Task 7: landing.md

**Files:**
- Create: `the-library-description/lore/landing.md`
- Read (reference): `../the-library/lore/landing.md`, the new `grace.md` and `apokatastasis.md` (apokatastasis is Task 8; if authoring out of order, read the old apokatastasis.md), spec section 2.6.

- [ ] **Step 1: Read sources.** Read the old `landing.md`, the new `grace.md`, and spec section 2.6.

- [ ] **Step 2: Author `lore/landing.md` to this checklist:**
  - Record the (c) resolution of the figure/ground diagnosis: the old contrast (cold structure, warm addition) is gone because both cold and warmth are cuts at the same level; the closing holds care with no floor.
  - The small-physical-object problem resolved: the book itself, and the braid, are the held cut (the object is the thing in the reader's hands).
  - Directions A/B/C reconciled into the held cut: A's indexical locality plus B's performative, with apokatastasis as the orientation-cut, C as a low harmonic.
  - The adequacy-doubt decision kept (the closing asks whether care is enough, answers "I do not know," chooses unsure).

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/landing.md          # expect 0
grep -c "held cut" lore/landing.md    # expect >= 1
```

- [ ] **Step 4: Content verify.** Confirm the small-object and figure/ground problems are marked resolved under (c).

- [ ] **Step 5: Commit.**

```bash
git add lore/landing.md
git commit -m "lore: author landing.md (held-cut resolution of figure/ground and small-object problems)"
```

---

## Task 8: apokatastasis.md

**Files:**
- Create: `the-library-description/lore/apokatastasis.md`
- Read (reference): `../the-library/lore/apokatastasis.md`, spec sections 3 (crux 4) and 2.6.

- [ ] **Step 1: Read sources.** Read the old `apokatastasis.md` and spec sections 3 and 2.6.

- [ ] **Step 2: Author `lore/apokatastasis.md` to this checklist:**
  - The universalist position stated (abandon no configuration), unchanged as the moral spine.
  - Reframed under (c): the refusal to abandon any configuration is a chosen cut (orientation), and care-here is the cut finitude forces; these no longer contradict because neither is a real joint. This is the crux-4 resolution; state it explicitly.
  - The standard consoling moves remain foreclosed; under (c), quantum-immortality consolation is doubly foreclosed (we cannot even assert the branches exist).
  - "What not to do" discipline carried (no naming sources in prose).
  - The book-as-holding move, carried.

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/apokatastasis.md        # expect 0
grep -c "chosen cut\|orientation" lore/apokatastasis.md  # expect >= 1
```

- [ ] **Step 4: Content verify.** Confirm the crux-4 resolution (orientation-cut vs care-here) is present and the no-citations discipline is kept.

- [ ] **Step 5: Commit.**

```bash
git add lore/apokatastasis.md
git commit -m "lore: author apokatastasis.md (refusal as a chosen cut; crux-4 resolution)"
```

---

## Task 9: implications.md

**Files:**
- Create: `the-library-description/lore/implications.md`
- Read (reference): `../the-library/lore/implications.md`, the new `foundations.md`, spec section 6 (implications entry).

- [ ] **Step 1: Read sources.** Read the old `implications.md`, the new `foundations.md`, and the spec's implications note in section 6.

- [ ] **Step 2: Author `lore/implications.md` to this checklist:**
  - Each human concept re-derived as a cut: free will (the chooser is a cut), death (the boundary is a cut), love (the braid is a cut we maintain), the self (a cut for persistence).
  - Most content carries from the old doc; the framing shifts from "what multiplicity does to each concept" to "each concept is a cut."
  - Each entry traceable to bedrock, the postulate, or finitude (per the recast cascade).

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/implications.md   # expect 0
```

- [ ] **Step 4: Content verify.** Confirm each concept is framed as a cut and remains traceable.

- [ ] **Step 5: Commit.**

```bash
git add lore/implications.md
git commit -m "lore: author implications.md (free will, death, love, self as cuts)"
```

---

## Task 10: information_hazards.md (re-audit)

**Files:**
- Create: `the-library-description/lore/information_hazards.md`
- Read (reference): `../the-library/lore/information_hazards.md`, spec sections 4, 6, 8.

- [ ] **Step 1: Read sources.** Read the old `information_hazards.md` and spec sections 4, 6, 8.

- [ ] **Step 2: Author `lore/information_hazards.md` to this checklist:**
  - Carry the existing hazard catalogue and mitigations (crisis note near the front, back-matter resources, calibrated one-sentence permissions at the sharpest points).
  - **Removed risk:** the quantum-immortality consolation is gone (under (c) the book cannot assert the branches exist), which is safer; note this.
  - **Added risk:** a groundlessness / derealization-dissociation register specific to (c). Add a calibrated mitigation note (the framework permits this reading; it does not require you to live inside it; the finitude guardrail and the held cut are the footing).
  - Re-audit the permanence-of-suffering and Boltzmann passages against the (c) frame.

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' lore/information_hazards.md            # expect 0
grep -c "groundlessness\|derealization" lore/information_hazards.md  # expect >= 1
```

- [ ] **Step 4: Content verify.** Confirm the QI consolation is marked removed and the groundlessness register is added with a mitigation.

- [ ] **Step 5: Commit.**

```bash
git add lore/information_hazards.md
git commit -m "lore: re-audit information_hazards.md under (c) (QI consolation removed, groundlessness added)"
```

---

## Task 11: CLAUDE.md for the new directory

**Files:**
- Create: `the-library-description/CLAUDE.md`
- Read (reference): all the new `lore/*.md`, the spec, `HANDOFF.md`, `../the-library/CLAUDE.md` (section 7 conventions only).

**Interfaces:**
- Consumes: every authored lore doc (so the lore map and identity are accurate).
- Produces: the durable identity doc for future sessions in this directory.

- [ ] **Step 1: Read sources.** Read all new lore docs, the spec, the HANDOFF, and section 7 of the old `CLAUDE.md`.

- [ ] **Step 2: Author `the-library-description/CLAUDE.md` to this checklist:**
  - Identity: this directory is *The Library: The Indifference of Description*, Vol III of the suite. State the spine line and the one-move-three-depths structure.
  - The read-only-`../the-library` rule (point to HANDOFF for the working-state version).
  - The reasoning skeleton (bedrock to postulate to finitude to consequences).
  - The lore map (the ten authored docs and their roles), pointing to `foundations.md` as canonical.
  - Structure and status: three parts; lore authored (Phase A done); manuscript not yet ported (Phase B pending).
  - Build and conventions: carry section 7 of the old CLAUDE.md (LaTeX, no em-dashes, math mode, figures as arguments, the voice), updated for the new title and noting the manuscript is not yet present here.
  - A pointer to the spec and this plan under `docs/superpowers/`.

- [ ] **Step 3: Mechanical verify.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -cP '\x{2014}' CLAUDE.md                          # expect 0
grep -c "Indifference of Description" CLAUDE.md  # expect >= 1
```

- [ ] **Step 4: Content verify.** Confirm the lore map lists all ten docs and the identity matches the spec.

- [ ] **Step 5: Commit.**

```bash
git add CLAUDE.md
git commit -m "docs: author CLAUDE.md for the-library-description (identity, spine, lore map)"
```

---

## Self-Review

After all tasks, run this checklist against the spec.

**1. Spec coverage.** Confirm every doc in spec section 6 has a task: foundations (T1), themes (T2), index (T3), outline (T4), direction (T5), grace (T6), landing (T7), apokatastasis (T8), implications (T9), information_hazards (T10). Confirm the dated decision docs are intentionally not copied. Confirm the new-dir CLAUDE.md (T11) and scaffold (T0) are present. Manuscript (spec section 7) is intentionally deferred to Phase B.

**2. Cross-doc consistency.** Grep the whole `lore/` tree:

```bash
cd /home/spinoza/github/literature/the-library-description
grep -rnP '\x{2014}' lore/ CLAUDE.md     # expect no output
grep -rn "Enumeration" lore/             # expect only deliberate old-subtitle contrasts
grep -rln "Move I\|Move II\|cascade of moves\|labeled move" lore/   # expect none as live framing
grep -rln "no cut is privileged" lore/   # expect foundations.md at minimum
```

**3. Terminology consistency.** Confirm "the cut," "the postulate," "finitude," "the held cut," and "Indifference of Description" are used consistently across docs and match `foundations.md`. Confirm finitude is never called a theorem anywhere.

Fix any issues inline.

---

## Phase B (out of scope here, noted for sequencing)

After the bible is authored and you have reviewed it, a separate plan covers the manuscript port: copy `../the-library/chapters/` into `the-library-description/chapters/`, then apply the reframes from spec section 7 (title and metadata, plant the spine line in Ch 2, the finitude guardrail in Ch 4-5, the (c) ontology and dissolved-moves in Ch 6-9, Ch 10 retitle, Ch 14 as convergence, Ch 15 held cut, the 2-to-3 part split), then port `kdp/`, the build files, and the citation metadata, then build and validate. Phase B is written only after Phase A is reviewed, because the prose reframes depend on the authored bible.
