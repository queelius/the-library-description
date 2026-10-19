# Revision Report

**Date**: 2026-10-18
**Review source**: `.worldsmith/reviews/2026-10-18/review.md` (with `consistency-auditor.md`, `craft-auditor.md`, `voice-auditor.md`, `structure-auditor.md`)
**Base commit**: 3b92ad8 (nothing committed; every change is in the working tree for the author's review)
**Mode**: direct, all tiers (BLOCKING, HIGH, MEDIUM, LOW), including the Tier 2 restoration of Parts II and III, per the author's instructions. The license decision (CC BY-NC-SA 4.0) was made by the author.
**Findings processed**: 63 total (1 BLOCKING, 8 HIGH, 24 MEDIUM, 30 LOW). 60 fixed and verified (two of them, M-22 and L-15, carry a check against the printed sources that only the author can do); 1 fixed by author decision (H-4); 2 deferred to the author (L-19, L-30). 0 structural defers, 0 retry failures. Verification raised 1 + 5 + 4 + 3 MEDIUM and 9 + 12 + 14 + 9 LOW follow-ups (voice, structure, consistency, craft); all were fixed in one retry pass, except those needing the author, which are in Decisions Needed.

## Verification Summary

| Verifier | Scope | Result |
|---|---|---|
| consistency-auditor (formal) | B-1, M-1, M-2, M-4, M-5, M-20, M-22, H-5, L-1 to L-8, L-11, L-26; every changed formal statement checked against Li and Vitanyi and Hutter | All RESOLVED. 0 HIGH, 3 MEDIUM, 9 LOW follow-ups, all fixed in the retry pass (a dangling "no computable canonical index" inference, a "self-delimiting" residue, machine notation in A1's invariance section; LOW wording and dating items) |
| voice-auditor | H-1, H-2, M-7, M-9, M-10, M-11, V5, V6, V11-V13, V16, V19, H-8 (voice), Appendix C | All RESOLVED, including both release conditions. 1 MEDIUM (Figure 13.1 drew the strand labelled "you" ending) and 9 LOW follow-ups, all fixed |
| structure-auditor | H-6, H-7, H-8, M-4, M-15, M-16, M-17, L-21, L-22, L-28 | H-7, H-8 and the M/L items RESOLVED; H-6 and L-28 PARTIAL before the retry pass. 5 MEDIUM, 12 LOW follow-ups (Ch 13/14 overlap, Ch 10's back half, Ch 2's metaphor note, footing triplication, the Worldlines template in Part III), all fixed except three authorial items now in Decisions Needed |
| consistency-auditor (surfaces) | H-2, H-3, H-4, M-3, M-6 to M-9, M-11, M-15, M-16, M-21, M-24, L-12 to L-20, L-29, A5 quotations, overclaim sweep of every surface | All RESOLVED except M-24's page count (set after the final build) and L-14/L-15 (fixed in the retry pass). 4 MEDIUM, 14 LOW follow-ups; KDP Select versus the open license and topic keywords went to Decisions Needed; the rest fixed |
| craft-auditor | H-6, H-7, M-1, M-12 to M-14, M-18, M-23, L-23 to L-28, figures, EPUB | H-7, M-1, M-12, M-14, M-18, M-23 and the L-items RESOLVED; H-6 PARTIAL and M-13 PARTIAL before the retry pass. 3 MEDIUM (a one-line page, the buried spine, restatement clusters) and 9 LOW follow-ups, all fixed |
| craft-auditor (retry check) | the retry edits themselves | 3 small regressions introduced by the retry pass (a lost referent in Ch 13's last line, a run-on in Appendix C, an Appendix E pointer attached to the wrong sentence) and Figure 13.1's caption contradicting its drawing, plus minor wording; all fixed and rebuilt. Protected lines verbatim; safety notes route to Resources and assume no one is available; no forbidden claims; no runt pages |

Measured before and after (base 3b92ad8 versus final): scoping vocabulary in the body 141 to 95; "cut"/"cuts" 42 to 99 uses, now present in every chapter that had none; the spine sentence 1 to 5 appearances (Ch 2, 6, 10, 14, 15), each at its correct footing; negations per 1,000 words (craft's method) Ch 10 26 to 15, Ch 11 24 to 18, Ch 12 35 to 27, Ch 14 20 to 11 (Ch 15 rose by design, with the restored "does not require / reward / notice" triad); Part III about 4,650 to 6,314 words; underfull vboxes 66 to 0.


## Files Touched

- lore/foundations.md
- lore/outline.md
- lore/themes.md
- lore/index.md
- lore/direction.md
- lore/appendices.md
- lore/landing.md
- lore/information_hazards.md
- lore/grace.md
- lore/implications.md
- the-library.tex
- figures/figure-preamble.tex (new)
- chapters/00_copyright.tex
- chapters/00_preface.tex
- chapters/00_note.tex
- chapters/01_the_question.tex
- chapters/02_the_library.tex
- chapters/03_the_indexing.tex
- chapters/04_the_prior.tex
- chapters/05_the_optimality.tex
- chapters/06_the_slip.tex
- chapters/07_the_inhabited_library.tex
- chapters/08_the_observer.tex
- chapters/09_the_limits.tex
- chapters/10_indifference_of_description.tex
- chapters/11_continuation.tex
- chapters/12_the_dissolution_of_death.tex
- chapters/13_love_across_branches.tex
- chapters/14_the_pattern.tex
- chapters/15_the_pattern_describing_itself.tex
- chapters/A0_appendices.tex
- chapters/A1_bedrock.tex
- chapters/A3_anthropics.tex
- chapters/A4_refusing.tex
- chapters/A5_objections.tex
- chapters/96_notes.tex
- chapters/97_resources.tex
- chapters/98_reading.tex
- chapters/99_about.tex
- chapters/99_also_by.tex
- README.md
- kdp/metadata.yaml
- .zenodo.json
- CITATION.cff
- kdp/epub-filter.lua
- kdp/render-figures.lua (new)
- kdp/epub-postprocess.py
- kdp/kindle.css
- Makefile
- .gitignore

## Method

1. **Lore first.** A lore-writer pass corrected `foundations.md` (the definition of $M$, the coding theorem, the Born seam, the theorem-versus-postulate split, the five footing names, a caveat-once discipline rule) and purged the pre-revision residue from `outline.md`, `themes.md`, `index.md`, `direction.md`, `appendices.md`, `landing.md`, `information_hazards.md`, `grace.md`, and `implications.md`, before any manuscript change was applied.
2. **Manuscript.** Seven scene-writer passes drafted Chapters 1-15 and the Appendix C addition against a shared brief of corrected canonical statements and a forbidden-claims list. Drafts were extracted from the transcripts and diffed against the originals so that only intended changes landed (TikZ code was preserved byte for byte except where a figure fix was intended). The orchestrator made the appendix, front-matter, back-matter, Notes, figure, build, and release-surface edits.
3. **Verification.** Four reviewer specialists verified the result (consistency twice: once on the formal mathematics, once on lore, surfaces, citations and Notes; craft; voice and safety; structure). Every MEDIUM and LOW issue they raised was fixed in a retry pass and re-checked by build and grep.
4. **Validation.** `make` (clean), `make epub`, `epubcheck`, `make wordcount`, and page-by-page renders.

## Fixed (Verified)

### B-1. The definition of Solomonoff's $M$ (BLOCKING)
- **Original finding**: Chapter 4 and `foundations.md` defined $M$ on a halting prefix machine (an object that dominates no computable measure); Appendix A used a "monotone prefix machine" with an unrestricted sum that diverges.
- **Before** (Ch 4): "Let $U$ be a universal Turing machine whose input set is prefix-free: every halting input is a complete program ... $M(x) = \sum_{p : U(p) = x*} 2^{-|p|}$." (A1): "Fix a universal monotone prefix machine $U$ ..."
- **After** (`foundations.md` sec. 3, then Ch 4, A1, Ch 5:7, Ch 6:15 and Fig 6.1, `direction.md`, `outline.md`, `appendices.md`): "Fix a universal monotone machine $U$: it reads its program one bit at a time, never going back, and writes its output one symbol at a time, never erasing. Feed it fair coin flips. If its output comes to begin with $x$, there is a first moment it does; the bits read up to that moment form a minimal program $p$ for $x$." $M(x)=\sum_{p:U(p)=x{*}}2^{-|p|}$ over minimal programs, equivalently $\lambda\{\omega : U(\omega)\text{ begins with }x\}$. Ch 4 adds why minimality matters (the sum over all programs re-counts the same flips), why the minimal programs are prefix-free (so Kraft bounds the sum), and a footnote on monotone machines (Li and Vitanyi sec. 4.5; Zvonkin and Levin 1970) explaining that halting machines define exact-output $m_V$ instead. A1 gives both forms, the agreement argument, and the halting counterexample. Figure 4.2 and 4.3 captions and axis label now say "minimal programs".
- **Verified by**: consistency-auditor (formal pass), independently against Li and Vitanyi and Hutter.
- **Verification result**: RESOLVED. The $\lambda$ form, prefix-free argument, halting counterexample, dominance sketch, and invariance all checked.

### H-1. Chapter 11 safety (HIGH, release condition)
- **Original finding**: 11:75 cast the reader as killed by a car; 11:91 offered "step into the street" as a choice the framework does not rank, in the quantum-immortality chapter; no safety note; Notes named "quantum suicide" without caution.
- **Before**: "A third-person observer in your branch watches you cross the street, get hit by a car, and not survive." / "It does not say whether to step into the street or stay on the curb."
- **After**: Chapter 11 no longer contains the car scene. The idea is stated impersonally ("Suppose every event that could end a life also has outcomes, on Everett's reading, in which the person survives ... This is quantum immortality."), its premises in one sentence, then: "One thing plainly, because this argument has reached people at their worst moments. Nothing in it is a reason to take a risk with your life. The framework permits the argument to be stated; it does not ask you to take it as your situation. If this has stopped being abstract for you, put the book down and turn to *Resources*, at the back of the book, now." (a live link). The choosing example is now "It does not say whether to take the job or turn it down, whether to make the call or let it ring." The curb scene appears once, in Chapter 12, in the third person, as the review suggested. The Notes entry adds: "The chapter's caution applies here too: the thought experiment is not a reason to take any real risk." The premise-by-premise analysis moved to Appendix C and ends with its own plain safety sentence.
- **Verified by**: voice-auditor.

### H-2. About page, KDP blurb and bio
- **Before**: "not knowing which index you are about to find yourself at" / "He wrote it because the measure is real, and the people inside it deserve to be seen" / blurb: "You are a pattern instantiated at many indices, in many systems, under many possible laws, and a measure weights all of it and singles out none of it."
- **After**: "not knowing what the next scan will show" / "He wrote it because the people around him deserve to be seen, and the finite stretch where his life runs alongside theirs is the stretch he has." (applied to both `99_about.tex` and the KDP `author_bio`). Blurb: "Many descriptions fit what you have seen; the mathematics weights the descriptions without saying which is real, or which one is you. There are no joints. There are only the cuts you make." "He did not write it because he is dying. Everyone is dying." is unchanged.
- **Verified by**: voice-auditor, consistency-auditor (surfaces pass).

### H-3. README
- **Before**: "Bayes' theorem (Cox's uniqueness)"; "prefix-free codes turn length into probability"; "asymptotically optimal"; "every branch of the wavefunction is equally real"; "forced toward, because Kraft makes short descriptions scarce"; "the Born measure and the universal prior are the same kind of object"; "a 138-page PDF"; "computational eternalism".
- **After**: "What This Book Is" rewritten from `foundations.md` around the five footings (theorem, construction, finitude, postulate, optional additions), with the postulate box verbatim, Kraft as admissible-not-compulsory, dominance up to a source- and machine-dependent constant, Everett as a landmark, and the Born question left to quantum theory. Status paragraph and the suite description ("the indifference of geometry, of measure, and of description") updated; build section documents the EPUB figure step.
- **Verified by**: consistency-auditor (surfaces pass).

### H-5. Part I promises
- **Before / After**:
  - 01:31 fn: "as later chapters show, they are bounded computable approximations" -> "finite, practical cousins of the idealized predictor this book is about; Chapter 5 says how close the resemblance runs."
  - 01:92: "What answers it is" -> "What gives it a precise, conditional answer is ... developed in the 1960s and 1970s ... Chapter 5 states the condition, and what the answer has to say to the chicken."
  - 02:57 fn: Turing "showed that everything that can be computed at all can be produced by a single finite machine" -> "showed that a single universal machine can run any program you give it; run it on all programs in interleaved steps and it produces everything computable ... That every effective procedure is of this kind is the Church-Turing thesis: a thesis, not a theorem."
  - 02:99: now inside "If your universe is computably describable (Chapter 6 declines to take that for granted)".
  - 03:175-177: "For two and a half centuries ... That was the consensus until the 1960s." -> "For two centuries after Bayes, the choice of prior was contested. Laplace started from indifference ... Jeffreys looked for priors that would not change when the problem was redescribed ... The debate did not end ... In the 1960s a new kind of candidate appeared."
  - Paired with a new Ch 5 section, "What this says to the chicken" (the log-loss bound as a finite budget of total excess surprise, with uniformity replaced by a computability assumption that is itself an assumption).
- **Verified by**: consistency-auditor (formal pass). RESOLVED (all five).

### H-6. The disclaimer register
- **After**: `foundations.md` gains discipline rule 9 (state each caveat once, where its object enters; refer back by name) and five standard footing names, now used identically in A0, A5, Ch 7, Ch 9, Ch 10. "The missing occurrence measure" is defined once at full strength in Ch 7 and referred to by name thereafter (Ch 8, 10, 14, A5). Ch 5:186-190 collapsed to one paragraph; Ch 8:19-68 collapsed to one Everett paragraph and one Born paragraph; Ch 9 per-entry caveats removed in favor of one framing sentence; the preface clause rewritten; Ch 6 concessions merged into one; Ch 10 rebuilt (see H-7). The "does not console" turn is made once, at full strength, in Ch 12 ("Conditional copies do not console."), with Ch 13 referring back.
- **Verified by**: craft-auditor, structure-auditor.

### H-7. The spine and Chapter 10
- **After**:
  - Ch 2:113 keeps "There are no joints. There are only the cuts you make." verbatim and now separates the Part I fact ("no computable procedure sorts the Library by how cheaply each thing in it can be said") from the stronger reading, which "Chapter 6 will ask you to take ... as a commitment, and Chapter 7 will show you what refusing it costs."
  - Ch 6 quotes the spine back at the postulate: "Chapter 2's inversion is where this was first felt; here it becomes a commitment." Box text canonical and identical to Ch 9's.
  - Ch 8 ends on ontology (c): "Choosing which picture is the real one is itself a cut ... and the postulate privileges no cut. That is why the book holds the question open rather than answering it."
  - Ch 10 opens with the spine, then: "You can carve the Library into worlds, systems, and selves in endlessly many ways, and nothing in it marks one carving as the right one ... The indifference is over descriptions, and the description is yours." One caveat paragraph; a positive five-footing cascade replaces the fifth Born rerun; 10:109 deleted; TOC entry now "The Indifference of Description".
  - Ch 14 and Ch 15 reprise the spine. "Cut" now appears in Ch 4, 5, 8, 10, 11 (previously 0).
  - The recurring cut figure is drawn: Figure 7.1 ("one carving" / "another carving" of one field of points) replaces the old membership-only figure, and Figure 14.1 carves the same field with three nested boundaries (*I*, *here*, *this world*). The point set is defined once in the shared figure preamble so both figures carve literally the same structure.
- **Verified by**: structure-auditor, craft-auditor.

### H-8. Part III
- **After** (detexed words, final: Ch 11 1,494; Ch 12 985; Ch 13 1,255; Ch 14 1,667; Ch 15 913; Part III 6,314, up from about 4,650):
  - Ch 11 rebuilt around "The chooser is a cut": the boundary drawn around a decision, a brain, a person with a history, a family, a culture; Schopenhauer's regress stopped by drawing a line; compatibilism kept; a new "Responsibility" section (responsibility attaches to a drawn boundary, including the merciful act of drawing it narrower); Everett appears once as "One optional lens"; QI stated plainly with the safety note; analysis moved to Appendix C. Ends: "Draw it where someone can answer."
  - Ch 12 makes the "does not console" turn once, at full strength; the safety note is in the body; "your branch" removed.
  - Ch 13: the vignette continuity fixed; a new closing section "We" ("So *we* is a cut ... We make them anyway.").
  - Ch 14: "One cut, three times": the index (the 409 coin trials sorted by different questions), the system (the kitchen as four objects or one patch of matter), the self (skin, body-and-history, relationship; the rubber-hand illusion), then the convergence and Figure 14.1.
  - Ch 15: "Gather the cold first ... Underneath, nothing in the framework says why there is anything. No view from above. No reason beneath." The triad restored: "The structure does not require it. The structure does not reward it. The structure does not notice." Rage, then "Call it equanimity, if the word can be made that small."; "I wrote this book as that commitment, performed."; the fellow-sufferer callback; 15:29 and 15:35 verbatim; "Stay."
- **Verified by**: structure-auditor, voice-auditor, craft-auditor.

### M-1 to M-24
- **M-1** (Ch 4 ladder): uniform weight over all strings is impossible; fair-coin length weights sum to 1 per level but levels overlap ("Flips that begin with $01$ also begin with $0$"); prefix-free codes remove the overlap. Consistency: RESOLVED.
- **M-2** (coding theorem): "Let $V$ be a universal *prefix* machine ... Because $V$ is universal, the coding theorem says ..." (Ch 4, A1, `foundations.md`). RESOLVED.
- **M-3** ("lawless majority"): 08:109 -> "in lawless structures"; 02:97 -> "Of the valid ones, many run forever"; `index.md` fixed.
- **M-4** (Ch 5 LM section): five paragraphs -> one, keeping the earned link (cross-entropy as cumulative log-loss) and a short AIXI mention.
- **M-5**: "Every distribution a statistician writes down with computable parameters."
- **M-6** (AIXI in Further Reading): "an uncomputable ideal that pairs a universal mixture with expected-reward planning. Its optimality claims are real but depend on the chosen universal machine and on which notion of optimality you mean, a point Jan Leike and Hutter later made sharply"; "Chapters 5 and 9" -> "Chapter 5". Notes cite Leike and Hutter (2015).
- **M-7**: Further Reading: "each read through one interpretation (the block universe, and Everett's), arrive near where this book arrives: an indifferent structure, and the warmth we choose to give each other inside it." Also By: "Relativity read as a block universe", "Quantum mechanics read the Everettian way". KDP blurb likewise.
- **M-8**: "on that reading" added once each at 12:21, 12:45, 13:17, 14:21; "your branch" removed from Part III.
- **M-9** (Metzinger): "Metzinger goes further than this book does. If Chapter 14 left you curious, he is the next step; if it left you unsettled, there is no hurry."
- **M-10** (crisis note): now opens with the emergency route and contacts (988; 9-8-8; Samaritans 116 123; findahelpline) and a live link to Resources; the metaphysical reassurance replaced with "Whatever turns out to be true about the universe, that idea is not a verdict on you, and this book does not argue for it."; "No theorem in these pages is a verdict on whether you should live" -> "Nothing in these pages gives that permission: not the mathematics, not the structure." The Resources page gained only an anchor label and the inclusive "if you can, stay with another person, or stay on the line"; its routing and services are unchanged.
- **M-11**: Notes header corrected ("These notes carry no markers in the text ... The few footnotes in the chapters are asides the argument needed on the page"); the Ch 12 safety footnote is now body text, addressed to readers who may have no one ("Contact another person or a crisis line").
- **M-12** (figures vs captions): Fig 8.2 bars now differ in count and pattern, joined by "same role, different domains" instead of $\sim$; Fig 10.1 occurrences drawn at one size ("drawn alike because nothing has been supplied to tell them apart"); Fig 5.3 rival relabeled "a learner whose models leave out $\mu$" with a caption that matches; old Fig 7.1 replaced by the two-carvings figure.
- **M-13** (label collisions): Fig 9.1, 5.3, 10.1 (also its in-figure hyphenation), 1.1, 3.1, 4.4 relabeled; checked on renders.
- **M-14** (EPUB figures): every TikZ figure is now rendered to PNG for the EPUB by `make epub-figures` (`kdp/render-figures.lua` reads the TikZ from pandoc's AST and compiles it against the same `figures/figure-preamble.tex` the print book loads; re-renders only changed figures). `kdp/epub-filter.lua` places each image with a numbered caption. Two pre-existing EPUB defects found on the way were fixed: pandoc numbered figure and appendix references per Part (Fig 8.2 appeared as "3.2", Appendix A as "Appendix 6"); the filter now rewrites reference text from one numbering that matches print. The post-processor's part labels (left over from *Worldlines*) now read Part I / II / III.
- **M-15** (lore residue): see Propagation.
- **M-16**: A4:3 cites Chapter 7; Ch 9's section retitled "Without Everett"; `outline.md` and `appendices.md` agree.
- **M-17**: Ch 11's opening now starts from a small decision; "MWI" expanded once as "the many-worlds interpretation"; QI claim stated before its premises.
- **M-18** (vignette): coffee stays cold, "And the mug is still in both hands.", "The person holding the mug is this one"; the two abstract sentences moved out of the scene; 13:65 verbatim.
- **M-19**: Church-Turing digression moved to a footnote; "The objection rests on a confusion" -> "The objection mixes two kinds of cost, and the Library keeps them apart."; concessions merged into one.
- **M-20**: 09:25 and A1:45 replaced with the craft texts.
- **M-21**: Notes gain a Ch 10 section (Crane, *War Is Kind*, poem XXI) and sources for the Maxwell, Spinoza, Schopenhauer, Epicurus, and Rilke epigraphs; the Ch 11 key matches the body; new entries for claims added in this pass (Laplace and Jeffreys; monotone machines; Hutter 2007 on Hume; Wallace on branch counting; Libet and Soon; the rubber-hand illusion; Parfit's empty question).
- **M-22**: the Ch 4 epigraph no longer contradicts the chapter: "[T]he problem dealt with is the extrapolation of a very long sequence of symbols.... Almost all, if not all problems in induction can be put in this form." (Solomonoff 1964, Part I summary). The exact wording should be checked against the printed page (Decisions Needed, F-M22).
- **M-23**: `\raggedbottom` added; underfull vboxes 66 -> 0, with widow and orphan control unchanged.
- **M-24**: KDP page counts and spine note set to the final PDF (140 pages); keyword "simulation hypothesis personal identity" -> "Parfit personal identity and the self"; "there is no one above it who does" -> "no view from above settles it".

### LOW
| # | Before | After |
|---|---|---|
| L-1 | "about $0.030$" | "about $0.031$" |
| L-2 | "Russell, two centuries after Hume" | "more than a century and a half after Hume" |
| L-3 | "The average gap therefore goes to zero." | "the guaranteed excess per observation is at most $(K(\mu)+O(1))/n$, which shrinks toward zero ... Averaged over sequences drawn from $\mu$, the same gap is a Kullback-Leibler divergence" |
| L-4 | "summed over all programs producing the output $x$" | "each minimal program whose output begins with $x$" |
| L-5 | "The library is large, but it is not infinite." | "However far the shelves run, the number of distinct books is finite." |
| L-6 | "You are an indexed point in it." | "An index is a pointer into it, and you have to build your own." |
| L-7 | "conditionalization and Bayes' theorem follow exactly" | "Bayes' theorem follows exactly. Updating by it ... called conditionalization, is a further norm" |
| L-8 | "cumulative expected log-loss" | "the cumulative excess log-loss ... and therefore its expectation, the Kullback-Leibler divergence $D(\mu\,\|\,M_U)$" |
| L-9 | "excluded by induction" | "refuted by the existence of the observer ... a refutation, not an induction" |
| L-10 | Fig 6.1 "the probability you should assign" | "the weight the construction gives"; footing label "Theorem and construction only." |
| L-11 | "Why should this one be privileged?" / "The reason to use $M$ is a theorem." | "Why should this one get special standing?" / "The best reason to take $M$ seriously is a theorem." |
| L-12 | "written 1902 to 1908" | "written 1903 to 1908" |
| L-13 | silent elisions (Wheeler, DeWitt, Spinoza, Rilke) | Wheeler marked with ellipses and noted; DeWitt "on earth" restored; Spinoza (Elwes) "mere human figments"; Rilke "the ultimate, the last test and proof," restored, translator named |
| L-14 | Epicurus "trans. Hicks" not Hicks's words; Schopenhauer paraphrase | Hicks's wording ("Death, the most terrifying of ills, is nothing to us, seeing that, when we are, death is not come, and, when death is come, we are not."); Schopenhauer attributed "after", with a note on Einstein's 1932 compression |
| L-15 | Borges translators mixed | Notes name both standard translations (Irby 1962, Hurley 1998) without assigning the quoted lines to one; author check in Decisions Needed |
| L-16 | L&V "everything technical"; speed prior 1997 | "the algorithmic information theory in this book"; speed prior "came a few years later" |
| L-17 | Weil line credited to *Gravity and Grace* | credited to her 1942 letter to Joe Bousquet |
| L-18 | "indebted to his" | "indebted to it" |
| L-20 | A5:13 objection uncorrected | reply adds: "the book never says the simple system is the one you find yourself in ... would need the missing occurrence measure of Chapter 7" |
| L-21 | postulate boxed twice, different wording | identical canonical box in Ch 6 and Ch 9 |
| L-22 | "return in Chapter 14" | sentence removed with the rebuilt opening |
| L-23 | "softened ... and undimmed" | "Death loses its sharp metaphysical edge and keeps its full weight as a loss." |
| L-24 | "The author wrote this book" | "I wrote this book" |
| L-25 | one-word last line "done." | `be~done` (checked on the render) |
| L-26 | "people one loves?"; `$I$`; `x*` | "people you love?"; `\emph{I}`; `x{*}` throughout |
| L-27 | 15 copies of a dead minipage with a commented `\includegraphics` | one `\chapterepigraph[width]{quote}{attribution}` macro; PDF verified pixel-identical on all pages against an equivalent non-macro build, and the EPUB epigraph AST unchanged |
| L-28 | double handoffs (10:113, 11:103, 13:81) | each handoff now happens on one side only |
| L-29 | stale outline epigraphs, "Backmatter 800", "twelve chapters" | updated in `outline.md` and `landing.md` |

## Fixed (User-Decided)

### H-4. Copyright page versus license
- **Original finding**: "All rights reserved" contradicted `.zenodo.json`, `CITATION.cff`, and README (CC-BY-NC-SA-4.0).
- **User decision**: the license is CC BY-NC-SA 4.0.
- **Fix applied**: `00_copyright.tex` now reads: "This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0). You may copy and redistribute it, and adapt it, for noncommercial purposes, provided you give appropriate credit and distribute any adaptation under the same license. To view a copy of the license, visit https://creativecommons.org/licenses/by-nc-sa/4.0/."

### Tier 2 restoration in scope
- **User decision**: the Parts II-III restoration is in scope for this pass.
- **Fix applied**: H-6, H-7, H-8 above.

## Decisions Needed

```yaml
deferred-judgments:
  - finding-id: F-L30
    location: kdp/metadata.yaml:114 (ai_content_disclosure)
    severity: LOW
    stake: high
    question: This revision applied agent-drafted prose across Chapters 1-15 (new passages in Ch 5, 10, 11, 13, 14, 15 especially); which AI disclosure should the KDP listing carry?
    original-finding: "L-30: 'Text generated without AI authorship. AI was used for editorial feedback and review.' The July and October revisions applied agent-written prose edits; confirm the disclosure matches KDP's AI-generated versus AI-assisted definitions."
    suggested-options:
      - label: Disclose as AI-generated
        consequence: Change the disclosure to say parts of the text were drafted with AI tools and then reviewed and edited by the author; accurate under KDP's definition if the drafted passages ship largely as written.
      - label: Rewrite drafted passages first
        consequence: You rewrite the agent-drafted passages in your own words before release, so the current disclosure stays true; slower, and the verified fixes must be re-checked after your rewrite.
      - label: Keep current disclosure
        consequence: No change; defensible only if you judge this revision's text to be AI-assisted rather than AI-generated under KDP's definitions.
    recommended: Disclose as AI-generated
  - finding-id: F-L19
    location: chapters/99_about.tex:5; kdp/metadata.yaml author_bio
    severity: LOW
    stake: medium
    question: Should the About page and author bio keep "His research is in information retrieval and Bayesian statistics", or reflect your current research?
    original-finding: "L-19: the About research line (information retrieval and Bayesian statistics) predates the author's current profile, which centers on AI, ML, and cybersecurity; author's call."
    suggested-options:
      - label: Update to current research
        consequence: "For example: 'His research is in artificial intelligence and machine learning, with Bayesian statistics underneath much of it, which is to say in prediction, and in the weighting of possibilities, which is to say in the subject of this book.' Applied to both About and the bio."
      - label: Keep the current line
        consequence: The line stays as written; its 'indexing ... weighting of possibilities' wit is intact but it describes earlier work.
      - label: Name both, past and present
        consequence: "For example: 'His research began in information retrieval and now centers on artificial intelligence ...'; keeps the indexing joke and is current."
    recommended: Update to current research
  - finding-id: F-CADENCE
    location: chapters/15_the_pattern_describing_itself.tex:11
    stake: medium
    question: The closing's restored cadence reads "No view from above. No reason beneath." instead of the pre-revision "No one above. No reason beneath."; keep the recomposed line?
    original-finding: "H-8 asked to restore 'No one above. No reason beneath.' The author's instructions allowed restoring or recomposing such lines only in forms consistent with current lore; Chapter 9 says the book has not disproved every possible greater mind, so the literal 'No one above' would assert more than the book argues."
    suggested-options:
      - label: Keep "No view from above"
        consequence: Echoes Chapter 9's "No view from the top"; claims only that no view is privileged, which is what the postulate gives.
      - label: Restore "No one above"
        consequence: Stronger cadence, but read literally it asserts that no greater mind exists, which contradicts Chapter 9 and foundations.md.
      - label: Recompose differently
        consequence: You supply a third wording; the triad and the rest of the paragraph stay as they are.
    recommended: Keep "No view from above"
  - finding-id: F-M22
    location: chapters/04_the_prior.tex:3-5 (epigraph)
    severity: MEDIUM
    stake: low
    question: The Chapter 4 epigraph is now a line from the summary of Solomonoff's 1964 Part I, quoted from memory by two specialists; will you check it against the printed page before release?
    original-finding: "M-22: the old epigraph ('a probability measure on the set of all possible sequences') could not be located and contradicted the chapter's semimeasure footnote. Replaced; exact wording unverified offline."
    suggested-options:
      - label: Verify and keep
        consequence: Check Information and Control 7 (1964), p. 1, and add the page number to the Notes entry.
      - label: Replace with another line
        consequence: Choose a different verified epigraph (Solomonoff or Chaitin); update the Notes entry to match.
    recommended: Verify and keep
  - finding-id: F-EPIGRAPHS
    location: chapters/02_the_library.tex:3-5; the-library.tex half-title; chapters/12_the_dissolution_of_death.tex:3-5; chapters/05_the_optimality.tex:3-5; chapters/96_notes.tex
    severity: LOW
    stake: low
    question: Several epigraph wordings were corrected from two specialists' recollection and could not be checked against the books offline; will you verify them before release?
    original-finding: "L-13/L-14/L-15: the Chapter 2 Borges epigraph is now attributed to Hurley, and the half-title follows Irby ('equipped with precious volumes' replaced the Hurley word 'armed'); the Chapter 12 Epicurus line now uses Hicks's wording ('Death, therefore, the most awful of evils, ...'); the Chapter 5 Hutter epigraph may be a paraphrase. The consistency verifier rated these medium to medium-high confidence."
    suggested-options:
      - label: Verify against the books
        consequence: Check Irby (Labyrinths), Hurley (Collected Fictions), Hicks (Loeb Diogenes Laertius, 1925), and Hutter (2005); correct any wording and add page numbers to the Notes.
      - label: Accept as revised
        consequence: Ship the corrected wordings and attributions as they stand.
    recommended: Verify against the books
  - finding-id: F-DEDICATION
    location: chapters/00_dedication.tex:5
    stake: medium
    question: Keep the dedication "For Kimberly, at every index."?
    original-finding: "Flagged by the lore pass and by the structure verifier (L12): under ontology (c), 'at every index' can be read as the retracted 'instantiated at many indices'. The 2026-10-18 review listed the dedication among the strengths to protect."
    suggested-options:
      - label: Keep it
        consequence: A dedication is an address, not a claim; the reviewers named it a strength.
      - label: Revise it
        consequence: You choose new wording, for example "For Kimberly, here."; outline.md's front-matter line changes to match.
    recommended: Keep it
  - finding-id: F-TITLES
    location: chapters/11_continuation.tex:1; chapters/13_love_across_branches.tex:1; lore/outline.md
    stake: low
    question: Chapter 11 is now built around the chooser as a cut, and Chapter 13 around "we" as a cut; keep the titles "The Question of Continuation" and "Love Across Branches"?
    original-finding: "Structure verifier L11 and consistency verifier N-18: Chapter 11's title names a short side section rather than its spine, and 'Across Branches' keeps Everett's branch language in the foreground of Part III, though nothing rests on Everett."
    suggested-options:
      - label: Keep both titles
        consequence: No change to the TOC, outline, Notes headings, or running heads.
      - label: Retitle Chapter 11 only
        consequence: "For example 'The Chooser'; update the chapter command, outline.md, and the Notes heading."
      - label: Retitle both chapters
        consequence: "For example 'The Chooser' and 'Love, Drawn'; update both chapter commands, outline.md, Notes headings, and Also By if it lists chapters (it does not)."
    recommended: Keep both titles
  - finding-id: F-SELECT
    location: kdp/metadata.yaml:21 (kdp_select); chapters/00_copyright.tex; .zenodo.json access_right
    stake: high
    question: KDP Select requires digital exclusivity, but the book is now printed under CC BY-NC-SA 4.0 and its source is openly deposited; enroll in Select or not?
    original-finding: "Consistency verifier N-2 (new, surfaced by H-4): kdp_select is true (90-day Amazon exclusivity) while the copyright page grants redistribution and Zenodo access is open. Confirm against current KDP Select terms."
    suggested-options:
      - label: Do not enroll in Select
        consequence: Set kdp_select to false; the ebook is not in Kindle Unlimited, and the open license and Zenodo deposit stand as declared.
      - label: Enroll, withhold the ebook text
        consequence: Keep Select and keep the full ebook text out of Zenodo and GitHub releases during enrollment; others may still redistribute under the license, which Amazon may treat as a breach.
      - label: Keep as is
        consequence: No change; risks a Select terms violation.
    recommended: Do not enroll in Select
  - finding-id: F-KEYWORDS
    location: kdp/metadata.yaml keywords; .zenodo.json and CITATION.cff keywords; the-library.tex pdfkeywords; chapters/98_reading.tex section "The computable multiverse"
    stake: low
    question: Keep "computable multiverse" and "many-worlds" as discovery keywords and as a Further Reading heading, for a book that holds the multiverse question open?
    original-finding: "Consistency verifier N-17: the labels may lead buyers to expect advocacy of something the book holds open (themes.md, What This Book Is NOT)."
    suggested-options:
      - label: Keep the keywords
        consequence: Better discoverability for readers of Tegmark and Deutsch; the blurb and book make the held-open stance clear.
      - label: Soften the labels
        consequence: "For example 'computable universe question' and a Further Reading heading such as 'All possible worlds'; slightly less search reach."
    recommended: Keep the keywords
  - finding-id: F-EPUB-SIZE
    location: kdp/render-figures.lua (resolution = "300")
    stake: low
    question: The EPUB now carries all 22 figures as 300 dpi PNGs (about 0.8 MB, total EPUB 1.6 MB), which raises KDP's per-sale delivery fee at the 70% royalty tier; keep 300 dpi?
    original-finding: "M-14 (fixed): the EPUB previously contained no figures. Resolution is a single setting in the renderer."
    suggested-options:
      - label: Keep 300 dpi
        consequence: Sharpest figures on high-resolution e-readers; delivery fee of roughly 15 US cents per megabyte applies to the larger file.
      - label: Render at 200 dpi
        consequence: Roughly halves the figure payload; figures slightly softer on high-resolution screens.
    recommended: Keep 300 dpi
```


## Deferred (Structural)

None. Everything the review asked for was done in this pass, including the Tier 2 restoration.

## Retry Failures (Needs Human Review)

None.

The retry pass after verification applied every follow-up that did not need the author, lore first:

- Formal: "no computable canonical index" replaced, lore first, by "no computable procedure sorts the Library by how cheaply each thing in it can be said" (a bare address is computable, but it is only the string again) in `foundations.md`, `outline.md`, Ch 2, 6, 7, A4, README; Ch 3 "self-delimiting programs" removed; A1's invariance section now uses $V, V'$ for prefix machines and $U, U'$ for monotone ones, with a sketch for $M$; "the 1960s" dated "1960s and 1970s"; Fig 5.1 caption "every other minimal program"; the chicken budget "not by how long the chicken has been watching".
- Voice and safety: Figure 13.1's ending strand is now gray and dashed, labelled "a history ends", with "No strand stands for a particular reader."; the Ch 11 note no longer implies some readers take the argument as their situation; the Appendix C note no longer ties safety to a premise; the crisis note says "if you can, ask another person"; Ch 12's "What the living lose" no longer opens "Set the first person aside, because it is not where the weight is."; Ch 15 person made consistent ("I cannot say") and the "very likely, people in the next room" line made safe for an isolated reader.
- Structure: Ch 10's back half merged into one section, "What remains yours", without restating Ch 9 or the occurrence measure, and no longer listing Picture A or Everett among the book's foundations; Ch 2's metaphor note no longer states the postulate as fact; Ch 9's five-footing tour reduced to one sentence pointing to Ch 7; Part III no longer opens each chapter with "Worldlines said"; Ch 13's "The braid that went wrong" moved before the table scene so the chapter climbs to "We"; Ch 14's care section shortened to what the self adds beyond Ch 13; one handoff per chapter boundary.
- Consistency: Epicurus in Hicks's wording; Borges lines attributed (Hurley in Ch 2, Irby on the half-title); Spinoza's elision marked; Crane's capital restored; A5's reply to "anti-realism in disguise" points to Ch 8; `.zenodo.json` and `CITATION.cff` abstracts no longer say "locating yourself inside it" or call the universal prior "settled mathematics"; Notes corrected (Epicurus manuscript claim, Jeffreys 1946, the Ch 11 Notes pointer from Appendix C); lore locations for the footing list and Fig 14.1 corrected; `kdp/metadata.yaml` page count, checklist, and YAML validity fixed.
- Craft and layout: the spine sentence ends its own paragraph again; the method-describing lines ("stated once, at full strength", "once and in full", "so they need not be said again") removed; restatement clusters in Ch 4, 7, 8 trimmed; the one-line page at the end of Ch 12 and a two-line spill at the end of Ch 1 removed by trimming redundancies (Fig 1.1 caption, a Ch 12 restatement) and scaling Fig 1.1 to 0.85; no figure label hyphenates (one `\tikzset` line in the shared preamble); Fig 2.1's phantom circle removed; Fig 4.2's separator shortened; the shared point field nudged so no point touches a carving line; EPUB alt text is now short plain text ("Figure 8.2: Two weightings, one role.") instead of raw TeX, and the renderer deletes images of figures that no longer exist.

A final retry check found three small regressions introduced by the retry edits themselves and one figure/caption contradiction; these were fixed: Ch 13's last line regained its referent ("Those lines are cuts."), Appendix C's run-on split, Appendix E's Chapter 8 pointer moved to the sentence it explains, and Figure 13.1's ending strand redrawn as a third history out of phase with both labelled pairs, with the caption "The strand that ends is neither of the two labelled here." Resources received one inclusive change ("and, if you can, stay with another person, or stay on the line, while the immediate danger passes"), which adds an option for a reader who is alone and removes nothing.

No fix failed verification twice.

## Propagation

- `lore/foundations.md`: $M$ on a universal monotone machine over minimal programs, with the $\lambda$ form and the halting counterexample; $m_V$ and the coding theorem on a universal prefix machine; dominance constant and log-loss statements; invariance by machine class; Born seam no longer overclosed ("why this weighting?" stays an ordinary question owed an answer by quantum theory); enumeration versus dovetailing no longer called equivalent; $K$ machine-relative, with "the cheapest cut" labeled an image; the Part I fact ("no computable procedure sorts the Library by description cost"; a bare address is computable) separated from the postulate; the self-recognition moved to Part III; five footing names; the missing occurrence measure named; discipline rule 9 (caveats once); the self-delimiting sentence scoped to prefix machines; the universal set renamed $\Omega$ to avoid colliding with the machine $V$.
- `lore/outline.md`: formula; refusal located in Ch 7 and "Without Everett" in Ch 9; Part III rebuilt to the H-8 plan; Ch 10 positive thesis; epigraphs current; Resources no longer "Stay at this index."; word targets; pedagogical sequence.
- `lore/themes.md`, `lore/index.md`, `lore/direction.md`, `lore/appendices.md`, `lore/landing.md`, `lore/information_hazards.md` (Resources order matches the page; Ch 11 and Ch 12 safety notes recorded), `lore/grace.md` (equanimity), `lore/implications.md` (responsibility as a drawn boundary; continuation only under optional additions).
- Manuscript propagation from the lore: Ch 2, 4, 5, 6, 7, 8, 9, 10, A1, A4 (the theorem/postulate split and the $M$ definition), A0 and A5 (footing names), A5 (exact quotation of the restored triad).
- Out-of-book: README, KDP metadata, About, Also By, Further Reading.
- `CLAUDE.md` was not edited (outside this agent's remit). Its section 5 status ("technical and safety revision in progress", "Do not restore categorical multiverse ... language") remains accurate as a rule but its status line and page count are now stale; the author may want to update it on commit.

## Summary

- Findings resolved: 60 of 63 fixed and verified, 1 by the author's decision (H-4), 2 deferred to the author (L-19, L-30). Including the author decision, 61 of 63 are closed in the text.
- Verification pass rate: on first verification, 56 of 61 applied fixes were RESOLVED and 5 PARTIAL (H-6, M-13, L-28, L-14, L-15); all 5 were completed in the retry pass. No retry failures.
- New issues detected during verification: 13 MEDIUM and 44 LOW across the five verification reports, all fixed or routed to Decisions Needed. Several pre-existing defects outside the review were found and fixed on the way: EPUB figure and appendix references numbered per Part (Fig 8.2 shown as "3.2", "Appendix 6"); EPUB part labels left over from *Worldlines*; `kdp/metadata.yaml` was not valid YAML; Figure 13.1's strand labels were swapped.
- Build: `make` 140 pages (was 134), 0 undefined references, 0 overfull boxes, 0 underfull vboxes (one mild underfull hbox at 08:105, pre-existing); `make epub` with all 22 figures as images; `epubcheck the-library.epub` silent; `make wordcount` 28,833 (Part I 9,337, Part II 7,955, Part III 6,314, Appendices 3,728, by detex per file).
- Not done here: nothing was committed (base 3b92ad8). `CLAUDE.md` section 5 still describes the July state and the old page count; the author may want to update it on commit.

