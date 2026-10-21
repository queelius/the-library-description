# Unifying Principles Revision Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Revise *The Library* so that three principles it already uses are named once each and cited by name afterward, the postulate is worded as a stance, and Chapter 9 becomes "The Center," the one home of the first principle.

**Architecture:** Lore first (`lore/foundations.md` is canonical; every other lore doc follows it), then the chapters in reading order, then the back matter, then the docs that describe the book, then a verification pass with fresh auditors. Each task ends with a compiling book and a commit. The book has no unit tests; a task's "test" is a set of exact-string checks plus `make check`, and the final task is the review.

**Tech Stack:** LaTeX (`make check`, `make`, `make epub`, `epubcheck` at `~/.local/bin/epubcheck`, `make wordcount`), Markdown lore, git. Python one-liners for exact-string replacement (assert exactly one occurrence before replacing).

**Spec:** `docs/superpowers/specs/2026-10-21-unifying-principles-design.md`

## Global Constraints

- No em-dash (U+2014) anywhere; a hook rejects the write. Check with `grep -nP "\x{2014}" <file>`.
- Math in math mode (`$M$`, `$K(x)$`, `$\pi$`). No raw Unicode math.
- Second person, plain, companionate, no hype. No staged dialogue.
- Each principle is stated once, at its home, then cited by name (discipline rule 9). The body never uses the labels P1, P2, P3; those are lore-only. The body handles, used identically everywhere:
  - P1: **"no description contains its center"** (home: Chapter 9; cite as "Chapter 9" or "the center").
  - P2: **"weights come after cuts"** (home: Chapter 3; cite as "Chapter 3's rule" or by the phrase).
  - P3: **"a found name certifies itself; an absence cannot be certified"** (home: Chapter 2; cite as "Chapter 2's one-way certificate" or by the phrase).
- The postulate box, identical in Chapter 6, Chapter 9, `lore/foundations.md`, and `README.md`:
  > **The postulate: no cut is privileged.** The book treats no decomposition of the describable totality as view-independently correct. Every carving into worlds, systems, and selves it reads as a cut an observer makes, and none as the structure's own.
- "There are no joints. There are only the cuts you make." stays verbatim wherever it now appears (Chapters 2, 6, 10, 14, 15).
- Chapter 15: the protected line "A person described a pattern and chose, in the describing, to be kind about it.", the triad, the cadence "No view from above. No reason beneath.", and "Stay." are verbatim. Chapter 15 is edited only if a cross-reference's wording forces it.
- Safety notes stay body text and point to Resources; the Chapter 11 safety sentence "Nothing in it is a reason to take a risk with your life." is verbatim.
- Filenames unchanged: Chapter 9 stays `chapters/09_the_limits.tex` with `\chapter{The Center}`.
- Citations: mathematical sources and philosophical adversaries go in the Notes, never as authorities in the body. Lewis's two gods are told in the body without his name.
- Every lore line that says the postulate denies, asserts, or proves an absence is reworded to say the book declines; "groundlessness" is "no floor the book can certify."
- Commit messages end with:
  ```
  Co-Authored-By: Claude Fable 5.1 <noreply@anthropic.com>
  Claude-Session: https://claude.ai/code/session_0199XNaRqyn4uhnYNNiBJGbo
  ```

## Review Focus

1. **A cold sentence slides back to assertion.** "It is absent," "there is no such fact," "no floor" stated as a finding about the structure. Expected: every such sentence is either a finding with its principle named or a refusal worded as what the book declines. Pinned in Task 11 (auditor 1 sorts every cold sentence against the spec's section 4 table) and Task 6 step 7 (grep).
2. **Hedge leakage.** The stance register restated on many pages ("the book declines," "the book treats") instead of once. Expected: the register is stated in Chapter 6 and recalled in Chapter 9; elsewhere the prose speaks plainly. Pinned in Task 11 (auditor 2 counts and lists occurrences of "the book declines" and "the book treats"; more than six in the body is a finding).
3. **P3 used beyond strings without the analogy label.** Expected: every use outside Chapter 2 and Appendix A either concerns strings or says it is an analogy. Pinned in Task 11 (auditor 1 lists every use).
4. **The infinite-cosmos argument separated from its reply.** Expected: in Chapter 9 the case and "the copy was already there" are in the same section with no section break between them. Pinned in Task 6 step 7 (grep proximity) and Task 11 (auditor 3).
5. **Stale names after the retitle and the move.** "The Limits," "Without Everett," and "Where am I?" as a Chapter 8 section referenced anywhere outside historical records; a duplicated or missing `fig:where-am-i`. Pinned in Task 6 step 6 (`make check` log has no "multiply defined" or "undefined" label) and Task 10 step 4 (repository grep).

---

### Task 1: Canonical lore (`foundations.md`)

**Files:**
- Modify: `lore/foundations.md` (sections "The counting fact" at ~184, the postulate at ~260-323, the cascade at ~395-460, "What the bedrock does not provide" at ~463-499, "The discipline" at ~500-533)

**Interfaces:**
- Produces: the section heading `### Three principles the book names`, the three lore labels P1, P2, P3 with the body handles above, the new box wording, the split "No view from the top" entry, and the phrase "a supplier of occurrences (Everett is one; an infinite cosmos is another; the Library read ontically is a third)" used by every later task.

- [ ] **Step 1: Add the section `### Three principles the book names`** after "The counting fact" and before "The cut has no canonical form." Carry over the spec's section 3 in full (P1 with "How far P1 reaches," the two faces, supplier-neutrality, the occurrence measure sorted, the native-weighting slip with UDASSA and the reply including why "chosen" does not disqualify $M$, the copy was already there, status, home, instances; P2; P3 with its reach and its limit at the joints; the two smaller threads). State under P1 that the body handles are those in Global Constraints and that P1/P2/P3 are lore labels only.

- [ ] **Step 2: Rewrite the postulate section.** Replace the box with the new wording. Replace the paragraph beginning "**Status: a refusal, not a proof of absence.**" with a paragraph headed "**Register: a stance, and why it is forced.**" that says: by P3 the joints question is closed from inside in both directions, so the book declines rather than denies; the spine sentence is the picture; "the center is a cut" is the postulate applied, a refusal, not part of P1. Add the spec's section 4 table (finding or refusal, and what each rests on). Delete the sentence `Chapter 9's section on refusing Everett is a different matter and is titled "Without Everett."` and replace it with `Chapter 9 no longer has a section on refusing Everett; a reader who rejects Everett loses one supplier of occurrences and nothing else (Chapter 8's landmark paragraph says so).`

- [ ] **Step 3: Update the cascade.** Under **Theorem and construction** add three bullets: P1, P2, P3 (one line each, naming them as pre-postulate facts). Under **Postulate** replace the "No view from the top" bullet with two: the P1 half (a surveying mind cannot read off which occurrence is you; finding; needs no postulate) and the postulate half (no mind's decomposition is *the* decomposition, and the hidden indexical fact is declined, not denied). Replace "Everett" in the two **Optional additions** parentheticals (lines ~40 and ~441) with "a supplier of occurrences (Everett is one; an infinite cosmos is another; the Library read ontically is a third)". Replace "Quantum immortality takes at least Everett, an identity rule, and a self-location rule" with "Quantum immortality takes a supplier of occurrences (which need not be quantum), an identity rule, and a self-location rule; Chapter 9 states the general form and its reply, Chapter 11 names the instance". Replace "The missing occurrence measure" wording at ~368-372 so that it says the gap is the *now* face of P1 in the Library's currency and that two claims hide in "missing" (finding: the construction supplies none; refusal: the book adopts none).

- [ ] **Step 4: Update "What the bedrock does not provide" and "The discipline."** In the bullet "How to assign self-location probabilities," add: "and no description could supply them (P1)." Rewrite discipline rule 5's first clause to: `"No view from the top" has two halves: its indexical half follows from P1 and needs no postulate; its joints half is the postulate applied, a refusal.` Add to rule 9's canonical homes: `P1 in Chapter 9; P2 in Chapter 3; P3 in Chapter 2`.

- [ ] **Step 5: Verify.**
  Run: `grep -c "The book treats no decomposition of the describable totality" lore/foundations.md` Expected: `1`.
  Run: `grep -c "No decomposition of the describable totality is view-independently correct" lore/foundations.md` Expected: `0`.
  Run: `grep -c "Without Everett" lore/foundations.md` Expected: `0`.
  Run: `grep -nP "\x{2014}" lore/foundations.md` Expected: no output.

- [ ] **Step 6: Commit.** `git commit -am "lore: three principles, the postulate as a stance, no view from the top split"` with the attribution lines.

---

### Task 2: Supporting lore (themes, index, grace, landing, apokatastasis, implications, direction, hazards)

**Files:**
- Modify: `lore/themes.md` (themes 2, 4, 6 at ~55-100), `lore/index.md` (the section at ~93-120 that discusses self-location and Boltzmann-style occurrences; the "Where in the manuscript" section at ~132), `lore/grace.md:17-19`, `lore/landing.md` (check only), `lore/apokatastasis.md` (check only), `lore/implications.md:69-71,84,190-193`, `lore/direction.md:50-66,117-118,148`, `lore/information_hazards.md` (risks 1, 3, 5 at ~20-50; the quantum-immortality subsection at ~132-145)

**Interfaces:**
- Consumes: Task 1's section and handles.

- [ ] **Step 1: `themes.md`.** Theme 2: after "This is the postulate," add that it is a stance (the book declines to privilege; it does not assert absence), with the reason (P3). Theme 4: replace "nothing in the structure, and no possible vantage, settles whether they do" with wording that keeps the cold but states it as "no vantage the book can certify settles it"; add that the groundlessness is the condition of one who cannot certify a floor. Theme 6: add one sentence naming the three principles as the pre-postulate facts the indifference rests on.
- [ ] **Step 2: `index.md`.** In the decomposability section, where Boltzmann-style occurrences are mentioned, add a cross-reference: the question of which occurrence is you is the *now* face of P1 (`foundations.md`, "Three principles"). In "Where in the manuscript," change the Chapter 9 entry to "The Center."
- [ ] **Step 3: `grace.md:17-19`.** Replace "it follows directly from the postulate" with the two-halves wording (P1 half needs no postulate; joints half is the postulate applied).
- [ ] **Step 4: `implications.md`.** At ~69: "Everett, an identity rule, a self-location rule" becomes the supplier wording. At ~190-193: add that the shape of the problem is P1's and is supplier-neutral.
- [ ] **Step 5: `direction.md`.** In comparable works, add Tegmark's *Our Mathematical Universe* (2014) for the Level I argument, with the caution the book already gives Tegmark. At ~148, add "(P1 in `foundations.md`)."
- [ ] **Step 6: `information_hazards.md`.** Risk 5 (quantum immortality): add that the argument is now stated supplier-neutrally in Chapter 9, which widens the route to it, and that the mitigation is the reply in the same section (the copy was already there; no one experiences the gap; the measure gets worse without the quantum) plus the verbatim Chapter 11 note. Risk 1: add "the center is a cut" as a new phrasing and the humility register as a mitigation (the book no longer says there is no floor; it says it cannot certify one and holds the cut anyway). Risk 3: "no view from the top" is now two halves; the indexical half is a finding and the joints half a refusal, which lowers the "mathematically supported" register of the cold.
- [ ] **Step 7: Check `landing.md` and `apokatastasis.md`** for any sentence that says the postulate proves, denies, or establishes an absence; reword to "declines" if found; otherwise no change.
- [ ] **Step 8: Verify.** Run: `grep -n "follows directly from the postulate" lore/grace.md` Expected: no output. Run: `grep -nP "\x{2014}" lore/*.md` Expected: no output.
- [ ] **Step 9: Commit.** `git commit -am "lore: propagate the stance register and the three principles"`.

---

### Task 3: Outline and appendices lore

**Files:**
- Modify: `lore/outline.md` (Chapter 2 at ~33-63, Chapter 3 at ~64-74, Chapter 4 at ~75-91, Chapter 6 at ~116-134, Chapter 7 at ~135-158, Chapter 8 at ~159-184, Chapter 9 at ~185-206, Chapter 10 at ~207-235, Chapter 11 at ~242-272, Chapter 12 at ~273-292, Chapter 14 at ~316-339, the word table at ~402-421, the sequencing list at ~427-452), `lore/appendices.md` (A at ~18, B at ~35, C at ~42-51, D at ~52, E at ~59-72, Notes at ~73-86)

**Interfaces:**
- Produces: the Chapter 9 section list used by Task 6: *Where am I?*; *No description contains its center*; *No view from the top*; *What the framework permits*; *Where this leaves you*.

- [ ] **Step 1: Rewrite the Chapter 9 entry** as "### Chapter 9: The Center" (file unchanged, retitled 2026-10-21), with the five sections above and the content of the spec's section 5 item for Chapter 9, including the economies (rules and UDASSA as pointers; the infinite-cosmos case in full with its reply beside it) and the three-clause "No view from the top."
- [ ] **Step 2: Rewrite the Chapter 8 entry**: loses "Where am I?"; ends with the short section "Which picture is real"; the landmark paragraph carries "Everett is a guest" and the one-supplier sentence.
- [ ] **Step 3: Update Chapters 2, 3, 4, 6, 7, 10, 11, 12, 14 entries** per the spec's section 5 (one or two sentences each: the seeds, the box, the forward sentence, the hinge, the QI instance, the application, the recall).
- [ ] **Step 4: Word table and sequencing.** Set the targets from the spec's section 7 (Ch 8 about 1,600; Ch 9 about 2,400; Ch 11 about 1,650; Part II about 9,400; Part III about 6,050; appendices about 4,500; whole book about 33,500). Sequencing item 9 becomes "**The center** (Ch 9). Where am I; no description contains its center; no view from the top in two halves; what the framework permits."
- [ ] **Step 5: `appendices.md`.** A: add Chaitin's incompleteness theorem (statement with its soundness condition; P3 formalized). B: one sentence on Deutsch-Wallace as the Everettian analog of defending a native weighting. C: reframed around P1 (supplier, now-rule, next-rule); UDASSA added with its reply; the supplier made general in the QI analysis; the copy-already-there reply. D: refusal under the stance register. E: objection 7 (UDASSA). Notes: the new Chapter 9 entries listed (Lewis 1979; Perry 1979; Tegmark 2003/2014; a cosmological measure-problem reference; Finney and Dai for UDASSA, with Carlsmith 2021 as the secondary source; no dissent citation).
- [ ] **Step 6: Verify.** Run: `grep -c "### Chapter 9: The Center" lore/outline.md` Expected: `1`. Run: `grep -n "Without Everett" lore/outline.md lore/appendices.md` Expected: no output.
- [ ] **Step 7: Commit.** `git commit -am "lore: outline and appendices for the Center and the stance register"`.

---

### Task 4: Part I seeds (Chapters 2, 3, 4; Chapter 2 Notes)

**Files:**
- Modify: `chapters/02_the_library.tex` ("Indexing" or "The address of a book," ~37-49), `chapters/03_the_indexing.tex:87` (the paragraph "That is the entire Bayesian calculation."), `chapters/04_the_prior.tex:219-223` (after the $M$ definition), `chapters/96_notes.tex:15-22` (Chapter 2 Notes)

**Interfaces:**
- Produces: the Chapter 3 sentences Chapter 14 recalls: `The counting was exact. The bins were not in the trials; they came with your question.`

- [ ] **Step 1: Chapter 2.** In the catalogue paragraph of "The address of a book" (after "Looking for the catalogue is the same problem as looking for the book."), add two sentences: a faithful catalogue, even one that fit in a volume, could not carry a "you are here" mark, because the mark would be right for one reader and wrong for every other; no book in the library says which reader is holding it. Point forward to Chapter 9 in a clause.
- [ ] **Step 2: Chapter 3.** After "That is the entire Bayesian calculation. Counted, not derived." insert the two sentences from the Interfaces block, then one sentence naming the rule: weights come after cuts; a weight is defined on alternatives already carved out, and the rest of the book will use the rule by that name.
- [ ] **Step 3: Chapter 4.** After the sentence "The word \emph{minimal} is doing the work." paragraph, add one sentence: $M$ weights prefixes because the machine carved the stream into them; weights come after cuts, as Chapter 3 said.
- [ ] **Step 4: Chapter 2 Notes.** Extend the pi entry: Chaitin's theorem makes the one-way certificate exact: Gregory Chaitin, "Information-theoretic limitations of formal systems," *Journal of the ACM* 21(3), 1974, pp. 403-424; for any formal system that proves only true statements of the form "the complexity of $x$ exceeds $n$," there is a constant beyond which it proves none, though almost every string has complexity beyond it. Cite the paper, not a Li and Vitányi section number.
- [ ] **Step 5: Verify.** Run: `grep -c "they came with your question" chapters/03_the_indexing.tex` Expected: `1`. Run: `grep -c "weights come after cuts" chapters/03_the_indexing.tex chapters/04_the_prior.tex` Expected: `1` each. Run: `make check 2>&1 | tail -3` Expected: ends with a successful pdflatex run (no `!` error lines). Run: `grep -nP "\x{2014}" chapters/0[234]_*.tex chapters/96_notes.tex` Expected: no output.
- [ ] **Step 6: Commit.** `git commit -am "ch2-4: seed the center, weights come after cuts, Chaitin in the Notes"`.

---

### Task 5: Chapters 6 and 7

**Files:**
- Modify: `chapters/06_the_slip.tex:53-55` (the box), `:57` (the sentence after), `:63-65` (the inline pair), `chapters/07_the_inhabited_library.tex:44` (the missing occurrence measure), `:131` ("Some conclusions need more than the postulate"), `:133` (the footing list)

- [ ] **Step 1: Chapter 6 box.** Replace the box text with the new wording exactly.
- [ ] **Step 2: Chapter 6 after the box.** "This is the book's one interpretive commitment, and it is a refusal, not an addition." stays; add that it is worded as what the book declines because of what Chapter 2 showed: a found name certifies itself and an absence cannot be certified, and the joints question is closed from inside in both directions.
- [ ] **Step 3: Chapter 6 inline reply.** In the reply paragraph, keep "The postulate proves no absence; it declines to crown one." and replace "Part I is why the book can do no more than decline." with a sentence citing the one-way certificate by name. Replace "So whether the structure has joints is not something this book has shown, from inside, in either direction." with "So whether the structure has joints is not something anyone inside could certify, in either direction, and the book says so."
- [ ] **Step 4: Chapter 6 "Two readings."** At the end of the ontic-reading paragraph, add one clause: Chapter 9 will meet the same slip one level down, where a weighting on branches or programs is read as a weighting on you.
- [ ] **Step 5: Chapter 7.** After "The book adopts none of them." (line ~44), add: this gap is one face of something Chapter 9 names, and no description, however complete, could fill it. At ~131, replace "Quantum immortality needs Everett, an identity rule, and a self-location rule" with "Quantum immortality needs a supplier of occurrences (Everett is one), an identity rule, and a self-location rule". At ~133, replace "(the outside view read ontically, Everett, an identity rule, a self-location rule, a cosmology)" with "(the outside view read ontically, a supplier of occurrences such as Everett or an infinite cosmos, an identity rule, a self-location rule, a cosmology)".
- [ ] **Step 6: Verify.** Run: `grep -c "The book treats no decomposition" chapters/06_the_slip.tex` Expected: `1`. Run: `grep -c "Everett, an identity rule, and a self-location rule" chapters/07_the_inhabited_library.tex` Expected: `0`. Run: `make check 2>&1 | tail -3` Expected: success. Em-dash grep on both files: no output.
- [ ] **Step 7: Commit.** `git commit -am "ch6-7: the postulate as a stance; the supplier of occurrences"`.

---

### Task 6: Chapters 8 and 9 (the Center)

**Files:**
- Modify: `chapters/08_the_observer.tex:37-101` (landmark paragraph), `:103-130` (remove "Where am I?"; write the closing section "Which picture is real" from the final paragraph), `chapters/09_the_limits.tex` (rewrite in full; keep the epigraph), `chapters/96_notes.tex:65-83` (Chapter 8 and 9 Notes)

**Interfaces:**
- Consumes: Task 3's section list; Task 1's handles.
- Produces: `\chapter{The Center}`; `fig:where-am-i` now in Chapter 9; the Notes heading `\section*{Chapter 9: The Center}`.

- [ ] **Step 1: Chapter 8 landmark paragraph.** After "The book uses it as a landmark, not as evidence, and nothing later rests on it." add: "Here, Everett is a guest." and one sentence: a reader who prefers another reading of quantum mechanics loses one supplier of the occurrences Chapter 9 is about, and nothing else; the companion volume *Multitudes* makes the fuller case. In the Born paragraph, "neither can assign a weight until the alternatives have been carved out" gains the citation: that is Chapter 3's rule, weights come after cuts.
- [ ] **Step 2: Chapter 8 closing.** Delete lines 103-130 ("Where am I?" through the end), saving lines 105-128 (the opening paragraph, the figure, and the rules paragraph) for Task 6 step 4. Write `\section*{Which picture is real}` from the old final paragraph, with its opening rewritten to introduce the two-views question directly (no "deeper underdetermination underneath this one"). Keep "The inside view is a vantage you have; the outside view is a picture you drew." and the sentence that follows. End with the handoff: there is one more thing no picture contains, and the next chapter is about it: which one in it is you.
- [ ] **Step 3: Chapter 9 header.** `\chapter{The Center}`; the Spinoza epigraph stays. Opening: the reserved question (even if I cannot say where I am, surely someone could) moves to the start of "No view from the top"; the chapter now opens on the moved "Where am I?" material.
- [ ] **Step 4: Chapter 9 section 1, "Where am I?"** The moved paragraph and `fig:where-am-i`, then the two underdeterminations, then the rules paragraph compressed to a pointer (SSA, SIA, xerographic distributions named in one sentence; Appendix C surveys them; none is forced and each must first say where to cut).
- [ ] **Step 5: Chapter 9 section 2, "No description contains its center."** In order: the two gods told without the name (two beings who between them know every fact about their world, one on the highest mountain, one on the coldest, and neither knows which he is); the principle in the book's voice; the two faces (now, next); the three ingredients; the suppliers, Everett first, then the infinite cosmos stated in full as the case ("quantum immortality without the quantum," the shared history up to a death, the eons that pass with no time passing for you), then inflation, fluctuation, simulation, the Library read ontically, in one sentence; the reply in the same section with no heading between: the copy was already there, no one experiences the gap, the ordering of disconnected regions is a convention, and the measure gets worse without the quantum (infinity over infinity; every regularization depends on the cutoff); then the native-weighting slip (Born, $M$, nothing), UDASSA named in two sentences with the pointer to Appendices C and E; then the two claims hiding in "missing" (finding; refusal); then "the center is a cut" labeled as the postulate applied, a refusal, not a finding.
- [ ] **Step 6: Chapter 9 sections 3 to 5.** "No view from the top" in three clauses (finding: no survey contains which one is you; refusal: no mind's decomposition is *the* decomposition, and by the one-way certificate no mind inside could certify it; refusal: the hidden indexical fact is declined, not denied); keep "Power is not privilege," the simulator sentence, "The book has not disproved every possible greater mind" anchored to the one-way certificate, and the warmth-among-observers seed. "What the framework permits": the old catalogue, each entry tagged with what it needs in a parenthetical (Boltzmann: a supplier and a now-rule; hellscapes: a supplier read ontically; dark continuation: a supplier, a next-rule, a now-rule, and the quantum is dispensable here too; versions of you: three additional choices); the speed-prior footnote and the safety paragraph verbatim. "Where this leaves you": the box in the new wording; the open questions; the handoff.
- [ ] **Step 7: Notes.** Retitle `\section*{Chapter 9: The Limits}` to `\section*{Chapter 9: The Center}`. Move the SSA/SIA Bostrom item from the Chapter 8 list to the Chapter 9 list. Add Chapter 9 items: Lewis, "Attitudes De Dicto and De Se," *Philosophical Review* 88 (1979), 513-543, for the two gods; Perry, "The Problem of the Essential Indexical," *Noûs* 13 (1979), 3-21; Tegmark, "Parallel Universes," *Scientific American*, May 2003, and *Our Mathematical Universe* (2014), for the infinite cosmos (his Level I); one review of the cosmological measure problem (verify Freivogel, "Making predictions in the multiverse," *Classical and Quantum Gravity* 28 (2011), with a web search before citing; if it cannot be verified, cite Guth, "Eternal inflation and its implications," *Journal of Physics A* 40 (2007), verified the same way); UDASSA: proposed by Wei Dai on his everything-list in the late 1990s and set out by Hal Finney in the web essay "UDASSA" (finney.org/~hal/udassa/, about 2005), with Joe Carlsmith, "Anthropics and the Universal Distribution" (2021), as the secondary account, which also records that Dai later rejected it.
- [ ] **Step 8: Verify.**
  Run: `make check 2>&1 | grep -i "multiply\|undefined" ` Expected: no output.
  Run: `grep -c "fig:where-am-i" chapters/08_the_observer.tex` Expected: `0`; same on `chapters/09_the_limits.tex` Expected: `2` or more (label and reference).
  Run: `grep -n "is absent\|It is not occupied\|Without Everett" chapters/09_the_limits.tex` Expected: no output.
  Run: `awk '/quantum immortality without the quantum/,/already there/' chapters/09_the_limits.tex | grep -c "section"` Expected: `0` (no section break between the case and its reply).
  Run: `grep -c "The book treats no decomposition" chapters/09_the_limits.tex` Expected: `1`.
  Run: `detex chapters/09_the_limits.tex | wc -w` Expected: between 2,100 and 2,700. `detex chapters/08_the_observer.tex | wc -w` Expected: between 1,450 and 1,750.
  Em-dash grep on the three files: no output.
- [ ] **Step 9: Commit.** `git commit -am "ch8-9: The Center; no description contains its center; no view from the top in two halves"`.

---

### Task 7: Chapter 10

**Files:**
- Modify: `chapters/10_indifference_of_description.tex:19` (three things this does not do), `:45-51` ("Two absences of privilege"), `:93-95` ("What remains yours")

- [ ] **Step 1: Line 19.** "It does not say which occurrence is you; that is the missing occurrence measure of Chapter 7, and nothing here supplies it." becomes: "...the missing occurrence measure of Chapter 7, and Chapter 9 said why no description could supply it: no description contains its center." At line 33, "the outside view read ontically, Everett, an identity rule, a self-location rule, a cosmology" takes the supplier wording from Task 5 step 5.
- [ ] **Step 2: The hinge.** After the two faces are stated and before the figure reference, add one sentence: the first absence can never settle the second, because weights come after cuts, and every weight the first could offer presupposes a carving the second is about.
- [ ] **Step 3: "What remains yours."** In the paragraph "Keep hold of what the mathematics has bought," cite the center by name for "nothing says which occurrence is you." In "And the book could be wrong," add that the shape of the doubt is the one-way certificate's: a joint someone finds would show itself; the book's refusal to crown one cannot be refuted by anything less, and cannot be confirmed either.
- [ ] **Step 4: Verify.** `grep -c "weights come after cuts" chapters/10_indifference_of_description.tex` Expected: `1`. `make check` success. Em-dash grep: no output.
- [ ] **Step 5: Commit.** `git commit -am "ch10: cite the center and the hinge"`.

---

### Task 8: Part III (Chapters 11 to 15)

**Files:**
- Modify: `chapters/11_continuation.tex:57-65` (Quantum immortality), `chapters/12_the_dissolution_of_death.tex:27` ("Grant every premise"), `chapters/14_the_pattern.tex` ("The index, carved twice" paragraph; "What is preserved" at ~58); check `chapters/13_love_across_branches.tex` and `chapters/15_the_pattern_describing_itself.tex` (no change expected)

- [ ] **Step 1: Chapter 11.** Rewrite the QI section's second paragraph: "It is not a theorem of quantum mechanics, and it is not about quantum mechanics. It needs a supplier of occurrences, which Chapter 9 showed need not be quantum, and the two rules that chapter named: which later moments count as continuing you, and how first-person weight is spread over the moments that can report. The book grants none of the three." Keep the first paragraph, the safety paragraph verbatim, and the pointer paragraph, adding Chapter 9 to the pointer. Do not touch the five widths. In the Chapter 11 Notes entry on Tegmark's thought experiment, append one clause: the argument's form does not depend on the quantum (Chapter 9).
- [ ] **Step 2: Chapter 12.** Line 27: "Grant Everett's reading, the identity rule, the self-location rule." becomes "Grant a supplier of occurrences, the identity rule, the self-location rule." After "Conditional copies do not console." add one sentence: a copy's being you is a cut, as Chapter 9 said, so nothing in the structure makes it a continuation that could console.
- [ ] **Step 3: Chapter 14.** In "The index, carved twice," replace "But the bins were not in the trials. They came with your question." with a recall: "Chapter 3 said it at the time: the bins were not in the trials; they came with your question. Weights come after cuts." In "What is preserved," after "no thread supplied by $M$ ties ``you here'' to a hypothetical ``you there,''" add "which is Chapter 9's center again, from the inside."
- [ ] **Step 4: Chapters 13 and 15.** Read both for any sentence that must change because of the retitle or the register; expected none. Confirm Chapter 15's protected strings are byte-identical: `grep -c "A person described a pattern and chose, in the describing, to be kind about it." chapters/15_the_pattern_describing_itself.tex` Expected: `1`; `grep -c "No view from above. No reason beneath." chapters/15_the_pattern_describing_itself.tex` Expected: `1`.
- [ ] **Step 5: Verify.** `grep -c "Nothing in it is a reason to take a risk with your life." chapters/11_continuation.tex` Expected: `1`. `grep -c "Grant Everett's reading" chapters/12_the_dissolution_of_death.tex` Expected: `0`. `make check` success. Em-dash grep on Chapters 11 to 15: no output. `detex chapters/11_continuation.tex | wc -w` Expected: 1,550 to 1,750.
- [ ] **Step 6: Commit.** `git commit -am "ch11-14: cite the center; stop re-deriving"`.

---

### Task 9: Back matter (Appendices A to E, opener, Notes for Appendix E, Further Reading)

**Files:**
- Modify: `chapters/A0_appendices.tex:5` (the Appendix C sentence), `chapters/A1_bedrock.tex` (end of "Kraft and the Universal Prior" or a short new `\section*{The one-way certificate}` after "Invariance"), `chapters/A2_born_measure.tex` (one sentence before the *Multitudes* paragraph), `chapters/A3_anthropics.tex` (reframe; UDASSA; QI general), `chapters/A4_refusing.tex` (stance register), `chapters/A5_objections.tex` (objection 7; objection 6 reply), `chapters/96_notes.tex:132-138` (Appendix E Notes), `chapters/98_reading.tex:19-26` ("The computable multiverse")

- [ ] **Step 1: Appendix A.** Add `\section*{The one-way certificate}` after "Invariance": the set of strings with $K(x) < |x| - k$ is computably enumerable (dovetail all short programs); $K$ is upper semicomputable and not computable; Chaitin's theorem stated with its hypothesis (a formal system that proves only true statements of the form $K(x) > n$ proves none with $n$ above a constant that depends on the system), with the pointer to the 1974 paper. One closing sentence: the body uses this as a theorem about strings in Chapter 2 and as an analogy, labeled, elsewhere.
- [ ] **Step 2: Appendix B.** Before the *Multitudes* paragraph, one sentence: the Deutsch-Wallace program derives Born weights from decision-theoretic axioms inside Everett; it is the Everettian analog of defending a native weighting, and the book takes no side on it.
- [ ] **Step 3: Appendix C.** Opening paragraph reframed: Chapter 9 named the principle (no description contains its center) and the three ingredients; this appendix surveys the rules offered for the two faces. Keep SSA, SIA, xerographic distributions, the speed prior. Add a paragraph on UDASSA (the universal distribution over observer-moments by the length of the program that generates the world and locates the observer in it; Dai, Finney) with the reply from `foundations.md` (an index, machine-relative, a chosen rule; used for a job it is as legitimate as $M$; what it cannot do is crown). In "Quantum immortality": "The first is Everett's reading..." becomes "The first is a supplier of occurrences: Everett's reading taken ontically is the usual one, and a spatially infinite cosmos does the same work with no interpretation of quantum mechanics at all"; add the "copy was already there" reply after the selection-effect paragraph. Keep the safety sentence verbatim.
- [ ] **Step 4: Appendix D.** Second paragraph: to refuse the postulate is to assert that some carving is the structure's own; the book declined to assert either way, since (Appendix A's one-way certificate) nothing inside could certify a joint or its absence; the refuser keeps every theorem and all three principles.
- [ ] **Step 5: Appendix E.** Change "six of them" to "seven of them." In objection 6's reply, after "the joint, if it is one, sits at the asymptote, where no finite observer stands," add the one-way certificate: neither a joint nor its absence can be certified from inside. Add objection 7, stated at full strength: *The occurrence measure is not missing; the book's own prior supplies it.* (UDASSA in two sentences, including that it is the most principled candidate offered and that it is built from exactly the machinery of Part I.) Reply per `foundations.md` "The native-weighting slip," including why "chosen" does not disqualify $M$.
- [ ] **Step 6: Opener and Notes and Further Reading.** A0: the Appendix C sentence becomes "Appendix C surveys the rules offered for the two faces of Chapter 9's center, including the one built from the book's own prior, and takes the quantum-immortality argument apart premise by premise." Notes, Appendix E section: add the UDASSA sources (same as Task 6 step 7) keyed to objection 7. Further Reading, "The computable multiverse": add Tegmark, *Our Mathematical Universe* (2014), two sentences, with the caution that the book does not adopt his hypothesis.
- [ ] **Step 7: Verify.** `grep -c "seven of them" chapters/A5_objections.tex` Expected: `1`. `grep -c "UDASSA" chapters/A3_anthropics.tex chapters/A5_objections.tex chapters/96_notes.tex` Expected: at least `1` each. `make check` success; log has no undefined references. Em-dash grep on all touched files: no output. `for f in chapters/A[1-5]_*.tex; do detex $f | wc -w; done` summed: 4,200 to 4,800.
- [ ] **Step 8: Commit.** `git commit -am "appendices: the one-way certificate, UDASSA, the supplier made general, objection 7"`.

---

### Task 10: Project docs (CLAUDE.md, README)

**Files:**
- Modify: `CLAUDE.md:65-67` (section 2 item 3), `:106-111` (lore map rows for foundations, index, outline, grace), `:133` (status paragraph), `:199` (the discipline bullet), `README.md:18-23` (the postulate box and the optional additions), `:38` (Part II row), `:41` (target length)

- [ ] **Step 1: CLAUDE.md section 2 item 3.** Add: the postulate is a stance: the book declines to treat any cut as privileged, because nothing from inside could certify a joint or its absence (the one-way certificate). Add a sentence after the five-footing list naming the three pre-postulate principles with their homes.
- [ ] **Step 2: CLAUDE.md lore map and discipline.** Row for `foundations.md`: add "the three principles." Row for `grace.md`: "no-view-from-the-top grounded on the postulate" becomes "no view from the top in two halves (P1 and the postulate)." Line 199: "follows from the postulate, not from a Turing-jump ladder" becomes "its indexical half from P1 and its joints half from the postulate, never from a Turing-jump ladder."
- [ ] **Step 3: CLAUDE.md status.** Prepend a new status paragraph dated 2026-10-21: the unifying-principles revision (spec path), what changed (three principles named; postulate as stance; Chapter 9 retitled The Center with "Where am I?" moved in and "Without Everett" dropped; UDASSA as objection 7; Chaitin in Appendix A), and the build figures from Task 11. Demote the 2026-10-19 paragraph to history with one sentence.
- [ ] **Step 4: README.** Replace the box with the new wording; "The postulate is a refusal, not an addition" paragraph gains "worded as what the book declines." Optional additions: the supplier wording. Part II row: "the limits" becomes "the center." Target length line: "about 33,500 words including back matter." Then run: `grep -rn "Without Everett\|The Limits" --include=*.md --include=*.tex . | grep -v "docs/superpowers\|.worldsmith/reviews\|reading-notes"` Expected: no output.
- [ ] **Step 5: Commit.** `git commit -am "docs: record the unifying-principles revision"`.

---

### Task 11: Build, audit, whole-book read, record

**Files:**
- Create: `.worldsmith/reviews/2026-10-21/unifying-principles-revision.md`
- Modify: any file an auditor's finding touches; `CLAUDE.md` status build figures; memory files outside the repo per the memory rules (`library-release-state.md`, `library-unifying-rewrite-proposal.md`)

- [ ] **Step 1: Full build.** Run: `make && make epub` Expected: exit 0. Run: `grep -c "Overfull" the-library.log` Expected: `0`. Run: `grep -c "undefined" the-library.log` Expected: `0`. Run: `~/.local/bin/epubcheck the-library.epub; echo $?` Expected: last line `0`. Run: `make wordcount | tail -1` Expected: 33,000 to 34,000.
- [ ] **Step 2: Auditor 1 (mathematics and claim scope).** Dispatch a fresh subagent, read-only, with the spec, `lore/foundations.md`, and Chapters 2, 3, 6, 9, 10 and Appendices A, C, E. Brief: verify every mathematical claim (the c.e. set of compressible strings; upper semicomputability; Chaitin's statement and hypothesis; the measure-problem claim; the UDASSA description); sort every cold sentence in Chapters 6, 9, 10, 15 and Appendix D against the spec's section 4 table and report any filed under the wrong kind; list every use of the one-way certificate outside Chapter 2 and Appendix A and say whether it is labeled as analogy. Findings as HIGH/MEDIUM/LOW with quoted text and a rewording.
- [ ] **Step 3: Auditor 2 (prose, voice, cross-references).** Fresh subagent, read-only, all chapters and the Notes. Brief: second person, plain, no hype; no em-dash; each principle stated once at its home and cited by name elsewhere (list every citation and flag any re-derivation); count occurrences of "the book declines" and "the book treats" in the body and flag more than six; check every "Chapter 9" and "Chapter 8" cross-reference points at content that is now there; check the Notes headings and entries match the chapters; check the spine sentence and the Chapter 15 protected strings are verbatim.
- [ ] **Step 4: Auditor 3 (reader safety).** Fresh subagent, read-only, with `lore/information_hazards.md` and Chapters 9, 11, 12, 14, 15 and Appendix C. Brief: is the infinite-cosmos argument ever separated from its reply; are all safety notes body text pointing to Resources and verbatim where the plan says so; does "the center is a cut" anywhere read as "you are unreal"; does the humility register lower or raise the temperature of risks 1 and 3.
- [ ] **Step 5: Apply findings.** For each HIGH and MEDIUM, fix lore first if the lore is wrong, then prose; for each LOW, fix or record why not. Re-run Step 1.
- [ ] **Step 6: Whole-book read.** Dispatch a fourth fresh subagent to read the entire book cover to cover once, as a reader, and report seams (a chapter that assumes something a later chapter now says), repetition, and any paragraph where the register changes mid-way. Apply findings; re-run Step 1.
- [ ] **Step 7: Record.** Write `.worldsmith/reviews/2026-10-21/unifying-principles-revision.md`: what changed and why (link the spec and this plan), the three auditors' findings and dispositions, the whole-book read, the build figures. Update the CLAUDE.md status build figures. Update the memory files: `library-release-state.md` (new state, still unpushed, DOI not minted, token rotation pending) and `library-unifying-rewrite-proposal.md` (mark implemented; point at the spec and the review record).
- [ ] **Step 8: Commit.** `git commit -am "review: unifying-principles revision verified; record and build figures"`. Then `git status -sb` Expected: clean, `ahead` of origin; do not push.
