# Consistency Auditor (Conceptual / Factual Fidelity)

**Book**: *The Library: The Indifference of Description* (nonfiction, Vol. III of the Indifference suite)
**Scope**: Full manuscript, 15 chapters + frontmatter + backmatter
**Lens re-pointed for nonfiction**: prose-vs-lore fidelity, inter-chapter contradictions, math-claim correctness and non-over-claiming, term consistency, relic check. No character/scene/spatial checks (none exist).

**Finding counts**: BLOCKING 0 | HIGH 0 | MEDIUM 2 | LOW 3

---

## MEDIUM

### M1. Dominance theorem stated for "computable probability distribution," narrower than the canonical "lower-semicomputable semimeasure"
- **Location**: `chapters/05_the_optimality.tex:25-31`
- **Quoted text**: "Let $\mu$ be any computable probability distribution on output strings... The dominance theorem says: there is a constant $c_\mu$ such that $M(x) \geq c_\mu \cdot \mu(x)$ for every string $x$."
- **Problem**: The manuscript restricts the hypothesis class to *computable* distributions; the canonical statement (`lore/foundations.md`) and the fuller mathematical result is for *lower-semicomputable semimeasures*. This is a pedagogical narrowing, not an error: narrowing the hypothesis makes the stated theorem weaker, hence safe, and the chapter already hedges ("Most distributions of practical interest are computable"). Ch4 already footnotes that $M$ itself is a semimeasure. The gap is fidelity to lore, not correctness.
- **Suggestion**: Optional. Add a one-line footnote noting the theorem in fact holds for the wider class of lower-semicomputable semimeasures, with "computable distribution" as the friendly special case. Lowest cost: leave the body, add the footnote.

### M2. The excess-log-loss step reads as exact where it is doing slightly more rhetorical work than the single inequality licenses
- **Location**: `chapters/05_the_optimality.tex:123-127`
- **Quoted text**: "By the chain rule for log-probabilities, the left side equals the cumulative gap between $\mu$ and $M$ summed over every step of the sequence. So the total excess log-loss of using $M$ in place of $\mu$, over a sequence of any length, is bounded by $K(\mu)$ bits."
- **Problem**: The headline conclusion (total log-loss gap bounded by $K(\mu)$, per-step penalty $\to 0$) is correct. But "equals the cumulative gap... summed over every step" can be misread as asserting a stepwise-decomposed bound stronger than the one inequality $-\log M(x) + \log\mu(x) \le K(\mu)$ delivers.
- **Suggestion**: Soften to "is the total log-loss gap accumulated over the whole sequence," avoiding the implication that each step is separately bounded. Keep the (sound) headline claim.

---

## LOW

### L1. "cascade" survives twice; both are acceptable discipline-language, not the old structural frame
- **Location**: `chapters/07_the_inhabited_library.tex:136` ("The cascade can always be unwound...") and `chapters/10_indifference_of_description.tex:108` ("The reader who has followed the cascade has all the tools.")
- **Problem**: None on the correct reading. `lore/foundations.md` deliberately retains "cascade" as the name for the traceability discipline. Both uses are exactly that; neither invokes the retired "bedrock + labeled moves + cascade" architecture.
- **Suggestion**: No change required. If you want zero residual old-frame echo, `10:108` could become "followed the argument"; `07:136` reads cleanly and should stay.

### L2. Borges book-count exponent verified consistent
- **Location**: `chapters/02_the_library.tex:19`
- **Quoted text**: "410 pages, 40 lines per page, 80 characters per line... roughly $25^{1{,}312{,}000}$."
- **Finding**: $410 \times 40 \times 80 = 1{,}312{,}000$, so the exponent is internally consistent with the stated geometry and matches the standard reading of Borges. The "$> 10^{80}$ atoms" comparison is also correct. No error; recorded as a confirmed-correct load-bearing number.

### L3. QM precision claim stated without source
- **Location**: `chapters/08_the_observer.tex:24`
- **Quoted text**: "accurate in some predictions to one part in $10^{12}$."
- **Finding**: In the right ballpark for QED precision tests (electron anomalous magnetic moment ~$10^{-12}$ to $10^{-13}$), appropriately hedged with "in some predictions." This is QED specifically rather than QM broadly, acceptable for a popular text.
- **Suggestion**: Optional tightening: "to better than one part in $10^{12}$ (in quantum electrodynamics)."

---

## Verified consistent (spot list)

- **Spine fidelity**: "There are no joints. There are only the cuts you make." carried consistently (`02:123`, preface, `10`, `14`). The one move at three depths is set up at `02:123` and closed at `14:37` ("the cut met three times, and the same move each time").
- **Finitude as a consequence of Kraft, never a theorem**: held at `04:125`, `05:188-190`, `06:71`, `10:39`. No slip.
- **"No view from the top" grounded in the postulate**: `09:19-23` derives it from the postulate first, then demotes diagonalization to "a second reason, narrower and merely confirming" (`09:25`). Exactly the canonical discipline.
- **Ontology (c) held open**: `06:69`, `08:146`, `11:69`.
- **Kraft / universal prior / invariance / dominance proof**: all stated correctly (`04:71-81`, `04:133`+`04:210`, `05:165-171`, `05:39-47`).
- **No emotional properties projected onto the structure**: held throughout (`09:61`, `10:78`, `15:25-27`).
- **Closing meets landing/grace spec**: adequacy doubt named and left open (`15:35`); "Stay." single-word address (`15:38`); Camus's *must* literal (`15:33`).
- **Relic check (full)**: no retired subtitle "Enumeration" (only the verb "enumerate"); no "two moves" architecture; no "universal distribution" in the manuscript; no forbidden moral-spine citations (Origen, Hart, Gregory of Nyssa, bodhisattva, Levinas, Nagarjuna, Pyrrho, "emptiness").

## Note outside manuscript scope
`lore/outline.md:18` still reads "universal distribution"; consider standardizing the lore to "universal prior" for upstream consistency. (Lore-only; does not affect the manuscript.)
