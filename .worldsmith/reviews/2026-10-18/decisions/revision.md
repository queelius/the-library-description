# Revision Report (final-revise: author decisions)

**Date**: 2026-10-18
**Review source**: .worldsmith/reviews/2026-10-18/review.md
**Findings processed**: 2 total (0 auto-fixed, 2 user-decided, 0 deferred)

## Files Touched

- kdp/metadata.yaml
- chapters/99_about.tex

## Fixed (User-Decided)

### F-SELECT: KDP Select enrollment
- **Original finding**: kdp/metadata.yaml:21 set `kdp_select: true` (90-day Amazon digital exclusivity), which conflicts with the CC BY-NC-SA 4.0 license and the open Zenodo deposit.
- **User decision**: Do not enroll in Select.
- **Fix applied**:
  - Before: `kdp_select: true            # 90-day Amazon exclusivity -> Kindle Unlimited`
  - After: `kdp_select: false           # not enrolled: the book is CC BY-NC-SA 4.0 and openly deposited on Zenodo, which conflicts with Select's digital exclusivity`

### F-L19 (review L-19): author research description
- **Original finding**: chapters/99_about.tex:5 (and the matching kdp/metadata.yaml author_bio) described earlier research ("information retrieval and Bayesian statistics").
- **User decision**: Update to current research, identical wording in both places.
- **Fix applied** (both files):
  - Before: "His research is in information retrieval and Bayesian statistics, which is to say in indexing, and in the weighting of possibilities, which is to say in the subject of this book."
  - After: "His research is in artificial intelligence and machine learning, with Bayesian statistics underneath much of it, which is to say in prediction, and in the weighting of possibilities, which is to say in the subject of this book."
  - All other bio text unchanged in both files.

## Recorded with no text change

F-L30 (keep AI disclosure), F-KEYWORDS (keep), F-EPUB-SIZE (keep 300 dpi), F-CADENCE (keep "No view from above"), F-DEDICATION (keep), F-TITLES (keep both). F-M22 and F-EPIGRAPHS are left to the main session; epigraphs and Notes untouched.

## Verification

- `python3 -c "import yaml;yaml.safe_load(open('kdp/metadata.yaml'))"` succeeds; `kdp_select` parses as `False`.
- `make check` compiles cleanly (140 pages).
- No other file in the repo references `kdp_select` or the old research sentence.
- No em-dashes introduced.

## Propagation

None required. No lore doc records the author bio or the Select setting.

## Summary
- Findings resolved: 2 of 2
- New issues detected: 0

## Epigraph verification (main session, 2026-10-18)

Author chose "Verify and keep" (F-M22) and "Verify against the books" (F-EPIGRAPHS). Results:

| Epigraph | Source checked | Result |
|---|---|---|
| Ch 2, Borges, trans. Hurley | Scan of *Collected Fictions* (Penguin, 1998), p. 112 | Verbatim match; Notes now give p. 112 |
| Half-title, Borges, trans. Irby | Irby text credited "Translated by J. E. I." | Verbatim match ("equipped with precious volumes") |
| Ch 4, Solomonoff (1964) | Part I summary, *Information and Control* 7(1) | Faithful excerpt; Notes now give no. 1, p. 1 |
| Ch 12, Epicurus, trans. Hicks | Lexundria Hicks text, Letter to Menoeceus sec. 4 | Verbatim match |
| Ch 5, Hutter | Hutter's book and papers | Was a paraphrase, not a quotation. Author chose a replacement: verbatim from the abstract of Hutter, "On the Existence and Convergence of Computable Universal Priors" (ALT 2003, arXiv:cs/0305052). Notes entry rewritten to cite it. |

Irby's page number in *Labyrinths* was not confirmed and is not given.
