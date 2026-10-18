# Craft and Page-Experience Audit: *The Library* (release review, 2026-10-18)

**Specialist:** worldsmith:craft-auditor (nonfiction adaptation: expository prose, figures as arguments, LaTeX and EPUB page experience, pattern-level tics)
**Scope:** every manuscript, lore, and July-record file in full; PDF and EPUB rebuilt; 30 pages rendered; pattern counter plus custom counts. Read-only.
**Counts (specialist, before director calibration):** BLOCKING 0 | HIGH 4 | MEDIUM 16 | LOW 15.

## Summary

All six July craft findings are fixed. The revision made the formal claims true at a cost: Chapters 6 to 15 now read as a disclaimer register. Scoping vocabulary rose from about 9 tokens to about 200 across the body; Chapter 10, the title chapter, never uses the word "cut"; the governing sentence appears once (Ch 2); the closing's "cold" has become a summary of caveats; Part III is 4,647 words against an 8,000 target. Local defects: an incoherent step in Ch 4, adjacent-paragraph contradictions in Ch 7 and Ch 8, three figures that visually contradict their captions, and an EPUB that contains no figures.

## 1. July craft findings

| July item | Status | Evidence |
|---|---|---|
| Notes direction (A0) | Resolved | A0:9 "The Notes follow the appendices, before the remaining back matter" |
| Fig 10.1 containment | Resolved | 10:73 `\FloatBarrier`; PDF p.77 |
| Header-only blank pages | Resolved | `emptypage` loaded; blanks return no text (director independently confirmed all 21 intentional blanks are empty) |
| Fig 7.1 membership-only | Resolved, but the figure now makes no argument (M10) | 07:49 |
| "even approximately" | Resolved | 08:113 |
| "receives" (A2) | Resolved | "deserves" gone |
| "decline to live inside it" | Resolved | 09:65 |

## 2. Mechanical counts and builds

| Check | Result |
|---|---|
| Pages | 134 |
| Overfull boxes | 0 |
| Undefined references | 0 |
| Underfull | 57 (56 `\vbox`, 47 at badness 10000; 1 `\hbox` at 08:125) |
| Floats | 8 "`h` changed to `ht`" |
| `make epub` + `epubcheck` | silent, exit 0 |
| Em-dash scan | 0 hits |

`count_patterns.py` (30 files, about 27,718 words): something 16, just 4, really 3, very 5, actually 4, simply 3, merely 12 (July: 4; all scoping uses), filter words 0, adverb tag 1 (false positive, Crane epigraph).

Scoping-formula counts (Picture A/B, occurrence(s), self-location, view-independent(ly), adopts no/none/neither, program weight(s), reference machine, admissible, interpretation-free/independent), detexed, pre-revision `a99fd78` vs now:

| Chapter | Before | After | Words before to after |
|---|---|---|---|
| Preface | 0 | 3 | 432 to 303 |
| Ch 4 | 0 | 4 | 1892 to 1726 |
| Ch 5 | 1 | 4 | 2214 to 1785 |
| Ch 6 | 1 | 20 | 1841 to 1405 |
| Ch 7 | 1 | 23 | 1866 to 1620 |
| Ch 8 | 1 | 20 | 2416 to 1950 |
| Ch 9 | 1 | 19 | 1951 to 1364 |
| Ch 10 | 0 | 26 | 1989 to 1305 |
| Ch 11 | 2 | 6 | 1665 to 1338 |
| Ch 12 | 0 | 7 | 1170 to 856 |
| Ch 13 | 0 | 4 | 1312 to 1017 |
| Ch 14 | 0 | 7 | 1061 to 804 |
| Ch 15 | 0 | 7 | 830 to 632 |
| A3 | 2 | 12 | 657 to 387 |

"cut"/"cuts" per chapter: Ch2 7, Ch6 10, Ch7 8, Ch8 0, Ch10 0, Ch11 0, Ch12 1, Ch13 2, Ch14 2, Ch15 1. The spine sentence appears once (02:123). "the book [does not / declines / adopts / holds / takes / will not]": about 39. Self-labelled honesty: 13.

Word counts (detex): Part I 8,559 (target ~7,500); Part II 7,644 (~8,000); Part III 4,647 (~8,000; was 6,038 before July); Appendices 2,927 (about 14% of body); Notes 871.

## 3. Findings

### HIGH

**H1. Chapters 6 to 15 read as a disclaimer register.** Each caveat is stated three to six times. Ch 8's Everett caveat appears at 08:19, 08:23, 08:25 + footnote, 08:56 caption, 08:60, 08:62, then the Born comparison disclaims three more times (08:66, 08:68, caption 08:92). Ch 9 restates per-entry caveats in 09:63, inside the boxed postulate at 09:82, and again at 09:87-89. Ch 5 says the same thing in three consecutive paragraphs (05:186, 05:188, 05:190). Rule: state each caveat once where its object first appears; afterwards refer back in a clause. Model: 08:149. Suggested rewrite for 08:23-25 + 08:60-62: "There is a multiplicity much closer to hand, if you read quantum mechanics the way Hugh Everett did. On that reading the wave function never collapses: an observer becomes correlated with every outcome, and decoherence keeps the outcomes from interfering, so each behaves like a separate history. The experiments confirm quantum predictions; they do not choose Everett's reading over its rivals. The book uses it as a landmark, not as evidence, and nothing later rests on it." Suggested one-paragraph 05:186-190: "The results are settled mathematics when their hypotheses stay attached, and together they make $M$ a distinguished ideal for universal prediction. They are not a proof of *the* uniquely rational prior: Kraft permits the short-program preference, fair bits supply it, and dominance gives it a remarkable guarantee. Reading program weights as facts about what exists would be a separate move. The next chapter names it."

**H2. Ch 10 states its thesis almost entirely as negations; the book's vocabulary is absent.** 10:21 "The framework is built in layers. The distinctions among them are the thesis's guardrails."; 10:23 "Neither claim says that every output exists, and neither assigns probabilities to observer occurrences."; 10:25 "This is the book's title."; 10:109 "The thesis is stated. The book's title is on the page." "Cut" occurs 0 times. TOC short title drops the article ("Indifference of Description"). Suggested opening: "Here is the indifference of description. You can carve the Library into worlds, systems, and selves in endlessly many ways, and nothing in it marks one carving as the right one. $M$ can tell you which programs best predict your data. It cannot tell you where the joints are, because there are none. There are only the cuts you make, including the one you call *I*. / Three things this does not do, stated once so the rest of the chapter can stop saying them: it does not say every output exists, it does not say which occurrence is you, and it does not derive the Born rule." Delete 10:109; fix the short title.

**H3. The closing's "cold" became a caveat summary; its cadence was lost.** 15:21 "Gather the cold first. $M$ weights candidate programs, relative to a machine, but supplies no observer-occurrence measure and selects no system as real. ... Everett is optional." Pre-revision ended "No one above. No reason beneath. The room is as cold as the book can make it, and the book has not warmed it with anything untrue." Pre-revision 15:27 "The structure does not require it. The structure does not reward it. The structure does not notice." now reads "The formalism does not require or reward it." A5:19 still paraphrases the old triad and attributes it to "its own text". Suggested 15:21: "Gather the cold first. The measure ranks programs; it does not rank you, and if many patterns match you, it cannot say which one you are. Nothing marks this system as the real one, and the book has not been able to tell you whether the Library exists at all; that the question stays open is part of the cold. There is no view from the top, because every view is a cut. Underneath, no theorem says why there is anything. No privileged view above. No reason beneath. The room is as cold as the book can honestly make it, and it has not been warmed with anything untrue." Restore the triad at 15:27. At 15:33: "Whether anything greater sees it, the book cannot say. We see it."

**H4. Part III is too short and abstract to carry the convergence.** 4,647 words; Ch 14 804, Ch 15 632. The convergence is one paragraph that disclaims itself (14:37 "This does not prove that many selves or worlds exist. ..."). 02:109 promised "Chapter 14 returns to this seriously". 14:53 hedges the payoff ("helps turn"). No figure in Ch 11-15, though direction.md plans one for Ch 14. Suggested 14:37: "Who am I? Where am I? What world is this? Each question asks for a boundary, and each boundary is drawn by the one asking. The self is a cut; so is the index; so is the system you call the world. This is the cut Chapter 2 said you would meet three times, and it was one cut all along. There are no joints. There are only the cuts you make, and one of them is you. (Nothing here says many selves or worlds exist; it says the line around this one was drawn, not found.)"

### MEDIUM

- **M1. Ch 4's "next attempt" is the same weighting.** 04:23 "fair bits give each of the $2^n$ strings weight $2^{-n}$"; 04:31 "The next attempt: weight each string $s$ by $2^{-|s|}$"; 04:33 "This also diverges." Revision removed the "uniform" label that made the first attempt look different. Suggested merge: "At any fixed length $n$, fair bits give each of the $2^n$ strings weight $2^{-n}$, and the level sums to exactly $1$. But there are infinitely many levels, each contributing $1$: over all finite strings the total is $1+1+1+\dots$, unbounded. The trouble is not that probability demands a preference for short strings. It is that a stream of bits has no way to say where one string ends. The fix is to use only a *prefix-free* subset of the strings." Delete 04:31-33.
- **M2. Part I promises what later chapters withdraw.** 01:31 fn (LLMs "bounded computable approximations"); 01:92 "What answers it"; 03:177 "That was the consensus until the 1960s."; 02:57 fn (Turing "showed that everything that can be computed at all can be produced..."). Rewrites: 01:31 "finite, practical cousins of the idealized predictor this book is about; Chapter 5 says how close the resemblance runs."; 01:92 "The best answer anyone has found is..."; 03:177 "That was where things stood until the 1960s, when a different kind of answer appeared."; 02:57 "showed that a single universal machine can run any program you give it; run it on all programs in interleaved steps and it produces everything that is computable."
- **M3. Ch 5 "The bedrock in the wild" opens "It is no longer abstract." and then spends five paragraphs denying connection.** Reduce to one paragraph.
- **M4. Ch 6's Occam section calls the objection a confusion, then concedes it is not refuted.** 06:79 vs 06:123-131 and caption 06:119.
- **M5. Ch 7 calls the refutation of "nothing" induction, then "thinner than the inductions".** 07:104-106. It is refutation, not induction.
- **M6. Ch 8 adjacent paragraphs contradict on "majorities".** 08:107 vs 08:109; also 02:97.
- **M7. Two ghost passages answer the July review, not the reader.** 09:25 (Turing jumps appear nowhere else); A1:45 "The book does not condition $m_V$ as though it were $M_U$...". Rewrite 09:25: "Computability adds a narrower point, not a second proof: no computable procedure can decide, for every program, whether it halts. That limits what any computable mind can know about the Library; it does not by itself rule out a greatest mind, and the argument above does not need it." Rewrite A1:45: "Keep them apart: $m_V$ answers 'how likely is exactly this output?', $M_U$ answers 'how likely is an output that begins this way?', and only the second is the predictor."
- **M8. Ch 11 opens with two disclaimers and a rule; QI caveats precede the argument; "MWI" never expanded.** 11:17-27, 11:45, 11:57-69.
- **M9. Ch 13 table vignette.** 13:61 "the coffee went cold an hour ago" vs 13:63 "the mug is still warm enough to hold"; "The person holding it" points at "the sentence"; abstractions intrude ("The labels *you*, *them*, and *us* are models"; "No global measure confers value on the staying").
- **M10. Figures contradict their captions; the recurring cut figure is never drawn.** Fig 8.2 identical bar heights joined by $\sim$ while the caption says the formulas differ; Fig 10.1 "no weights supplied" occurrences drawn at six radii; Fig 5.3 rival diverges unboundedly while the caption says many learners do well; Fig 7.1 caption tells the reader to ignore the picture; direction.md's "same structure carved two different ways" figure appears nowhere.
- **M11. Label collisions.** Fig 9.1 dashed arrow strikes through "Boltzmann brain" (director confirmed on render); Fig 5.3 line crosses "other learner"; Fig 10.1 overprint and in-figure hyphenation; minor in Fig 1.1, 3.1, 4.4.
- **M12. Notes claim "No marker interrupts the chapters" (96:5) but the body has 15 footnotes**, including the Ch 12 safety note.
- **M13. Front-matter safety copy uses jargon; "turn to *Resources*" has no page reference or link** (PDF and EPUB). Preface 00:8 caveat front-loaded.
- **M14. Back matter reasserts realism and has stale references.** 99_about:9; 98_reading:45; 99_also_by:13; 98_reading:17 "Chapters 5 and 9".
- **M15. The EPUB contains none of the 23 figures**; `kdp/epub-filter.lua:75-95` turns each into "[Diagram: caption]" (director confirmed: 11 xhtml files, only image is the cover). Rasterize the TikZ figures for the EPUB.
- **M16. Stretched vertical whitespace.** 47 underfull vboxes at badness 10000 from `\widowpenalty=10000`/`\clubpenalty=10000` under flush bottom. Add `\raggedbottom` or lower the penalties.

### LOW

| ID | Location | Quote | Fix |
|---|---|---|---|
| L1 | 98_reading:29 | "Chapter 14 is deeply indebted to his." | "to it." |
| L2 | 03:175 | "For two and a half centuries" | "For two centuries" |
| L3 | 03:165 | "about $0.030$" | 0.031 |
| L4 | 03:167 | "Cox's theorem cannot adjudicate." | "Cox-style results" |
| L5 | 96:78 | key "This is quantum immortality" | match 11:65; add Ch 10 Notes section |
| L6 | 09:69 | "What if you refuse" | "If you refuse Everett" |
| L7 | 12:53 | "Death is softened as a perfectly sharp metaphysical boundary and undimmed as a loss." | "Death loses its sharp metaphysical edge and keeps its full weight as a loss." |
| L8 | 15:33 | "The author wrote this book" | "I wrote this book" |
| L9 | PDF p.102 | one-word last line "done." above "Stay." | tie `be~done` |
| L10 | 10:101 | "people one loves?" | "people you love?" |
| L11 | 08:119 | "$I$ is one of the local theories." | `\emph{I}` |
| L12 | 04:159 | "$U(p) = x*$" | `x{*}` |
| L13 | 06:40 | "$M(x)$ is the probability you should assign to seeing $x$." | "weight" |
| L14 | every epigraph | dead `minipage` with commented `\includegraphics` | one `\chapterepigraph` macro |
| L15 | transitions | "The next chapter takes up ..." | every hand-off happens twice; keep one side |

Also checked: mixed accent encoding renders identically (refuted as a defect). Polish: 13 self-labelled "honest" instances; 21 of 134 pages are blank versos (`openany` would recover several); 99_about:5 research line.

## 4. Strengths to protect

Ch 1:17-23 opening voice; Ch 2:39-41 and 02:123 (the best sentence in the book); figures as proofs (Fig 3.2 coin counting, "Counted, not derived."; Kraft tiling 04:75-79, "That is Kraft."; dominance bars Fig 5.1); Ch 9:23, 9:27, 9:89; Ch 10:103; Ch 11:87-93; Ch 12:29, 12:47; Ch 13:57, 13:65; Ch 15:29, 15:35, "Stay."; Ch 8:149 (caveat done right); A4:9; A5:19; Resources (rendered cleanly, p.125); About:9 "Everyone is dying."

Rendered evidence (scratchpad): `f9-071.png` (Fig 9.1), `fig10-077.png` (Fig 10.1), `figs/sheet5.png` (Figs 8.2, 8.3, 13.1), `figs/sheet0.png` (Fig 2.1 page void), under `/tmp/claude-1000/-home-spinoza-github-literature-drafts-the-library/52ed8b06-47e9-40ab-937b-8c8116c570d5/scratchpad/`.
