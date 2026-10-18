# Consistency and Formal-Claims Audit

## Scope and sources

This read-only lens covered Chapters 7 through 10, Appendices A through E and their opener, Notes, Resources, the master include order, governing lore, and the current release-candidate diff. It compared mathematical and conceptual claims against `lore/foundations.md`, `lore/information_hazards.md`, the manuscript's own stated caveats, and the primary literature named below.

## Summary

The revised Born-measure discussion now clearly denies a derivation from the universal prior. However, the release candidate has two foundational contradictions and several formal overclaims. The most serious are categorical realism where canonical lore holds existence open, and the claim that Kraft's inequality forces a finite agent to allocate most probability mass to short descriptions.

**Finding counts:** BLOCKING: 2 | HIGH: 5 | MEDIUM: 2 | LOW: 2

## Strengths

- Chapters 8 and 10 now distinguish the Born and universal measures by formula and setting and say explicitly that neither derives the other.
- `chapters/08_the_observer.tex:151` states the held-open ontology with unusual clarity.
- Appendix A correctly identifies lower semicomputability, the semimeasure caveat, uncomputability, machine dependence, and the finite expected-error guarantee.
- Static reference checks found no unresolved labels in scope.
- The crisis contacts are current and usable.

## BLOCKING

### The manuscript asserts an ontology that canonical lore refuses

- **Locations:** `lore/foundations.md:158-170,199-214`; `chapters/07_the_inhabited_library.tex:17,25-27,120`; `chapters/09_the_limits.tex:89,93,119-121`; `chapters/10_indifference_of_description.tex:23,84-98`; `chapters/A5_objections.tex:7,23`.
- **Evidence:** Lore says the book does not move from "no cut is privileged" to "all cuts are equally real" and holds Picture A versus Picture B open. The manuscript repeatedly says every computable reality, every relevant observer instance, and the hellscapes are real.
- **Problem:** These are mutually exclusive epistemic commitments, sometimes within the same chapter sequence.
- **Impact:** A central lore-to-manuscript contradiction turns a permitted interpretation into a claimed consequence, including in the book's most safety-sensitive passages.
- **Recommendation:** Resolve lore first. Under the current foundation, condition ontic claims on Picture A and say that the postulate permits but does not establish this reading.
- **Confidence:** Very high. Independently confirmed by the voice and safety lens.

### Kraft is said to force a short-description prior

- **Locations:** `lore/foundations.md:179-195,313-315`; `chapters/07_the_inhabited_library.tex:122`; `chapters/10_indifference_of_description.tex:37-41`; `chapters/A1_bedrock.tex:40`; `chapters/A5_objections.tex:13-15`.
- **Evidence:** The text says a finite agent is compelled to put most probability mass on short descriptions and that "Kraft makes any other weighting incoherent."
- **Problem:** Kraft constrains prefix-code lengths through $\sum_i 2^{-\ell_i}\leq 1$. It does not constrain an independently chosen coherent prior to favor shorter codewords, and it does not uniquely select $2^{-|p|}$ as program weight. A prior may coherently assign little mass to a short codeword and most mass to a long one.
- **Impact:** The book labels this inference load-bearing and uses it to distinguish a theorem from a philosophical commitment.
- **Recommendation:** Rebuild the finitude claim in lore. Separate Kraft compatibility, the fair-bit program-mixture construction, universal dominance, and any additional normative or resource principle.
- **Confidence:** Very high. The theorem as printed in Appendix A does not entail the prose conclusion.

## HIGH

### Appendix A conflates discrete algorithmic probability with sequential Solomonoff probability

- **Location:** `chapters/A1_bedrock.tex:31-60`.
- **Evidence:** Line 32 defines the exact-output object conventionally written $m(x)$, while lines 52-60 condition the same symbol sequentially as the monotone prefix semimeasure $M(x)$. The footnote acknowledges the distinction but then treats the objects as interchangeable.
- **Problem:** The coding theorem and sequential convergence theorem apply to different standard constructions. The prefix-output definition used for prediction is described in [Hutter's treatment of the Solomonoff semimeasure](https://www.hutter1.net/publ/unipreq.pdf).
- **Impact:** The appendix advertised as the precise account does not maintain one coherent object through its theorem chain.
- **Recommendation:** Define $m$ and $M$ separately and attach coding, dominance, and convergence results to the appropriate object.
- **Confidence:** Very high.

### Dominance is inflated into blanket superiority

- **Locations:** `chapters/A1_bedrock.tex:62`; `chapters/10_indifference_of_description.tex:39`.
- **Evidence:** The prose says "nothing computable does better" and that $M$ tracks reality better than every computable rival.
- **Problem:** Dominance supplies a complexity-dependent lower bound and convergence or loss guarantees under stated conditions. It does not say $M$ defeats the informed predictor $\mu$, every rival pointwise, or every rival at finite horizons. Hutter distinguishes these comparisons in [New Error Bounds for Solomonoff Prediction](https://arxiv.org/abs/cs/9912008).
- **Impact:** A strong asymptotic guarantee becomes a false uniqueness claim.
- **Recommendation:** State the convergence and cumulative-loss guarantee narrowly; avoid unrestricted "best" language.
- **Confidence:** Very high.

### The Turing-jump ladder is placed inside the computable Library

- **Location:** `chapters/09_the_limits.tex:25-59`.
- **Evidence:** The prose says every computable agent has a buildable stronger agent, identifies this with a tower of oracle machines, and draws the whole tower inside the Library.
- **Problem:** The Turing jump of a computable oracle is not computable by an ordinary Turing machine. Oracle jumps are a hierarchy of relative computability, not a tower of progressively stronger ordinary computable agents. $M$ also dominates semimeasures, not agents.
- **Impact:** A prominent mathematical confirmation is category-invalid, although the postulate-based no-top argument can stand without it.
- **Recommendation:** Remove this confirmation or replace it with a correctly scoped resource hierarchy.
- **Confidence:** Very high.

### No observer-instance measure is defined

- **Locations:** `chapters/07_the_inhabited_library.tex:25-53`; `chapters/08_the_observer.tex:111,123-149`; `chapters/10_indifference_of_description.tex:29,70,92`; `chapters/A3_anthropics.tex:3-15`.
- **Evidence:** The universal prior is said to give proportions among instances and to weight observer-moments, while Appendix C declines SSA, SIA, and runtime weighting.
- **Problem:** Program or output-prefix weight does not by itself define a measure over occurrences of an observer-state within outputs. Runtime belongs to a separate speed prior. A reference class or self-location rule is missing.
- **Impact:** The central "where am I?" distribution is asserted before its necessary extra assumption is supplied.
- **Recommendation:** Separate a posterior over programs from a self-location measure. Remove instance-proportion claims or label and defend the additional rule.
- **Confidence:** High.

### The Cox theorem is under-specified and overclaimed

- **Locations:** `chapters/A1_bedrock.tex:11-17`; `chapters/96_notes.tex:26`.
- **Evidence:** Three broad desiderata allegedly make probability the only consistent real-valued belief calculus.
- **Problem:** Cox-style representation results require richer domain and regularity assumptions than those stated. Finite-domain counterexamples are documented in [Halpern's paper](https://arxiv.org/abs/1105.5450).
- **Impact:** The precise appendix does not support its categorical uniqueness conclusion.
- **Recommendation:** State a qualified representation theorem with sufficient assumptions and make the conclusion conditional.
- **Confidence:** High.

## MEDIUM

### Refusing the postulate is made to entail one-world metaphysics

- **Location:** `chapters/A4_refusing.tex:7-9`.
- **Problem:** Refusal blocks this book's inference; it does not logically force a single world or a metaphysically simple self.
- **Recommendation:** Use "may keep" and describe what no longer follows from the book.
- **Confidence:** Very high.

### The decoherence footnote claims too much

- **Location:** `chapters/08_the_observer.tex:25`.
- **Problem:** Decoherence explains effective interference suppression and emergent branch structure, but the definite-outcome issue remains interpretation-sensitive. See [Schlosshauer's review](https://arxiv.org/abs/quant-ph/0312059).
- **Recommendation:** Say "effective branch autonomy" or "branch-relative definiteness" and label ontic branching as Everettian.
- **Confidence:** Very high.

## LOW

- `chapters/96_notes.tex:41` dates AIXI to 2005. Hutter introduced the model in [the 2000 paper](https://arxiv.org/abs/cs/0012011); 2005 is the book treatment.
- `chapters/A0_appendices.tex:9` says Notes come after everything else, but they immediately follow Appendix E.

## Verified clean and limitations

The Born-rule revision no longer claims equality, restriction, or derivation. Appendix order agrees with lore, scoped labels resolve, and no em dashes or raw Unicode mathematics occur in typeset scoped prose. This lens did not re-review Parts I or III except where a scoped claim required comparison, and it did not rebuild the output files.
