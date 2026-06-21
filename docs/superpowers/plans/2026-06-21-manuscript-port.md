# Manuscript Port (Phase B) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Port the manuscript from `../the-library/` into `the-library-description/`, reframed onto the re-founded spine (the cut, the postulate, finitude, the held cut), building cleanly to PDF and a valid EPUB under the title *The Library: The Indifference of Description*.

**Architecture:** Copy the manuscript skeleton once, do the mechanical rename and the two-to-three part split, and confirm it builds before touching prose. Then reframe chapter by chapter, lore-first: each chapter is read against the new `lore/` and the spec, edited in place, build-checked, and committed. The reframe is concentrated (Ch 6 heavy; Ch 7, 8, 9, 10, 2 moderate; the rest light), because the chapters were already de-staled in the old repo.

**Tech Stack:** LaTeX (pdflatex + latexmk, 6x9 `book` class), pandoc + epubcheck for EPUB, the existing `kdp/` assets. Git (new branch `manuscript-port`).

**This is prose reframing, not software.** The skill's test cycle is adapted to: edit to a reframe checklist, verify with grep (no em-dashes, no stale terms) and a LaTeX build, then commit. The acceptance checklist is the test.

## Global Constraints

From the spec (`docs/superpowers/specs/2026-06-20-the-library-respine-design.md`) and `lore/`.

- **The lore in `lore/` is authoritative.** When a chapter and the lore disagree, the chapter is wrong. Quote the lore's framing (the cut, the postulate, finitude, the held cut); do not reinvent it. `lore/foundations.md` is canonical.
- **`../the-library/` is READ-ONLY.** Copy from it once (Task 0). Never edit it. After Task 0 the working copy lives here.
- **House style: no em-dashes.** Commas, colons, semicolons, parentheses, sentence breaks. A write hook enforces this; it matches the em-dash codepoint, so any grep example for it must use `\x{2014}`, not a literal em-dash.
- **Math in math mode** (`$K(x)$`, `$\sum$`); no raw Unicode math; no CJK. `cleveref` is NOT loaded: use plain `\ref`, never `\Cref`.
- **Title:** *The Library: The Indifference of Description.* Subtitle word is "Description." Bare "enumeration" survives only as the verb for the trivial generator ("enumerate all programs"), never as the thesis word.
- **Spine:** "There are no joints. There are only the cuts you make." Reasoning skeleton: bedrock to the postulate ("no cut is privileged") to finitude (a consequence of Kraft, never a theorem) to consequences.
- **The dissolved moves:** there are no "Move I / Move II" anymore. The one interpretive commitment is the postulate. Replace every "move" reference with the postulate framing.
- **Discipline:** never claim the math supports more than it does ("no view from the top" follows from the postulate, not diagonalization; finitude is a consequence of Kraft); never project emotion onto the structure; keep the moral spine out of citations (no Origen, Hart, Nagarjuna, etc.).
- **Build outputs are gitignored** (`.gitignore` already ignores `*.pdf`, `*.epub`, aux files).

---

## File Structure

All paths relative to `the-library-description/` after Task 0 copies them in.

| File | Responsibility | Reframe weight |
|---|---|---|
| `the-library.tex` | main file: title, hypersetup, three `\part` declarations, `\include`s | mechanical (Task 0) |
| `Makefile` | build; `MAIN=the-library`, `TITLE` | mechanical (Task 0) |
| `chapters/02_the_library.tex` | the inversion; plant the spine line | moderate |
| `chapters/04_the_prior.tex`, `05_the_optimality.tex` | the finitude guardrail, made explicit | moderate/light |
| `chapters/06_the_slip.tex` | the postulate enters (replaces 22 "Move" refs) | heavy |
| `chapters/07_the_inhabited_library.tex` | moves to postulate; contingency; note on time | moderate |
| `chapters/08_the_observer.tex` | realism is a cut; Born = cut-bookkeeping seam; observer def | moderate |
| `chapters/09_the_limits.tex` | no-view-from-the-top on the postulate (drop diagonalization); hazards | moderate |
| `chapters/10_indifference_of_description.tex` | retitle; thesis reframe (renamed from `..._enumeration.tex` in Task 0) | moderate |
| `chapters/01,03,11,12,13_*.tex` | light cut-seeding | light |
| `chapters/14_the_pattern.tex`, `15_..._describing_itself.tex` | the convergence; the held cut | moderate |
| `chapters/00_*.tex`, `97/98/99_*.tex` | frontmatter/backmatter prose | light |
| `README.md`, `.zenodo.json`, `CITATION.cff`, `kdp/metadata.yaml` | metadata reframe | light |
| `kdp/the-library-cover-ebook.jpg` | cover regenerated for "Description" | deferrable |

The `figures/`, `images/`, and `kdp/` directories are copied as-is in Task 0.

---

## Task 0: Port the skeleton, mechanical rename, two-to-three part split, build

**Files:**
- Create (copied from `../the-library/`): `chapters/`, `figures/`, `images/`, `kdp/`, `the-library.tex`, `Makefile`, `README.md`, `.zenodo.json`, `CITATION.cff`
- Modify: `the-library.tex`, `Makefile` (title and part structure)
- Rename: `chapters/10_indifference_of_enumeration.tex` to `chapters/10_indifference_of_description.tex`

**Interfaces:**
- Produces: a building, correctly-titled, three-part skeleton with stale chapter prose, ready for per-chapter reframes.

- [ ] **Step 1: Branch.**

```bash
cd /home/spinoza/github/literature/the-library-description && git checkout -b manuscript-port
```

- [ ] **Step 2: Copy the manuscript skeleton from the read-only old repo.**

```bash
OLD=/home/spinoza/github/literature/the-library
NEW=/home/spinoza/github/literature/the-library-description
cp -R "$OLD/chapters" "$OLD/figures" "$OLD/images" "$OLD/kdp" "$NEW/"
cp "$OLD/the-library.tex" "$OLD/Makefile" "$OLD/README.md" "$OLD/.zenodo.json" "$OLD/CITATION.cff" "$NEW/"
rm -f "$NEW"/chapters/*.aux   # do not carry aux files
```

- [ ] **Step 3: Rename the Ch 10 file.**

```bash
cd /home/spinoza/github/literature/the-library-description
git add -A   # stage the copies so git mv tracks the rename cleanly is optional; plain mv is fine pre-commit
mv chapters/10_indifference_of_enumeration.tex chapters/10_indifference_of_description.tex
```

- [ ] **Step 4: Mechanical title rename and part split in `the-library.tex`.**

Replace the exact phrase `The Indifference of Enumeration` with `The Indifference of Description` everywhere it appears as a title (in `\title`, `pdftitle`). Update `pdfsubject` and `pdfkeywords` to drop "two labeled moves" language (subject becomes: "The cut and the indifference of description: optimal learning, the inversion that the joints are ours, and a single postulate. Volume III of the Indifference suite, after Worldlines and Multitudes."). Update the `\include` of Ch 10 to `chapters/10_indifference_of_description`.

Then change the two `\part` declarations into three. Replace:

```latex
\part{The Discovery}
\include{chapters/01_the_question}
...
\include{chapters/05_the_optimality}
\include{chapters/06_the_slip}
...
\include{chapters/09_the_limits}

\part{The Response}

\include{chapters/10_indifference_of_enumeration}
```

with:

```latex
\part{The Index}
\include{chapters/01_the_question}
\include{chapters/02_the_library}
\include{chapters/03_the_indexing}
\include{chapters/04_the_prior}
\include{chapters/05_the_optimality}

\part{The System}
\include{chapters/06_the_slip}
\include{chapters/07_the_inhabited_library}
\include{chapters/08_the_observer}
\include{chapters/09_the_limits}
\include{chapters/10_indifference_of_description}

\part{The Self}
\include{chapters/11_continuation}
```

Update the comment block above `\part` to read "Three parts. Part I (The Index) = chapters 1-5; Part II (The System) = 6-10; Part III (The Self) = 11-15." and update the title line in the comment.

- [ ] **Step 5: Mechanical rename in `Makefile`.**

Replace `The Indifference of Enumeration` with `The Indifference of Description` in `TITLE` and in the two comment lines and the `help` echo.

- [ ] **Step 6: Mechanical title rename in metadata (title strings only; prose reframe is Task 10).**

Replace the exact phrase `The Indifference of Enumeration` with `The Indifference of Description` in `.zenodo.json` (the `title` field), `CITATION.cff` (`title`), `README.md` (title occurrences), and `chapters/00_copyright.tex` and `chapters/99_also_by.tex`. Do NOT touch bare "enumeration" in prose here; that is per-chapter work.

```bash
cd /home/spinoza/github/literature/the-library-description
grep -rln "Indifference of Enumeration" . --include='*.tex' --include='*.md' --include='*.json' --include='*.cff' --include='Makefile'
# edit each hit to "Indifference of Description"
```

- [ ] **Step 7: Build to confirm the skeleton compiles.**

Run: `make pdf`
Expected: `the-library.pdf` builds; the echo reports a page count (~120). The TOC shows three parts (The Index, The System, The Self).

- [ ] **Step 8: Verify and commit.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -rn "Indifference of Enumeration" . --include='*.tex' --include='*.md' --include='*.json' --include='*.cff' Makefile || echo "no stale title phrase"
grep -n "The Index\|The System\|The Self" the-library.tex   # expect the three \part lines
git add -A
git commit -m "port: copy manuscript, rename to Description, split into three parts (The Index/System/Self)

Co-Authored-By: Claude Opus 4.8 (1M context) <noreply@anthropic.com>
Claude-Session: https://claude.ai/code/session_016gbj1kQmyQ2unmc3jkmrH4"
```

---

## Per-chapter reframe tasks (1-10)

Every per-chapter task follows the same step pattern. Stated once here; each task below gives only its **reframe checklist** and **verification greps**.

- **Step A:** Read the chapter file and the lore docs named in the task (always `lore/foundations.md`, plus the task's specific docs).
- **Step B:** Edit the chapter in place to the reframe checklist. Preserve the chapter's structure, epigraph, figures, and `\label`s unless the checklist says otherwise.
- **Step C:** Verify: `grep -cP '\x{2014}' <file>` is 0, plus the task's specific greps.
- **Step D:** Build check: `make check` (quick single pass) compiles without error.
- **Step E:** Commit with the message given.

---

### Task 1: Chapter 2, The Library (the inversion; plant the spine line)

**Lore:** `foundations.md` (the inversion section), `themes.md`, `index.md`.

**Reframe checklist:**
- Plant the spine line, "There are no joints. There are only the cuts you make.", at the point where the chapter already says the information lives in the cut (there are 2 "cut" hits to anchor to). It should land as the chapter's thesis sentence.
- Reframe the 5 bare-"enumeration" uses: keep "enumerate all programs" where it names the trivial generator (that is correct and stays), but where "enumeration" was carrying thesis weight, move the weight to "the cut." The chapter's takeaway is the inversion, not enumeration.
- Add the "no canonical form" beat from `foundations.md`: the totality has no books, shelves, or index of its own; the shelves are the librarian's imposition (a short forward pointer to Ch 14 is fine, matching the existing "note on the metaphor").
- Name the cut at three depths in one sentence (index, system, self), foreshadowing the three Parts.

**Verify:** `grep -c "no joints" chapters/02_the_library.tex` >= 1; `grep -c "the cut" chapters/02_the_library.tex` >= 3.

**Commit:** `port: reframe Ch 2 (plant the spine line; enumeration to the cut)`

---

### Task 2: Chapters 4 and 5, The Prior and The Optimality (the finitude guardrail)

**Lore:** `foundations.md` (the finitude section), `themes.md` (theme 5).

**Reframe checklist (Ch 4):**
- Make finitude explicit where the universal distribution is introduced: the prior is not the structure's preference; a finite cutter is forced toward cheap cuts because Kraft makes short descriptions scarce. State it as a consequence of Kraft, never as a theorem.
- Reframe the 1 "privileged" and 1 "enumeration" use to the cut vocabulary.

**Reframe checklist (Ch 5):**
- Reiterate that optimality is for prediction and is what finitude buys; the bias is forced on the observer, never in the structure.
- Hedge any scaling-law or empirical-confirmation claim as a suggestive echo, not a proof (this was already softened in the old draft; preserve that).

**Verify:** `grep -ci "finit\|forced toward" chapters/04_the_prior.tex` >= 1; em-dash 0 in both files. Confirm no line calls finitude a theorem.

**Commit:** `port: reframe Ch 4-5 (the finitude guardrail made explicit)`

---

### Task 3: Chapter 6, The Slip (the postulate enters) [HEAVY]

**Lore:** `foundations.md` (the postulate section), `themes.md` (theme 2).

**Reframe checklist:**
- This is the heaviest reframe: 22 references to "Move I / Move II / Move III" and the speculative-move framing. Replace the entire two-move scaffolding with the single postulate.
- The slip is the cut: the same Bayesian structure read epistemically or ontologically, and the interpretation is the carving. The postulate enters here, stated as in `foundations.md`: no cut is privileged. "Only this one world is real" costs information; declining to privilege it is what is left when you stop carving, so the multiverse is not a large addition but what remains uncut.
- Remove "Move I" (physics is computable) and "Move II" (CUH) as labeled additions. Their content folds into the postulate: computability is the frame within which we cut (methodological), and "all computable structures exist" is replaced by "no carving is privileged, including the one that says only this exists."
- Keep the cut argument (the unrestricted ontology is informationally simpler) but recast it as: privileging one world is the expensive cut.
- Preserve the chapter's epigraph (Wheeler) and any figures.

**Verify:** `grep -cE "Move I|Move II|Move III" chapters/06_the_slip.tex` is 0; `grep -c "no cut is privileged\|the postulate" chapters/06_the_slip.tex` >= 1; em-dash 0.

**Commit:** `port: reframe Ch 6 (the slip: replace the two moves with the postulate)`

---

### Task 4: Chapter 7, The Inhabited Library (moves to postulate; contingency; time)

**Lore:** `foundations.md`, `outline.md` (Ch 7 entry).

**Reframe checklist:**
- Replace the 7 "Move" references with the postulate/consequences vocabulary (the picture follows from the postulate).
- Keep the "why is there something rather than nothing" beat, reframed: nothing is itself a cheap cut; observation excludes it; coherence is flagged; under the postulate, "why anything" is itself a cut, which relocates the question.
- Keep the contingency beat (the totality dodges "why this and not that" by selecting nothing; the modal hierarchy; a near-necessary measure that is no one) and the "note on time" (computation is static; time is a logical index; the same eternalism as the block universe).
- The humility hinge: what survives if you refuse the postulate (the bedrock does).
- Reframe the 1 "Born" use to the cut-bookkeeping framing or defer it to Ch 8 if cleaner.

**Verify:** `grep -cE "Move I|Move II" chapters/07_the_inhabited_library.tex` is 0; em-dash 0.

**Commit:** `port: reframe Ch 7 (inhabited library: postulate, contingency relocated, time)`

---

### Task 5: Chapter 8, The Observer (realism is a cut; the Born seam)

**Lore:** `foundations.md` (the ontology section), `index.md` (Picture A/B), `themes.md`.

**Reframe checklist:**
- Make the Born-measure / universal-distribution identification the cut-bookkeeping point (the 3 "Born" hits): both are the bookkeeping of cuts, and this is the seam to *Multitudes*. The book does not derive one from the other.
- Add "realism is a cut": Picture A (the totality as object) vs Picture B (the situated observer), with choosing between them named as itself a cut. Hold the existence question open.
- Keep the observer definition: a local substructure doing local inference, hierarchical decomposability as the condition, the self as a short local program.
- Keep the "where am I?" question posed and the note that SSA/SIA/the speed prior are none-forced and adopted by none.
- Quantum mechanics is a familiar landmark only (the plain reading already branches), cross-referenced to *Multitudes*; it carries no argumentative weight.

**Verify:** `grep -c "realism is a cut\|Picture A\|Picture B" chapters/08_the_observer.tex` >= 1; em-dash 0.

**Commit:** `port: reframe Ch 8 (observer: realism is a cut; Born = cut-bookkeeping seam)`

---

### Task 6: Chapter 9, The Limits (no view from the top, on the postulate)

**Lore:** `foundations.md` (the cascade: no view from the top), `grace.md`, `information_hazards.md`.

**Reframe checklist:**
- Re-ground "no view from the top": it follows from the postulate (every view is a cut; no cut is privileged; so no view is the view), NOT from diagonalization. Remove the diagonalization / Turing-jump argument (1 "diagonal" hit) or demote it to a one-line footnote that does not carry the conclusion. It says no agent's view is the view, not that no powerful agent could exist.
- Replace the 2 "Move" references with the postulate vocabulary.
- Keep the hazard catalogue (Boltzmann observers, hellscapes, dark continuation) with the calibrated reader-safety note (the framework permits this; it does not place you in one; you may decline to live inside it).
- Add the groundlessness reader-safety note per `information_hazards.md` (the self is a cut is a claim about the boundary, not the reality of the region).
- Keep "what if you refuse the postulate": the bedrock survives. Keep the Spinoza epigraph and the brief Camus handoff to Part III.

**Verify:** `grep -ci "diagonal" chapters/09_the_limits.tex` is 0 (or only in a non-load-bearing footnote); `grep -c "no cut is privileged\|the postulate\|every view is a cut" chapters/09_the_limits.tex` >= 1; em-dash 0.

**Commit:** `port: reframe Ch 9 (no-view-from-the-top on the postulate; drop diagonalization)`

---

### Task 7: Chapter 10, The Indifference of Description (retitle; thesis)

**Lore:** `foundations.md`, `themes.md` (theme 6), `outline.md`.

**Reframe checklist:**
- Update the `\chapter{...}` title to "The Indifference of Description" (the file was renamed in Task 0).
- Reframe the 2 "Enumeration" and 1 "enumeration" uses: the thesis is the indifference of description. The structure ranks carvings by cost and singles out none, neither which index is you nor which system is real nor which boundary is the self.
- Use the 2 "privileged" hits as anchors: no description is privileged.
- This chapter caps Part II (The System) and sets up Part III. The "where am I?" question stays open.
- Reframe the 1 "Born" use to the cut-bookkeeping framing.
- If the epigraph (Whitman, "I contain multitudes") is kept, ensure the surrounding prose reads it through the cut (the multitudes are not enumerable items either).

**Verify:** `grep -c "Indifference of Description" chapters/10_indifference_of_description.tex` >= 1; `grep -c "enumeration\|Enumeration" chapters/10_indifference_of_description.tex` is 0 unless deliberately contrasting; em-dash 0.

**Commit:** `port: reframe Ch 10 (retitle to The Indifference of Description; thesis)`

---

### Task 8: Chapters 1, 3, 11, 12, 13 (light cut-seeding) [cluster]

**Lore:** `foundations.md`, `implications.md`.

**Reframe checklist (light, preserve the prose):**
- Ch 1 (The Question): prediction is already a cut; one sentence is enough.
- Ch 3 (The Indexing): indexing is the cut for prediction (the verb sense); align with `index.md`.
- Ch 11 (Continuation): the chooser is a cut; quantum immortality is demoted (the book declines to assert the carvings are real), per `implications.md` and `information_hazards.md`.
- Ch 12 (The Dissolution of Death): the boundary called death is a cut; keep the first-person / third-person asymmetry; do not assert quantum immortality.
- Ch 13 (Love Across Branches): the braid is a carving we maintain; keep the concrete vignette (the table, the cold coffee) as the small physical object.
- These chapters are nearly clean (0 to 1 hits each); make the lightest edits that land the cut framing. Do not rewrite wholesale.

**Verify:** em-dash 0 across all five files; `make check` compiles.

**Commit:** `port: light cut-seeding in Ch 1, 3, 11, 12, 13`

---

### Task 9: Chapters 14 and 15 (the convergence; the held cut)

**Lore:** `foundations.md`, `grace.md`, `landing.md`, `apokatastasis.md`, `index.md`.

**Reframe checklist (Ch 14, The Pattern):**
- This is the convergence: self, index, and system were one move all along (self and index dissolve together; see `index.md`). Make this explicit as the payoff the book has built toward.
- The self is a cut, a boundary drawn around a region for navigation; what dissolves is the claim that the boundary was in the structure. Carry the groundlessness reader-safety note (the region is real, the person is real).
- Reframe the 1 "privileged" hit.

**Reframe checklist (Ch 15, the closing):**
- The held cut: warmth between cuts; "we" is a cut we make anyway; the book is the holding performed. Both the cold and the warmth are cuts at the same level.
- Keep "no view from the top" consistent with Ch 9 (the 1 hit), the header-less coda, the single-word address "Stay.", Camus's *must* literal, and the adequacy-doubt named ("I do not know").
- Apokatastasis rides as the orientation-cut (held in orientation; care-here forced by finitude); do not name the machinery in prose.

**Verify:** `grep -c "held cut\|holding" chapters/15_the_pattern_describing_itself.tex` >= 1; `grep -c "Stay" chapters/15_the_pattern_describing_itself.tex` >= 1; em-dash 0 in both.

**Commit:** `port: reframe Ch 14-15 (the convergence; the held cut)`

---

### Task 10: Frontmatter, backmatter, and metadata prose

**Lore:** `grace.md`, `information_hazards.md`, `themes.md`.

**Reframe checklist:**
- `chapters/00_preface.tex`: line ~12 reads "The enumeration is indifferent. We are not." Reframe to "The structure is indifferent. We are not." (preserve the Worldlines parallel). Ensure the preface frames the book as the indifference of description and keeps "Hello, fellow sufferer. Stay with me."
- `chapters/00_note.tex`: confirm the crisis note is consistent with `information_hazards.md` (the groundlessness register); light touch if needed.
- `chapters/97_resources.tex`, `98_reading.tex`, `99_about.tex`: confirm no stale "enumeration" thesis language; "Further Reading" can keep AIT references; close resources on "Stay at this index."
- `README.md`: reframe the body from "two clearly labeled interpretive moves" to the single postulate and the cut; update the one-line description to the indifference of description.
- `.zenodo.json`: reframe the `description` field (it names "two clearly labeled interpretive moves (the physical Church-Turing thesis and the Computable Universe Hypothesis)") to "a single labeled postulate: no carving of the totality is privileged." Keep the title (done in Task 0).
- `kdp/metadata.yaml`: reframe the blurb and keywords to the cut / the indifference of description / the postulate.

**Verify:** `grep -rn "two .* moves\|Move I\|Move II" README.md .zenodo.json kdp/metadata.yaml chapters/00_*.tex` returns nothing; em-dash 0 across edited files.

**Commit:** `port: reframe frontmatter, backmatter, and metadata to the postulate and description`

---

### Task 11: Cover regeneration (deferrable)

**Files:** `kdp/the-library-cover-ebook.jpg`

**Note:** the copied cover shows the old subtitle "The Indifference of Enumeration." It must be regenerated for "Description" before any release, but it does not block the manuscript build (the EPUB embeds whatever is present). This task may be deferred; if so, `log` that the cover still says "Enumeration."

- [ ] **Step 1:** Use the kdp cover MCP tools (`kdp_cover_specs`, then `kdp_generate_cover`) to regenerate a 1600x2560 (1.6:1) ebook cover with the subtitle "The Indifference of Description." Keep the established art direction (Library-of-Babel shelves to a vanishing point, cold indigo palette, a faint gold double-helix braid as the one warm element).
- [ ] **Step 2:** Validate with `kdp_validate_cover`; overwrite `kdp/the-library-cover-ebook.jpg`.
- [ ] **Step 3:** Commit: `port: regenerate cover for The Indifference of Description`.

---

### Task 12: Full build, validate, self-review, finish branch

**Files:** none new; verification and completion.

- [ ] **Step 1: Full PDF build.**

Run: `make pdf`
Expected: `the-library.pdf` builds; page count reported; TOC shows three parts.

- [ ] **Step 2: EPUB build and validation.**

Run: `make epub` then `epubcheck the-library.epub` (the EPUB embeds the cover if present).
Expected: EPUB built; epubcheck reports no errors.

- [ ] **Step 3: Whole-manuscript self-review.**

```bash
cd /home/spinoza/github/literature/the-library-description
grep -rnP '\x{2014}' chapters/ the-library.tex          # expect none
grep -rnE "Move I|Move II|Move III|speculative move" chapters/   # expect none
grep -rn "Indifference of Enumeration" . --include='*.tex' --include='*.md' --include='*.json' --include='*.cff' Makefile  # expect none
grep -rni "diagonal" chapters/09_the_limits.tex          # expect none, or only a non-load-bearing footnote
grep -rn "enumeration" chapters/                         # expect only "enumerate all programs" verb uses
```
Fix any stragglers inline (re-run the owning task's pattern).

- [ ] **Step 4: Finish the branch.**

Announce and use superpowers:finishing-a-development-branch to merge `manuscript-port` into `main` (the bible and the manuscript then share one history), or present the standard options.

---

## Self-Review (run after writing, before executing)

**1. Spec coverage.** Spec section 7 manuscript consequences: title and metadata (Task 0, 10), spine line in Ch 2 (Task 1), finitude in Ch 4-5 (Task 2), the (c) ontology and dissolved moves in Ch 6-9 (Tasks 3-6), Ch 10 retitle (Task 0 file, Task 7 prose), Ch 14 convergence and Ch 15 held cut (Task 9), the two-to-three part split (Task 0). All covered. Cover regen (Task 11) and build/validate (Task 12) complete the port.

**2. Placeholder scan.** Each task has a concrete reframe checklist grounded in a named lore doc and the grep-sized hot spots, not "reframe well."

**3. Consistency.** Terminology (the cut, the postulate, finitude, the held cut, the indifference of description) matches `lore/foundations.md`. Finitude is never called a theorem. "No view from the top" is grounded on the postulate, not diagonalization, in both Ch 9 (Task 6) and Ch 15 (Task 9).
