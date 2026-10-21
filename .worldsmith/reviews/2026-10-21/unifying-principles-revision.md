# The unifying-principles revision (2026-10-21)

**Spec:** `docs/superpowers/specs/2026-10-21-unifying-principles-design.md`
**Plan:** `docs/superpowers/plans/2026-10-21-unifying-principles.md`
**Branch:** `unifying-principles`, cut from `main` at 59397f3.

## What changed and why

The author observed, while reading the Everett chapter, that a spatially infinite cosmos
supplies duplicates of a person, including ones who share a history up to a death and then
survive, so "quantum immortality" needs no quantum mechanics. The argument's force was never
in the physics; it is in two rules the book had always declined, and those rules are instances
of a principle the book had never stated. The revision names three such principles once each
and cites them by name afterward, moves the postulate into the register of epistemic humility
(the author's decision: "we take the epistemically humble approach in general"), and rebuilds
Chapter 9 around the first principle.

- **P1, no description contains its center** (Chapter 9, retitled "The Center"; file
  unchanged). "Where am I?" moved in from Chapter 8; the two gods told without Lewis's name;
  the two faces (now, next) and the three ingredients (a supplier of occurrences, a rule for
  now, a rule for next); supplier-neutrality with the infinite cosmos as the author's case and
  its reply beside it (the copy was already there; no one experiences the gap; the measure does
  not improve without the quantum); the native-weighting slip, with UDASSA named; "the center
  is a cut" labeled as the postulate applied, a refusal; "No view from the top" split into a
  finding (no survey contains which one is you) and a refusal (no carving crowned); "Without
  Everett" dropped (one sentence in Chapter 8's landmark paragraph replaces it).
- **P2, weights come after cuts** (Chapter 3, at the coin), cited in Chapters 4, 8, 9, 10, 14.
- **P3, a found name certifies itself; an absence cannot be certified**, the one-way certificate
  (Chapter 2, named with a "by name" sentence; Chaitin's theorem in Appendix A), used by labeled
  analogy in Chapters 6, 9, 10 and Appendices D and E.
- **The postulate as a stance.** Both boxes and the README read "The book treats no
  decomposition of the describable totality as view-independently correct..." The lore sorts
  every cold sentence into finding or refusal (`foundations.md`, "Register").
- **Back matter.** Appendix A gains "The one-way certificate"; Appendix B names Deutsch-Wallace;
  Appendix C is reframed around P1 and adds UDASSA; Appendix D is reworded for the stance;
  Appendix E gains objection 7 (UDASSA). Notes: Lewis 1979, Perry 1979, Quine 1969, Tegmark
  2003/2014, Freivogel 2011 (arXiv:1105.0244), Dai/Finney/Carlsmith, Chaitin 1974.
- **Part III** cites Chapter 9 instead of re-deriving (Chapters 11, 12, 14).

## Verification

Build after the fix passes and the final review: `make` and `make epub` exit 0; 160 pages; 0 overfull
boxes; 0 undefined references; `epubcheck` exit 0; `make wordcount` 35167 (body 27841;
appendices 5049). The spec's figure was about 33,500; on 2026-10-21 the author set no length target.

**Auditor 1 (mathematics and claim scope).** One HIGH: Chapter 9 and the lore said an infinite
cosmos supplies "nothing at all" and that its survivor ratio is cutoff-dependent; that is true
of eternal inflation and fluctuation across an endless future, not of a spatially infinite
universe at a time, where frequencies are well defined (Tegmark: "mild and treatable" at Level
I). Fixed in the lore first, then Chapter 9 (frequencies are one more native weighting read as
first-person chance, which strengthens the argument). MEDIUMs applied: refusals worded as
findings in Chapters 6, 9, 10 reworded; "denies" became "declines" in lore, Chapter 6, Appendix
E; the one-way certificate's uses labeled as analogy at first use per chapter, with the joints
question's two-way closure credited half to works-for-a-job and machine-relativity; Appendix A's
claim that the uses are labeled made true. LOWs applied: Chaitin statement (theorems listable
by a program), hypothesis (soundness; consistency with enough arithmetic), sketch (the program
holds this particular n); UDASSA described via the universal distribution and the coding
theorem, acronym per Finney, date "undated"; Quine for centered worlds; Lewis "each of whom";
Chapter 2's mark wording; Appendix B "Declining".

**Auditor 2 (prose, voice, cross-references).** Two HIGH: P3 had no "by name" sentence in
Chapter 2 (added; the paragraph split); Chapter 9's "No view from the top" second paragraph
reported the book's refusals six times (rewritten). MEDIUMs applied: hedge count in the body cut
from eight to three; "the book says so" tic removed; Chapter 6's reply rewritten; "spine
sentence" jargon removed; Appendix C's duplicate "copies were already there" reduced to a citing
sentence; Chapter 14's overloaded sentence split. LOWs applied: Note key case; Chapter 8's
"Chapter 6 promised" and a repeated clause; "the short form"; "Chapters 12 and 13"; Chapter
11's "usual form"; Chapter 12 merge; Chapter 3 sentence order; Appendix D wording; Appendix E's
self-approving sentence cut. Mechanical: no em-dash; the box identical in Chapter 6, Chapter 9,
README, lore; all cross-references to Chapters 3, 8, 9 resolve; protected strings verbatim.

**Auditor 3 (reader safety).** No HIGH. MEDIUMs applied: a Resources pointer added in Chapter 9
after the reply; "there is a you that spans the gap, and that is what is in question" reworded
so it cannot be read as doubt about the reader's existence; `information_hazards.md` scoped so
it no longer claims the Chapter 15 cadence changed register. LOWs applied: "carries the mark
that says which one in it is you"; "as the quantum version already did"; the argument paragraph
ends "neither is a fact the cosmology supplies." Confirmed: the argument and its reply are
adjacent with no heading between; all safety paragraphs are body text and byte-identical to
`main`; the second-person "you die here" is the plain statement the hazards rule allows.

**Whole-book reader.** Verdict: one book; Chapter 9 carries its weight; Part III lands.
Applied: Chapter 6's post-box paragraph that explained its own drafting choice cut to one
sentence, with the reasoning kept in the inline reply; Chapter 9's restatements of the
certificate and of "in either direction" reduced to citations, the declines/crowns cluster
thinned, the dense infinite-cosmos paragraph split at the measure, the now/next rules mapped to
Chapter 7's identity and self-location rules in one sentence, "exactly" dropped, "no signal can
pass between the regions," "taken at one time"; Chapter 8's triple deferral to Chapter 9 cut to
one; Chapter 10 licenses Part III's plain speech in one sentence ("read every such sentence as
the refusal it is") so the stance does not have to be repeated there; Chapter 11's and Appendix
C's repeated "quantum is dispensable" trimmed; Appendix C's UDASSA reply reduced to a pointer
to Appendix E.

## Deferred to the author

- **Length.** Resolved: the author set no length target (2026-10-21).
- **Chapter 9's closing box.** The reader found the re-pasted postulate box at the end of
  Chapter 9 scaffolding that deflates the chapter's last beat. The spec and lore require the
  recall; removing it is a design change.
- **Chapters 9 and 10 spend Chapter 15's coin.** "Care is what we provide" and the adequacy
  doubt are now announced in Chapter 9's close and Chapter 10's "What remains yours" (both
  pre-existing passages); the reader suggests trimming Chapter 9's two closing paragraphs to one
  and cutting Chapter 10's "the last chapter returns to that, and does not close it."
- **Pre-existing repetition** the reader counted: the two views re-defined at three chapter
  openings; "the book adopts none of them" eight times; "asked once, can be refused, keep the
  mathematics" six times; the computability aside in Chapter 9; Chapter 10's last long paragraph
  answering Appendix E's objection 4 inside the body; Chapter 13's opening hedge-stack.
- **Minor (addressed later the same day):** the Appendix E reply now notes that UDASSA is built
  from the exact-output relative of $M$; Deutsch and Wallace now have an Appendix B Notes
  section; the three word targets (CLAUDE.md, outline, appendices lore) were replaced by the
  author's no-target decision; the "by name" formula was varied in Chapters 2 and 3; Chapter
  9's opening names more than Everett; "the same analogy again" reads "as Chapter 6 used it";
  Appendix A says the Chaitin constant depends on the system; Chapter 6's reply gained its
  connective; the lore records Chapter 10's licensing sentence; Chapter 8's opening no longer
  re-defines the two views; Chapter 9's "You may refuse it" sentence was trimmed. Left as is,
  within policy: Chapter 14's "You are here." without a Resources pointer, and Chapter 9's
  second-person "you die here."
- **Decided with the author (evening):** the postulate box recall at the end of Chapter 9 was
  dropped (the commitment is named in prose, applied to the center); Chapter 10's clause "the
  last chapter returns to that, and does not close it" was cut; Chapter 9's care sentences stay
  as the book's refrain.
- **Still open for discussion with the author:** the computability aside in Chapter 9; Chapter 10's last long paragraph; Chapter 13's opening
  hedges; "the book adopts none" and "asked once, can be refused" as recurring formulas.

## Rulings made during execution

Recorded in the plan ledger; summarized in the final message to the author.
