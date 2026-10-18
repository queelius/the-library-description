# Worldsmith Release-Gate Review: *The Library*

**Date:** 2026-07-15  
**Manuscript:** *The Library: The Indifference of Description*  
**Primary scope:** Current release-candidate delta in Chapters 7 through 10, Appendices A through E and their opener, Notes, Resources, master order, governing lore, and current rendered outputs  
**Targeted expanded scope:** Chapters 3 through 5 where cross-verification of formal claims required their originating statements  
**Review engine:** Worldsmith 0.13.2+codex.20260715223830, repository-local Codex port  
**Recommendation:** **Needs major revision. Do not release this candidate.**

## Methodology and verification status

This was a read-only four-lens review. Three independent specialists handled consistency and formal claims, craft and page experience, and voice and safety. The orchestrator handled structure and pedagogy. The bundled inventory and prose-pattern scripts were run first. Existing June review artifacts were consulted only after independent findings were returned.

Every BLOCKING and HIGH finding received a second read by a different lens or, where noted, by the orchestrator. The consistency findings were routed to the craft lens without changing the manuscript. The ontology finding was independently confirmed by all three specialist lenses. The Resources finding was independently noticed by craft, assessed by voice and safety, and checked by the orchestrator against current WHO and SAMHSA guidance.

This is a focused release gate, not a fresh cover-to-cover audit. Counts below are deduplicated synthesis counts, not the sum of specialist counts.

## Executive summary

The current revisions materially improve the Born-measure seam: the body now says plainly that the universal prior does not derive the Born rule and that the formulas and settings differ. The appendix sequence, reader-facing voice, and technical page layout are also largely strong.

The exercise nevertheless uncovered four release blockers. First, the manuscript repeatedly asserts that all computable realities and hellscapes are real while canonical lore explicitly holds that ontology open. Second, the book's load-bearing claim that Kraft's inequality forces finite agents to put most mass on short descriptions is false. Third, the central distribution over observer instances is not defined by the universal program prior and is left without the self-location rule it needs. Fourth, the dedicated crisis page combines missing immediate-danger routing with metaphysical, love-contingent loss language.

Several related formal claims also need correction: Appendix A conflates exact-output algorithmic probability with the sequential Solomonoff semimeasure, dominance is inflated into blanket superiority, the Turing-jump ladder is misdescribed as computable agents inside the Library, Cox's theorem is under-specified, Everettian branching is presented as interpretation-free confirmation, and Appendix B overcloses the Born question.

The architecture and voice are worth preserving, but the formal spine must be repaired in lore before prose polish continues.

## Prioritized action list

1. **Rebuild the finitude argument in `lore/foundations.md`.** Separate what Kraft proves, why fair program bits yield $2^{-|p|}$, what universal dominance guarantees, and what additional principle would justify the chosen prior. Remove claims that every other weighting is incoherent.
2. **Define the mathematical objects and the indexical step.** Keep discrete exact-output $m$ distinct from sequential prefix $M$. Decide whether the book will add a self-location or observer-instance measure; otherwise remove claims that $M$ gives proportions among copies or observer-moments.
3. **Resolve ontology lore-first.** Choose whether existence remains held open. Under current lore, make reality and hellscape claims conditional on Picture A and propagate the correction through Chapters 7 through 10 and Appendices D and E.
4. **Replace the Resources closing before release.** Keep the verified contacts, add immediate-danger routing, and use direct, unconditional, non-metaphysical crisis copy. Obtain prevention-copy review if possible.
5. **Correct the remaining formal overclaims.** Narrow dominance and Cox claims, remove or rebuild the Turing-jump confirmation, and present Everett and decoherence as interpretation-sensitive.
6. **Align the supplements.** Make Appendix B preserve the body's "relocated, not solved" Born language, and make Appendix D describe what no longer follows rather than what metaphysics refusal forces.
7. **Finish local craft fixes.** Correct the Notes directions, contain Figure 10.1 before its next section, empty the page style on true blank pages, clarify Figure 7.1 as a membership schematic, and fix the minor grammar and dating errors.

## Strengths to protect

- `chapters/08_the_observer.tex:64-68` and `chapters/10_indifference_of_description.tex:33-35` now distinguish the Born measure from the universal prior and explicitly refuse a derivation.
- `chapters/08_the_observer.tex:151` is the clearest statement of the held-open ontology and can anchor the repair elsewhere.
- The five-appendix progression is pedagogically sound: formal bedrock, the Born seam, anthropic options, refusal, then objections.
- The prose remains plain, companionate, and willing to name what the mathematics does not decide.
- The Resources opening is humane and non-stigmatizing, and all four listed services are current.
- The current PDF is 138 pages with resolved references, no overfull boxes, and the revised Appendix A display fitting the page.

## BLOCKING

### B1. Canonical held-open ontology versus asserted realism

- **Evidence:** `lore/foundations.md:158-170,199-214` says that "all cuts are equally real" is a move the book does not make and that existence remains open. In contrast, `chapters/07_the_inhabited_library.tex:17,25-27,120`, `chapters/09_the_limits.tex:89,93,119`, and `chapters/10_indifference_of_description.tex:84-98` call all computable structures, instances, and hellscapes real. Appendix E then returns to held-open language.
- **Impact:** The book both asserts and refuses its central ontology. The categorical dark claims also reverse a mitigation documented in `lore/information_hazards.md`.
- **Action:** Resolve lore first and condition ontic claims on Picture A unless the project's canonical commitment changes.
- **Verification:** Independently confirmed by consistency, voice and safety, and craft. Confidence: very high.

### B2. Kraft does not force the chosen prior

- **Evidence:** `lore/foundations.md:185-190`, `chapters/07_the_inhabited_library.tex:122`, `chapters/10_indifference_of_description.tex:37-41`, `chapters/A1_bedrock.tex:40`, and `chapters/A5_objections.tex:15` say Kraft compels most mass onto short descriptions and makes other weightings incoherent.
- **Problem:** Kraft constrains valid prefix-code lengths. It does not constrain an independently assigned coherent prior over those codewords and does not uniquely choose $2^{-|p|}$. The fair-bit program model supplies that weighting as an additional construction.
- **Impact:** The claim is labeled load-bearing and carries the book's theorem-versus-postulate distinction.
- **Action:** Rebuild the finitude claim rather than softening one sentence.
- **Verification:** Independently confirmed by consistency and craft with a direct fixed-length-code counterexample. Confidence: very high.

### B3. The observer-instance distribution is undefined

- **Evidence:** `chapters/07_the_inhabited_library.tex:25-53`, `chapters/08_the_observer.tex:111,123-149`, and `chapters/10_indifference_of_description.tex:29,70,92` say $M$ gives proportions among instances or observer-moments. `chapters/A3_anthropics.tex` declines reference-class, multiplicity, runtime, SSA, and SIA rules.
- **Problem:** Weight over programs or output prefixes does not by itself say how repeated observer instances inside an output are counted. Runtime belongs to a separate speed prior.
- **Impact:** The book's central "where am I?" distribution is asserted without the additional measure it requires.
- **Action:** Supply and defend a self-location rule or narrow the claim to a posterior over programs and observed prefixes.
- **Verification:** Independently confirmed by consistency and craft. Confidence: high.

### B4. Resources lacks a safe final crisis route

- **Evidence:** `chapters/97_resources.tex:5-13` lists valid services, but the file gives no direction for immediate physical danger. Line 17 assumes "the people who love you," makes their loss carry the intervention, and returns a suicidal reader to pattern, branch, index, and the Library's indifference.
- **Impact:** The love-and-loss appeal may exclude a reader who feels unloved or amplify perceived burdensomeness; the metaphysical language repeats the destabilizing frame on the crisis surface itself.
- **Action:** Add jurisdiction-neutral immediate-danger guidance and a direct, unconditional invitation to contact support now. WHO recommends emergency help or a crisis line for immediate danger, and SAMHSA distinguishes 988 support from 911 response to immediate physical danger: [WHO suicide guidance](https://www.who.int/news-room/questions-and-answers/item/suicide), [SAMHSA 988 FAQ](https://www.samhsa.gov/mental-health/988/faqs).
- **Verification:** Independently noticed by craft, assessed by voice and safety, and self-verified against authoritative guidance by the orchestrator. Reader response remains a risk judgment, not a certainty. Confidence: high.

## HIGH

### H1. Exact-output $m$ and sequential $M$ are conflated

`chapters/A1_bedrock.tex:31-60` defines exact-output algorithmic probability, conventionally $m$, then uses the same symbol for chronological conditionals and Solomonoff convergence. The footnote recognizes two constructions but does not make the theorem chain coherent. Define both objects and attach the coding and prediction results correctly. [Hutter's work on algorithmic-complexity prediction](https://arxiv.org/abs/cs/0508043) explains why closeness of underlying quantities does not automatically give equivalent posterior behavior. Independently verified by consistency and craft.

### H2. Dominance becomes blanket predictive superiority

`chapters/A1_bedrock.tex:62`, Chapter 5, and `chapters/10_indifference_of_description.tex:39` turn a complexity-dependent dominance and convergence guarantee into "nothing computable does better" and "better than any computable rival." This is not a pointwise, finite-horizon, or informed-predictor superiority theorem. State the guarantee precisely. See [Hutter's prediction-error analysis](https://arxiv.org/abs/cs/9912008). Independently verified by consistency and craft.

### H3. The Turing-jump ladder is not a tower of ordinary computable agents

`chapters/09_the_limits.tex:25-59` says every computable agent has a buildable stronger computable successor and identifies the ladder with oracle jumps inside the Library. A jump is not computable relative to its lower oracle, and dominance applies to semimeasures rather than agents. The postulate-based no-top argument can remain; this purported mathematical confirmation cannot remain as written. Independently verified by consistency and craft.

### H4. The Cox uniqueness result is under-specified

`chapters/A1_bedrock.tex:11-17` states three broad desiderata and concludes that probability is the only noncontradictory real-valued belief calculus. Cox-style representation results need additional richness and regularity assumptions; finite-domain counterexamples exist. Qualify the theorem and its conclusion. See [Halpern's counterexample](https://arxiv.org/abs/1105.5450). Independently verified by consistency and craft.

### H5. Everettian branching is framed as interpretation-free confirmation

`chapters/08_the_observer.tex:19-25,60` says accepted physics already contains multiplicity, it arrives with no philosophical move, and every outcome happened. The chapter later says the quantum reading is only a guest. Recast the earlier section consistently as an Everettian reading and narrow decoherence to effective branch autonomy or branch-relative definiteness. [Schlosshauer's review](https://arxiv.org/abs/quant-ph/0312059) documents the interpretive controversy. Independently found by voice and consistency; severity calibrated by the orchestrator.

### H6. Appendix B overcloses the Born question

`chapters/A2_born_measure.tex:13` calls the Born weighting "not a gap in the physics waiting on better theory," while revised Chapter 10 says the question is relocated, not solved, and leaves the rule's empirical and mathematical work intact. Preserve the comparison but limit relocation to the demand for view-independent privilege beyond quantum theory. Independently confirmed by structure and voice.

## MEDIUM

- **Appendix D's false binary:** `chapters/A4_refusing.tex:7-9` makes refusal entail one world and a simple self. Say the reader may keep those views and name only what no longer follows.
- **Appendix opener's formal compression:** `chapters/A0_appendices.tex:5` moves from settled mathematics directly to consequences. Name the labeled postulate between them.
- **Incorrect Notes direction:** `chapters/A0_appendices.tex:9` says Notes are after everything else, but they immediately follow Appendix E.
- **Figure 10.1 placement:** `chapters/10_indifference_of_description.tex:43-74` lets the figure cross the next section heading. Add a float barrier and inspect the pages.
- **Header-only blank pages:** several appendix transition pages retain running heads and folios. Use an empty page style for intentional blanks.
- **Figure 7.1 visual model:** equal cells and stars imply counting while the caption invokes a nonuniform measure. Mark it as membership-only or encode unequal weights.
- **Safety-adjacent wording:** `chapters/09_the_limits.tex:97` uses "decline to live inside it" and prescribes "the right response." Prefer "step away" or "decline to dwell" and leave the response open.
- **Bedrock-versus-interpretation wording:** `chapters/10_indifference_of_description.tex:104` says the mathematics might be wrong, then names the postulate and quantum reading. Name the vulnerable commitments directly.

## LOW

- `chapters/96_notes.tex:41` dates AIXI to 2005; Hutter introduced it in [the 2000 paper](https://arxiv.org/abs/cs/0012011) and gave the book-length treatment in 2005.
- `chapters/08_the_observer.tex:113` needs "as an approximation" or "even approximately."
- `chapters/A2_born_measure.tex:5` says "the weight a carving deserves." Prefer the non-normative "receives" or "is assigned."

## Resolved and clean checks

- The earlier claim that the universal prior derives or equals the Born rule is resolved in the scoped body revision.
- The previous Resources phrase about "other copies" is gone.
- United States 988, Canada 9-8-8, Samaritans 116 123, and Find A Helpline details are current: [SAMHSA](https://www.samhsa.gov/mental-health/988), [Government of Canada](https://www.canada.ca/en/public-health/services/mental-health-services/mental-health-get-help.html), [Samaritans](https://www.samaritans.org/how-we-can-help/contact-samaritan/talk-us-phone/), [Find A Helpline](https://findahelpline.com/).
- The current PDF has 138 pages, no overfull boxes, no undefined references, and a clean appendix display.
- EPUB creation and archive integrity succeeded in the preceding build; the `epubcheck` executable is not installed, so formal EPUB validation remains uncovered.
- The scoped typeset prose contains no em dashes, CJK, or raw Unicode mathematics.

## Specialist reports

- [Consistency and formal claims](consistency-auditor.md)
- [Craft and page experience](craft-auditor.md)
- [Voice, calibration, and safety](voice-auditor.md)
- [Structure and pedagogy](structure-auditor.md)

## Coverage and caveats

The review followed the current diff outward into claims needed to verify it, but it was not a complete reread of every chapter. Parts I and III may contain additional instances of the same formal and ontology patterns. External links above are primary papers or authoritative service guidance; the report does not claim that one source settles every live interpretive dispute. No manuscript or lore file was changed during this review.
