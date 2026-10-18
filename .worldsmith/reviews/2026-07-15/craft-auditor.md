# Craft and Page-Experience Audit

## Scope and sources

This read-only lens covered Chapters 7 through 10, Appendices A through E and their opener, Notes, Resources, governing lore, the current diff, the built PDF and log, and the master include order. It checked prose movement, pedagogy, figures, page flow, grammar, house style, and repeated-word patterns.

## Summary

The Born-measure revisions are clearer and more disciplined. Remaining craft work is local: one displaced figure, several header-only transition pages, two misleading appendix-introduction sentences, one schematic-caption mismatch, and safety-sensitive wording that deserves a literal reread.

**Finding counts:** BLOCKING: 0 | HIGH: 0 | MEDIUM: 6 | LOW: 1

## Pattern audit

The bundled counter was run against all `chapters/*.tex`. Full-manuscript counts were: `something` 19, `just` 12, `really` 5, `very` 9, `actually` 9, `simply` 4, `quite` 2, and `merely` 4. In scope, most `something` instances belong to Chapter 7's something-versus-nothing argument, and most `merely` instances distinguish reachability from existence. Two apparent adverbial dialogue-tag matches are false positives. No automatic prose finding is warranted.

## Strengths

- `chapters/08_the_observer.tex:64-68` and `chapters/10_indifference_of_description.tex:33-41` distinguish the Born and universal measures without claiming a derivation.
- `chapters/A1_bedrock.tex:52-62` now moves cleanly from the displayed prediction bound to its plain-language scope, and the display fits the page.
- `chapters/09_the_limits.tex:95-99` separates permitted configurations, the reader's address, and the book's chosen response.
- `chapters/97_resources.tex:5-13` is direct, non-shaming, and visually clean.
- The prose remains free of generic filler and retains the manuscript's plain second-person address.

## MEDIUM

### Figure 10.1 crosses its section boundary

- **Location:** `chapters/10_indifference_of_description.tex:43-74`; placement warning in `the-library.log`.
- **Evidence:** The source introduces and defines the doubled-indifference figure, then begins `The deeper indifference`. In the PDF, the new heading lands before the figure and is separated from its first paragraph by that figure.
- **Impact:** The hierarchy suggests that the diagram belongs to the new section rather than the preceding discussion.
- **Recommendation:** Add a float barrier before the section and inspect the affected pages.
- **Confidence:** High.

### Blank transition pages retain running heads and folios

- **Location:** appendix transition pages produced by `the-library.tex:193-205`.
- **Evidence:** Print pages 94, 96, 102, and 112 contain only a running head and folio.
- **Impact:** Functional separators look like accidentally emptied content pages.
- **Recommendation:** Give intentionally blank pages an empty page style and verify the include or chapter-clearing interaction visually.
- **Confidence:** High on the output, medium on the exact TeX cause.

### The appendix preface misdirects readers

- **Location:** `chapters/A0_appendices.tex:9`; actual order in `the-library.tex:200-209`.
- **Evidence:** It says Notes wait "at the very back, after everything else," but Notes are the first backmatter item.
- **Recommendation:** Say that Notes follow the appendices, before the remaining backmatter.
- **Confidence:** High.

### Safety-sensitive phrasing can misfire

- **Locations:** `chapters/09_the_limits.tex:97`; `chapters/97_resources.tex:17`.
- **Evidence:** "Decline to live inside it" appears beside suicide-related material. The Resources close assumes loved relationships and makes prospective loss carry the intervention.
- **Impact:** Literal or distressed readers may hear unintended meanings, and the audience assumption may exclude the reader most in need of the page.
- **Recommendation:** Use "step away from this section" or "decline to dwell on it." Broaden the Resources appeal beyond a perceived network of loved ones and keep immediate support foregrounded.
- **Confidence:** High on the ambiguity, medium on reader response.

### Figure 7.1 visually implies counting rather than measure

- **Location:** `chapters/07_the_inhabited_library.tex:29-50`.
- **Evidence:** Equal grid cells and identical stars accompany a caption saying that the universal prior gives proportions.
- **Impact:** The schematic can suggest a flat cardinality measure.
- **Recommendation:** Encode unequal weights or label the image explicitly as candidate membership rather than measure.
- **Confidence:** Medium-high.

### The appendix opener compresses away the formal hierarchy

- **Location:** `chapters/A0_appendices.tex:5`.
- **Evidence:** It describes the chapters as "settled mathematics ... then followed wherever it led," omitting the postulate between mathematics and consequences.
- **Impact:** The doorway to the formal supplement weakens the book's central epistemic distinction.
- **Recommendation:** Name the sequence: settled mathematics, the labeled postulate, then the consequences.
- **Confidence:** High.

## LOW

- `chapters/08_the_observer.tex:113` says "even as approximation." Use "as an approximation" or "even approximately."

## Verified clean and limitations

The current PDF has 138 pages, no overfull boxes, no unresolved references, and no duplicate-label warnings. Appendix A's revised display fits the page, TOC entries are present, the Resources URL fits, and no em dashes or raw Unicode mathematics occur in rendered scoped prose. The lens inspected the current PDF and log rather than rebuilding them, did not run `epubcheck`, and correlated source with extracted page layout rather than rasterizing every page.

## Targeted cross-verification addendum

After the independent pass, this lens received the consistency auditor's seven BLOCKING or HIGH claims for a second read. All seven diagnoses were verified. From a pedagogy and release-risk perspective:

- **BLOCKING:** the held-open ontology versus categorical realism; Kraft presented as forcing the chosen prior; and use of program weight as an undefined observer-instance measure.
- **HIGH:** exact-output $m$ versus sequential $M$ conflation; dominance inflated into blanket superiority; the Turing-jump ladder presented as computable agents inside the Library; and the under-specified Cox uniqueness claim.

The deciding pedagogical fact is not notation alone. Each claim is presented as settled bedrock and carries a later conclusion, so a reader cannot repair it merely by reading the surrounding caveats. The consistency report supplies the full locations and recommendations.
