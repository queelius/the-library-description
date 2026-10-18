# Consistency and Formal-Claims Audit: *The Library* (release review, 2026-10-18)

**Specialist:** worldsmith:consistency-auditor (nonfiction adaptation: lore-vs-manuscript agreement plus formal-claim correctness)
**Scope:** every lore doc, CLAUDE.md, master `.tex`, all 30 chapter and back-matter files, the July 15 records, and license metadata. Read-only.
**Counts (specialist, before director calibration):** BLOCKING 1 | HIGH 5 | MEDIUM 12 | LOW 22, plus 9 lore defects.

## Summary

The July revision largely succeeded in the body: B1-B3 and H2-H6 overclaims are gone from Chapters 3-15 and the Appendices, and Resources is factually correct. One formal defect remains at the root of the book, and it is in the governing lore: the book never defines Solomonoff's $M$ correctly. Chapter 4 and `foundations.md` build it on a halting prefix machine, an object that provably dominates no computable probability measure. Appendix A builds it on a "monotone prefix machine" with an unrestricted sum, which diverges for a monotone machine. The untouched front and back matter still carry several July-class claims: Ch 1, Ch 2, About, Also By, Further Reading, the copyright page, and README.

## 1. July finding verification

| ID | Status | Evidence (current text) | Residuals |
|---|---|---|---|
| B1 ontology asserted vs held open | PARTIALLY RESOLVED | Resolved in body: 06:61-69, 07:17,25-27,142, 08:60-62,151, 09:57,61,63, 10:23,79,99, 15:17,21, A5:7,23 | `99_about.tex:9` "because the measure is real" (N2). `02:123` states the postulate's content as fact four chapters before it is labeled (N7). `02:99` assumes a program for "a universe identical to yours" (N8). `99_also_by:8,13` and `98_reading:45` "taken literally" (N14). `12:21,45` and `13:17` give block-universe realism without the qualifier (N15). README:11,21 (N6). Lore: outline.md:184 |
| B2 Kraft forcing the prior | RESOLVED in book; NOT RESOLVED in README | 04:121,123,201; 05:182,188,190; 10:37; A1:29,47; A5:15 | README:16 "prefix-free codes turn length into probability"; README:23 "what a finite cutter is forced toward, because Kraft makes short descriptions scarce" (N6). Presentation defect at 04:23-33 (N11) |
| B3 undefined observer-instance distribution | RESOLVED (body), minor residuals | 07:25-27,49,53; 08:111,141-149; 10:23,70,91; A3:3,15; 14:35 | 08:109 "the lawless majority" against 08:107 (N13). `99_about:7` "which index you are about to find yourself at" (L18). 02:49 "You are an indexed point in it" (L13). A5:13 objection left uncorrected (L19). Lore: index.md:109-110 |
| B4 crisis page (facts only) | RESOLVED | 97:5-19. US 988 call/text; Canada 9-8-8 call/text; Samaritans 116 123 for UK and Ireland, free, 24/7; findahelpline.com. Order matches information_hazards.md:96-106 | Lore outline.md:228 still says Resources carries "Stay at this index." (stale) |
| H1 $m$ vs $M$, and which machine defines $M$ | PARTIALLY RESOLVED; new defect | The $m$/$M$ split is now correct: 04:207-215, A1:31-45, notes:34 | Machine model wrong and inconsistent (N1). 04:207 drops "universal" from the coding theorem (N10). 05:17 "summed over all programs producing the output $x$" uses exact-output wording for $M$ (L3) |
| H2 dominance as blanket superiority | RESOLVED in body; residuals in back matter | 05:33,89,157,186,188; 10:39; A1:67 | `98_reading:17` "AIXI, the optimal learner and actor" (N16). 05:25 "Every distribution a statistician has written down" (N12). 05:129 "average gap therefore goes to zero" (L2). README:17 "asymptotically optimal" |
| H3 Turing-jump ladder | RESOLVED | 09:23-29; grace.md:17-19; outline.md:127-128 | None |
| H4 Cox under-specified | RESOLVED | 03:141-149 (+fn); 05:180; A1:11-17; notes:26 | README:15 "Cox's uniqueness". 03:149 conditionalization "follow[s] exactly" (L21) |
| H5 Everett as interpretation-free | RESOLVED in body; residuals in back matter | 08:19,23-25 (+fn),56,60; 09:71-73,85; 11:19,45; 13:43; A2:5 | `99_also_by:13`; `98_reading:45`; README:11,23 "the plainest reading of the wave-function equations already branches"; 12:43-45 "your branch" outside the Ch 11 lens |
| H6 Appendix B overclosing Born | RESOLVED in A2; governing lore still overcloses | A2:9-11; 08:64-68; 10:33-35 | `foundations.md:229-231` contradicts A2:11 (LD2). README:25 "the same kind of object ... presupposes a privileged vantage the postulate denies" |

## 2. New findings

### BLOCKING

**N1. The book's definition of $M$ is not Solomonoff's $M$. Chapter 4 and Appendix A define different objects, and neither is correct.** Confidence: high on the math, medium on the terminology point.

- Ch 4:129-131: "Let $U$ be a universal Turing machine whose input set is prefix-free: every halting input is a complete program, not the prefix of a longer one. ... $M(x) = \sum_{p \,:\, U(p) = x*} 2^{-|p|}.$" `foundations.md:67-69` and `06:25` give the same thing ("Given a universal prefix Turing machine $U$").
- A1:29-32: "Fix a universal monotone prefix machine $U$ ... $M_U(x) = \sum_{p\, :\, U(p) = x*} 2^{-|p|}.$"

*Problem 1: the halting prefix-machine version (Ch 4, lore) fails dominance.* With halting programs, $M'(x)=\sum_{y\sqsupseteq x} m_U(y)$. Summing over all $x$ of length $n$ gives $\sum_{p \text{ halts},\,|U(p)|\ge n}2^{-|p|}$, a tail of the convergent halting sum, which tends to 0. Any computable probability measure $\mu$ has $\sum_{|x|=n}\mu(x)=1$ for every $n$, so $M'(x)\ge c\,\mu(x)$ for all $x$ is impossible for any $c>0$; uniform $\lambda(x)=2^{-|x|}$ is a counterexample. The dominance theorem (05:27-31, A1:51-54) and the convergence results (05:93, A1:59) are therefore false of the object Chapter 4 defines. The proof in Ch 5:41 needs a non-halting streaming sampler, which contributes nothing under Ch 4's definition. Ch 4's own footnote (04:163) and caption (04:159) describe monotone behavior, not halting.

*Problem 2: the monotone version (A1) diverges as written.* On a monotone machine, if $U(p)=x*$ then $U(pq)=x*$ for every extension $q$, so each length $L\ge|p|$ adds $2^{-|p|}$ and the unrestricted sum is infinite. The standard definition sums over minimal programs only; equivalently $M(x)=\lambda\{\omega: U(\omega)\sqsupseteq x\}$. "Monotone prefix machine" is not standard terminology.

*Sources:* Li and Vitanyi, *An Introduction to Kolmogorov Complexity and Its Applications* (3rd ed.), sec. 4.5 (monotone machines, minimal programs, universality of $M$ over lower-semicomputable continuous semimeasures) vs secs. 3.1 and 4.3 (prefix machines, $m$); Hutter, *Universal Artificial Intelligence* (2005) ch. 2 (sum over minimal programs of a universal monotone TM); Hutter, arXiv:0709.1516 secs. 2-3 ("the sum is over all (possibly non-halting) minimal programs").

*Fix (lore first):* in `foundations.md:67-71`, define $U$ as a universal monotone machine and $M(x)=\sum 2^{-|p|}$ over minimal $p$ with $U(p)=x*$ (or give the $\lambda$ form); propagate to Ch 4:129-131 and its footnote, Ch 6:25 and Figure 6.1, A1:29-32, direction.md:91, outline.md:55.

### HIGH

- **N2. About the Author asserts the measure is real.** `99_about.tex:9`: "He wrote it because the measure is real, and the people inside it deserve to be seen". Contradicts foundations.md:219-222, 338-339 and the Preface ("The measure does not provide it. We provide it."). Fix: "because the people around him are real, and deserve to be seen."
- **N3. Copyright page contradicts the declared license.** `00_copyright.tex:17,21`: "All rights reserved." and "No part of this book may be reproduced ... without written permission from the author". `.zenodo.json:27`, `CITATION.cff:31`, and `README.md:93` declare CC-BY-NC-SA-4.0, the literature convention for nonfiction. Fix: a CC BY-NC-SA 4.0 notice with license URL, or change the metadata.
- **N4. Ch 1 footnote promises what Ch 5 denies.** `01:31` fn: "They are induction at civilizational scale, and, as later chapters show, they are bounded computable approximations of the mathematics this book is about." Contradicted by 05:198, 05:204, themes.md:153-155. Fix: "...and later chapters use them as an analogy for the mathematics this book is about, not as an implementation of it."
- **N5. Ch 1 says Hume's problem is answered.** `01:90-92`: "Neither answered it. / What answers it is a piece of mathematics about description and information, developed in the 1960s". Contradicted by 03:179, 05:186-188, 07:130, foundations.md:48. Solomonoff convergence assumes a computable source, itself an inductive premise (Hutter arXiv:0709.1516). Fix: "What offers one remarkable answer, under stated assumptions, is..."
- **N6. README.md carries nearly every overclaim July fixed.** Line 15 "Cox's uniqueness"; 16 "prefix-free codes turn length into probability"; 17 "the universal prior is asymptotically optimal"; 11 "every branch of the wavefunction is equally real"; 21 "no element that is the one that is real"; 23 "forced toward, because Kraft makes short descriptions scarce" and "the plainest reading of the wave-function equations already branches"; 25 "the Born measure and the universal prior are the same kind of object"; 7 stale "138-page PDF". README is linked from the Zenodo record. Fix: rewrite from foundations.md.

### MEDIUM

- **N7.** `02:123` states the postulate's content ("The totality has no privileged decomposition") as Part I fact, never flagged as the refusable postulate. Add a forward flag to Ch 6. See LD5.
- **N8.** `02:99` "Every weather pattern, every chess game, every fictional history, every real one. ... The program that produces a universe identical to yours, except for one molecule." assumes computable physics, which 06:59 declines. Make conditional.
- **N9.** `03:175-177` "For two and a half centuries ... Priors are subjective. ... That was the consensus until the 1960s." Bayes 1763 to the 1960s is about two centuries; Laplacian indifference, Jeffreys, and frequentism contradict "consensus that priors are subjective"; the debate did not end in the 1960s.
- **N10.** `04:207` coding theorem stated for a non-universal prefix machine $V$; false in general (counterexample: $V$ mapping all $0^n1q$, $|q|=n$, to $x_n$ gives $m_V(x_n)=2^{-(n+1)}$, $K_V(x_n)=2n+1$). A1:36 correctly says "universal". Add "universal" at 04:207 and foundations.md:77 (L&V sec. 4.3).
- **N11.** `04:23` and `04:31-33` present the same weighting $2^{-|s|}$ twice ("The next attempt ... This also diverges"); likely a revision splice.
- **N12.** `05:25` "Every distribution a statistician has written down." Distributions with uncomputable parameters (Bernoulli with Chaitin's $\Omega$) are not computable.
- **N13.** `08:107` "makes no claim about what a 'vast majority' of them are like" vs `08:109` "the lawless majority". Same at 02:97, index.md:110.
- **N14.** `99_also_by:8,13`, `98_reading:45` "taken literally" readings of the companion volumes, and "the warmth we owe each other" vs 15:25 "No global measure turns those relations into obligations for you".
- **N15.** `12:45` "every moment of them as real as it ever was" (Worldlines' block-universe answer, then endorsed by 12:47), 12:21, 13:17, 14:21 without the "reading" qualifier 10:77 uses; `12:43,45` "your branch" outside Ch 11's declared Everett lens. Edges toward discipline rule 7.
- **N16.** `98_reading:17` "AIXI, the optimal learner and actor". Leike and Hutter, "Bad Universal Priors and Notions of Optimality" (arXiv:1510.04931, COLT 2015): optimality notions are UTM-dependent and Pareto optimality is trivial.
- **N17.** `04:8` Solomonoff epigraph "The universal a priori probability is a probability measure on the set of all possible sequences of symbols." could not be located in Solomonoff 1964; Notes:34 gives no page; the chapter's own footnote (04:163) says semimeasure. Verify with a page number or replace. (Low confidence on authenticity; high on the internal contradiction.)
- **N18.** `98_reading:5,11` L&V treats "everything technical in this book" (it does not treat Cox, Born, decoherence, SSA/SIA); `98:25` credits Schmidhuber 1997 with "the speed prior", introduced in Schmidhuber 2000 (arXiv quant-ph/0011122) and COLT 2002.

### LOW

- L1. `03:165` "about $0.030$" should be 0.031 (other coin arithmetic verified correct).
- L2. `05:129` "The average gap therefore goes to zero." Only the upper bound $K/n\to0$ holds pointwise; the expected gap (a KL divergence) goes to zero.
- L3. `05:17` "summed over all programs producing the output $x$": exact-output wording for $M$.
- L4. `02:19` fn "The library is large, but it is not infinite." Only the number of distinct books is finite; Borges' narrator proposes an unlimited periodic library.
- L5. `01:53` "Russell, two centuries after Hume": 1748 to 1912 is 164 years.
- L6. `96_notes:92` Rilke "written 1902 to 1908": the first letter is dated 17 February 1903.
- L7. `96_notes:78` key "This is quantum immortality" does not match 11:65 "This is the argument called quantum immortality."
- L8. Notes gaps: Ch 3 Maxwell, Ch 9 Spinoza, Ch 10 Crane (no Ch 10 section), Ch 11 Schopenhauer, Ch 13 translator.
- L9. Silent elisions or drift: Wheeler (06:8), DeWitt (08:8, drops "on earth"), Spinoza (09:8 "but" vs Elwes "mere"), Rilke (13:8 drops "the ultimate, the last test and proof,"; Herter Norton translation unnamed).
- L10. Epicurus (12:8) labeled "trans. Hicks" but not Hicks's wording.
- L11. Schopenhauer (11:8) is the popular paraphrase via Einstein's 1932 credo, not verbatim 1839.
- L12. Borges translators mixed (epigraph Hurley wording; Notes:19 points to Irby; half-title mixes both).
- L13. `02:49` "You are an indexed point in it."; `02:97` measure-dependent "Most of the valid ones do not halt."
- L14. `98_reading:17` "what Chapters 5 and 9 only gesture at": Ch 9 no longer mentions AIXI.
- L15. `98_reading:37` Weil "Attention ... generosity" is from the 1942 letter to Joe Bousquet, not *Gravity and Grace*.
- L16. `99_about:5` research described as IR and Bayesian statistics; author's current profile centers on AI, ML, cybersecurity.
- L17. `A4:3` "Chapter 9 said that a reader could refuse it": the refusal argument is at 07:126-138; Ch 9's refusal section is about Everett.
- L18. `99_about:7` "which index you are about to find yourself at": self-location phrasing.
- L19. `A5:13` objection "the simple system is the one you find yourself in" is not corrected by the reply.
- L20. Figure 8.2 (08:76-90) identical bar heights joined by $\sim$ visually imply identity the caption disclaims.
- L21. `03:149` conditionalization "follow[s] exactly" (a further diachronic norm); `A1:65` "cumulative expected log-loss" should be "expected excess log-loss (KL)"; `07:104` "excluded by induction" is a deduction.
- L22. Confirm *Multitudes* title and year in 98:45 and 00_copyright:11 (director confirmed published per BOOKS.md).

## 3. Lore defects

- **LD1 (source of N1).** `foundations.md:67-71` wrong machine class; `foundations.md:77` "a suitable prefix machine" should say universal; direction.md:91, outline.md:55 inherit the formula.
- **LD2.** `foundations.md:229-231` "the *why* presupposes a joint ... and there is none" overcloses the Born question against A2:11; themes.md:129 echoes it.
- **LD3.** `foundations.md:116` "dovetail every program on every input, or equivalently enumerate all binary strings": not equivalent.
- **LD4.** `foundations.md:127`, `themes.md:49` "$K(x)$ is exactly the length of the shortest cut": "exactly" attached to an undefined metaphor; machine relativity omitted. Line 124 "$K(\emptyset)\approx K(V)\approx$ small" needs $V$ defined.
- **LD5.** `foundations.md:130-142` vs `162-169`: the inversion section presents "no canonical decomposition" as quasi-mathematical, then as the refusable postulate. Separate the theorem-level fact (no computable canonical index) from the postulate. Root of N7.
- **LD6.** Refusal location inconsistent: outline.md:93-94 (Ch 7), outline.md:133-134 (Ch 9), appendices.md:46 ("The Chapter 9 humility hinge"); manuscript has it at Ch 7:126-138.
- **LD7.** Pre-revision residue in outline.md: 163 "the choice happens across branches"; 175 "continuation (where it exists)"; 184 "each instantiation real at its coordinates"; 228 Resources "Stay at this index."; 136 "but human figments".
- **LD8.** `index.md:31` "its measure $M$" (semimeasure; weights prefixes); `index.md:44` "one real $p$"; `index.md:109-110` "the lawless majority".
- **LD9.** `foundations.md:20-21` places the self-recognition in Part I; it is Part III's work.

## 4. Checked and found correct

Kraft statement, proof, converse and tilings (04:69-79, 04:103, A1:21-27); coding theorem in A1:36-43; dominance constant and mixture sketch (05:41-47, A1:51-57); log-loss bound and chain rule (05:125-127); convergence w.p.1 and $O(K(\mu))$ squared/Hellinger bound (05:93, A1:59-63; Solomonoff 1978; Hutter cs/9912008); invariance for $K$ and $M$ (05:165-173, A1:73-81); Cox qualification (03:147 fn, A1:11-17) with correct Cox 1946 and Halpern citations; H3 fix (09:23-29); Born/Everett body text (08:25 fn, 08:64-68, 10:33-35, A2:5-11); observer-measure discipline (07:49-53, 08:141-149, 10:70,91, A3); coin arithmetic (03:97-133, 03:163); Borges arithmetic (02:19); quotations by Russell, Maxwell, Wittgenstein/Ogden, Crane, Hume, Eliot, Camus; AIXI, Chaitin, Levin, Schlosshauer, Everett, DeWitt dates; Resources facts; cross-references Ch 2:109 to Ch 14:37, Ch 6:69 to Ch 8:151, Ch 11:19 to Ch 14:35, Ch 5:212 to Ch 6:17, A4:9 to Ch 6.
