# Worldsmith Revision Record: *The Library*

**Date:** 2026-07-15  
**Source review:** [Release-gate review](review.md)  
**Disposition:** All BLOCKING, HIGH, MEDIUM, and LOW findings addressed; candidate ready for a fresh release review.

## Revision approach

The repair began in governing lore, then propagated through the manuscript, appendices, notes, resources, and superseded design documents. The revision preserves the book's companionate voice and overall architecture while separating mathematical results, modeling constructions, interpretive choices, and the book's single postulate.

## Finding dispositions

| Finding | Disposition and evidence |
|---|---|
| B1: ontology conflict | Held Picture A and Picture B open throughout `lore/foundations.md` and Chapters 6 through 15. Claims about realities, copies, and hellscapes are now conditional rather than asserted as consequences of the mathematics. |
| B2: Kraft overclaim | Rebuilt the argument in `lore/foundations.md`, Chapters 4, 5, 7, and 10, and Appendices A and E. Kraft establishes admissibility for prefix-code weights; fair program bits and a universal machine supply the chosen construction. |
| B3: undefined observer distribution | Limited $M$ to candidate programs and output prefixes. Chapters 7, 8, and 10 and Appendix C now state that observer self-location requires an additional reference class and distribution. Figures 7.1 and 10.1 visualize the distinction. |
| B4: crisis route | Replaced `chapters/97_resources.tex` with immediate-danger routing, a direct disclosure script, current service contacts, and unconditional, non-metaphysical language. |
| H1-H4: formal claims | Distinguished sequential $M$ from exact-output $m$; scoped dominance, convergence, and machine invariance; removed the computable Turing-jump ladder; and qualified Cox-style representation results. |
| H5-H6: quantum claims | Recast branching as an Everettian interpretation, narrowed decoherence claims, and kept the Born question explicitly relocated rather than solved. |
| Medium findings | Repaired Appendix D's false binary and the appendix opener; corrected Notes navigation; contained Figure 10.1 with `\FloatBarrier`; added empty styling to intentional blank pages; clarified Figure 7.1; softened safety-adjacent language; and named vulnerable interpretive commitments directly. |
| Low findings | Corrected the AIXI chronology, approximation grammar, and normative Born-weight wording. |

## Propagation

Canonical updates cover `lore/foundations.md`, `lore/information_hazards.md`, and the related direction, outline, theme, appendix, implication, grace, landing, index, and apokatastasis files. Manuscript propagation covers the preface and note, Chapters 3 through 15, Appendices A through E and their opener, Notes, Resources, and Further Reading. `CLAUDE.md` and two historical design specifications now mark the superseded claims explicitly.

## Validation

- `git diff --check`: passed.
- `latexmk -g -pdf ... the-library.tex`: passed; 134-page PDF, resolved references, no missing destinations, undefined references, or overfull boxes.
- Visual inspection: Figures 7.1 and 10.1, Resources, and appendix transition blanks passed at 144 dpi.
- `make epub`: passed.
- `unzip -t the-library.epub`: passed for every archive member.
- EPUB structural check: 39 XML documents parsed; all 38 manifest targets and all spine references resolved.
- Source scans: no Unicode em dashes and no unqualified recurrences of the superseded Kraft, ontology, observer-measure, or Turing-ladder claims.

`epubcheck` is not installed in the environment, so standards-level EPUB validation remains for the next release gate. The crisis page follows the authoritative routing cited in the source review; specialist prevention-copy review remains advisable before publication.
