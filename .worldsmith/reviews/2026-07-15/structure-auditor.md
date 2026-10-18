# Structure and Pedagogy Audit

## Scope and sources

This read-only lens covered the current release-candidate changes in Chapters 7 through 10 and Resources, Appendices A through E, the marker-free Notes, the master include order, the built table of contents, and the governing outline and appendix lore. It treated the book as technical nonfiction: argument architecture, pedagogy, promises and payoffs, appendix function, and backmatter order replaced fiction-specific scene criteria.

## Summary

The appendix architecture is strong and proportional. It moves from formal bedrock through the Born seam and anthropic options to refusal and objections, which is the right sequence after the body has already landed its human argument. One central seam remains out of alignment: Appendix B closes with a stronger dismissal of the Born-rule question than the newly revised body permits.

**Finding counts:** BLOCKING: 0 | HIGH: 1 | MEDIUM: 1 | LOW: 1

## HIGH

### Appendix B turns relocation back into resolution

- **Location:** `chapters/A2_born_measure.tex:13`; compare `chapters/10_indifference_of_description.tex:33-35` and `lore/appendices.md:28-34`.
- **Evidence:** Appendix B calls the unexplained Born weighting "not a gap in the physics waiting on better theory." Chapter 10 now says, "The question is relocated, not solved. The Born rule keeps all of its empirical and mathematical work inside quantum theory."
- **Issue:** The appendix's final sentence is structurally the last and most formal statement of the seam. It currently overrides the more careful body language by declaring that no physical gap remains. That makes the supplement stronger than the argument it is meant to clarify and reintroduces the exact overclaim the current revisions removed.
- **Impact:** A technically attentive reader reaches the appendix for precision and instead receives a categorical conclusion the body has just disclaimed.
- **Recommendation:** Preserve the structural comparison while saying explicitly that it neither derives the rule nor removes any empirical or mathematical work within quantum theory. Limit the relocation claim to the demand for a further view-independent privilege outside that formal setting.
- **Confidence:** high.

## MEDIUM

### Refusing the postulate is presented as selecting one specific metaphysics

- **Location:** `chapters/A4_refusing.tex:7`.
- **Evidence:** "Refuse that step and you keep a single actual world ... and a self that is simply you."
- **Issue:** Rejecting "no cut is privileged" blocks the book's route from Part I into Parts II and III, but it does not logically force single-world realism or a metaphysically simple self. A reader could reject this postulate while accepting another plural or structural ontology.
- **Impact:** The appendix narrows an open philosophical fork into a binary choice, which weakens its stated promise to show what survives without arguing the reader into either side.
- **Recommendation:** Change "you keep" to "you may keep," and frame the dissolutions as no longer following from this book's premises rather than as disproved.
- **Confidence:** high.

## LOW

### Appendix opener misstates the Notes placement

- **Location:** `chapters/A0_appendices.tex:9`; compare `the-library.tex:201-207` and the built table of contents.
- **Evidence:** The opener says, "The Notes wait at the very back, after everything else." The Notes actually appear immediately after Appendix E, before Resources, Further Reading, About, and Also by.
- **Recommendation:** Say that the Notes follow the appendices, before the remaining backmatter.
- **Confidence:** high.

## Strengths

- The five-appendix sequence has a clear pedagogical gradient: formal support, conceptual seam, optional assumptions, refusal, then objections.
- Appendix A supplies depth without forcing formalism back into the body. The revised prediction bound now fits the page cleanly.
- The marker-free Notes preserve the body voice while still giving sources and precision by chapter.
- The table of contents presents Appendices, A through E, Notes, and the remaining backmatter in the intended hierarchy. The PDF remains 138 pages with resolved references and no overfull boxes.
- The Chapter 8 figure barrier now keeps the measure comparison with its argument, and the visual hierarchy remains intact.

## Verified clean

- Appendix inclusion order matches `lore/appendices.md`.
- Appendices remain supplemental rather than becoming a second argumentative ending.
- Cross-references from Notes and appendices resolve in the current build.
- No new appendix interrupts or weakens Chapter 15's closing.

## Limitations

This lens did not independently re-prove Appendix A's mathematics or fact-check external quotations. Those belong to the consistency lens. It inspected the rendered table of contents and the previously rendered affected pages, not every appendix page at full visual resolution.
