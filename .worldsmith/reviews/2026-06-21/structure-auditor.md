# Structure Auditor (Argument Architecture + Pedagogy)

**Book**: *The Library: The Indifference of Description* (nonfiction)
**Scope**: Full manuscript, 15 chapters + frontmatter + backmatter
**Lens re-pointed for nonfiction**: there are no character arcs or plot turns. Checked: does each chapter perform its assigned "cut" per `lore/outline.md`? Does the three-part escalation (Index to System to Self) land? Motivation-before-payoff, difficulty pacing, pedagogical sequencing, and the closing (held cut, header-less coda, "Stay.", Camus's must literal, adequacy-doubt named).

**Finding counts**: BLOCKING 0 | HIGH 0 | MEDIUM 3 | LOW 6

---

## Chapter-by-chapter verification (every chapter PASSES its assigned cut)

Ch1 prediction-as-cut + Hume/Russell (`01:27`); Ch2 the inversion + cut named (`02:39-41`, `02:123`); Ch3 Bayes-as-cut + Cox (`03:147`); Ch4 Kraft to prior + finitude stated as consequence of Kraft (`04:125`); Ch5 dominance + invariance + scaling-law hedged as "an analogy, not a proof" (`05:200`); Ch6 the postulate enters, boxed (`06:63-65`); Ch7 the picture + nothing-question + refusal hinge (`07:126`); Ch8 QM landmark + Born/prior identification (`08:64`) + observer defined + Picture A/B (`08:146`); Ch9 no-view-from-the-top grounded in the postulate, diagonalization demoted (`09:24`) + permitted-horrors catalogue + safety note (`09:97`); Ch10 titular thesis + System capped + block-universe parallel (`10:74`); Ch11 compatibilism + quantum immortality labeled "not a theorem" (`11:65`); Ch12 boundary dissolves but loss undimmed + orientation-cut enacted (`12:49`); Ch13 braid frayed/thickened + table/mug object (`13:59-65`); Ch14 self dissolved + Parfit/Metzinger + the convergence stated (`14:37`); Ch15 held cut + adequacy doubt named (`15:35`) + Camus's must literal (`15:33`) + single-word "Stay." (`15:38`).

---

## MEDIUM

### M1. Ch13 leans on a consolation the moral spine explicitly forecloses, without the orientation-cut counterweight in the same chapter
- **Location**: `chapters/13_love_across_branches.tex:55`
- **Quoted text**: "The other braids are real, and they are not your concern. Not because they do not matter, but because you cannot reach them. ... It is not your moral business, in the plain sense that business is something you can transact, and across branches there is no transaction."
- **Problem**: `lore/apokatastasis.md:26` lists, among the standard consolations the author has refused on moral grounds, exactly this move: "what happens at indices you cannot reach is not your moral business." The crux-4 resolution requires locality-in-action to ride alongside the orientation-cut (the refusal to abandon any configuration, held whether or not anyone can be reached), so the book does not actually abandon anyone. Ch12 enacts the orientation-cut ("the kind of configuration that does not abandon them," `12:49`). But Ch13, the love chapter, states the locality move in its bluntest, most foreclosed form ("not your concern" / "not your moral business") and does not pair it with the orientation counterweight within the chapter. Ch13's own self-correction (`13:57`) is about locality of *care*, not about the orientation that does not forget the unreachable. A reader who internalized Ch12's "does not abandon them" may feel a small dissonance.
- **Why it matters**: The book's deepest integrity claim is that it refuses the selecting consolations everyone else uses. A reader sensitive to the moral register (the target reader) registers "not your concern" as colder and more dismissive than the orientation the rest of Part III performs.
- **Cross-verified**: yes, by the orchestrator against `lore/apokatastasis.md` (the foreclosed-move list at line 26) and against Ch12:49 (the counterweight is present in the book but not in Ch13). Finding stands.
- **Suggestion**: Soften "are not your concern" to preserve locality-of-action without abandonment-of-orientation, e.g.: "are real, and they are not your burden to carry, because you cannot reach them, only held in the orientation that does not forget them." The surrounding argument (moral weight travels along connections that exist) is correct and should stay. A phrase-level change.

### M2. The Ch10 epigraph swap (Whitman to Crane) silently drops a planned cross-suite resonance
- **Location**: `chapters/10_indifference_of_description.tex:8-13` (Crane epigraph)
- **Problem**: The outline assigns Whitman ("I am large, I contain multitudes") as the Ch10 epigraph (`outline.md:142`), and `grace.md:181` builds an explicit inversion on it ("I am a cut, and so are you, and the structure singles out neither of us"). The manuscript opens Ch10 with Stephen Crane instead. Crane fits the indifference register well, arguably better than Whitman. But the swap means the Whitman "multitudes" thread, which resonates with the sibling volume *Multitudes*, appears nowhere in the book. The outline flagged epigraphs as an open question (`outline.md:264`), so this is not a violation; the cost is a deliberate inter-volume echo silently dropped.
- **Suggestion**: Either (a) accept Crane and update `outline.md:142` and `grace.md:181` so the lore stops promising the Whitman inversion, or (b) work the Whitman inversion into the body of Ch10 (it would sit naturally near `10:84`, "Multiplication does not subtract"). Recommend (a) unless the suite echo is wanted.

### M3. Part III opens (Ch11) by narrowing to the Many-Worlds sub-case, briefly stepping down from Part II's Library-level stage
- **Location**: `chapters/11_continuation.tex:18-19`
- **Quoted text**: "This chapter takes the Many-Worlds case, where branches share a history up to the point they split, so that continuation has a clean meaning. The broader Library, where two indices may share no laws and no past at all, is harder; it is the subject of Chapter 14."
- **Problem**: This is an honest scope note with a real deferral to Ch14, and continuation across lawless indices is genuinely intractable, so the choice is defensible. But Ch11 is the first chapter of Part III, whose whole point is the Library-level self. Opening by retreating to the narrower MWI sub-case means the escalation from Part II's Library-level indifference momentarily steps *down* a level. Ch14 recovers it fully, so the architecture closes; the cost is that the hinge chapter does not yet operate at the depth Part III promised.
- **Suggestion**: No structural change needed. Consider one sentence at the top of Ch11 framing the MWI restriction as deliberate setup ("we take the tractable case here precisely so Ch14 can remove the training wheels and run continuation through the full Library"), so the step-down reads as setup rather than contraction.

---

## LOW

### L1. Ch7/Ch8 both frame QM's entry as "a reassurance," underselling Ch8's load-bearing Born-measure work
- **Location**: `chapters/07_the_inhabited_library.tex:144` and `chapters/08_the_observer.tex:18`
- **Problem**: The Born/universal-prior identification (`08:64`) is one of the book's genuinely important moves ("a reason this book exists"). Framing the chapter twice as "a reassurance" sets a comforting-aside expectation, then delivers the central inter-volume bridge.
- **Suggestion**: Keep "reassurance" for the branching half but signal the heavier work: "pauses on a reassurance, and then on the chapter's real business: what the measure is, and what an observer is."

### L2. The "Stay." coda is separated only by a 1.2em skip, lighter than the "header-less coda" spec implies
- **Location**: `chapters/15_the_pattern_describing_itself.tex:35-38`
- **Problem**: The spec wants "Stay." to land as a set-apart coda. The source separates it from the adequacy-doubt paragraph by only `\vspace{1.2em}`, with no rule, page break, or centered placement; it reads as the last line of the final block rather than a held-apart beat.
- **Suggestion**: Consider a stronger visual set-off (centered placement, larger skip, or the thin rule used at `11:23`). Verify in the built PDF, not just source. (Partly typography.)

### L3. Ch12's own first-person material is thin; the dissolution leans on Ch11 by reference
- **Location**: `chapters/12_the_dissolution_of_death.tex:42` ("Set the first person aside, because it is not where the weight is.")
- **Problem**: A defensible weighting (the living are who the chapter wants to reach, and Ch11 carried first-person continuation), but Ch12's titular "dissolution of death" does most of its first-person work by reference back to Ch11. No beat is missing.
- **Suggestion**: None required. One sentence acknowledging (not just deferring) the first-person dissolution would make Ch12 more self-contained.

### L4. Several epigraphs diverge from outline candidates; reconcile the lore
- **Location**: Ch3 (`03:9`, Maxwell vs candidate Jaynes), Ch10 (Crane vs candidate Whitman, see M2), Ch11 (`11:9`, Schopenhauer vs candidate Spinoza)
- **Problem**: Outline lists these as "candidate," so divergence is allowed, and each manuscript choice is apt. Documentation drift only.
- **Suggestion**: Update `outline.md` epigraph candidates to match, or mark superseded.

### L5. Ch10 stacks three indifferences at the cap chapter, slightly diffusing the single-sentence punch
- **Location**: `chapters/10_indifference_of_description.tex:27-41` (two indifferences) + `10:72-78` (a third, "unwatched")
- **Problem**: Each indifference is a recap of earned material (Ch8/Ch9), not new argument, so density is justified; the only risk is that the titular line competes with two adjacent restatements for the reader's memory.
- **Suggestion**: None required. If tightening, compress the "unwatched" third indifference (`10:72-78`) to a single sentence pointing back to Ch9.

### L6. Longest forward reference (Ch1 LM footnote to Ch5 payoff) is honored
- **Location**: `chapters/01_the_question.tex:31` (footnote) with payoff at `chapters/05_the_optimality.tex:192-206`
- **Finding**: Correct motivation-before-payoff direction (motivation in Ch1, substantial payoff in Ch5's "bedrock in the wild"). The reader holds a promissory note across Part I; well within book-craft tolerance. Essentially a non-issue, recorded because the brief asked for forward-reference tracking.
- **Suggestion**: None.

---

## Architectural compliance (verified)

- Bedrock stated as theorems, never leaned on for more than it gives. Finitude consistently a consequence of Kraft, never a theorem (`04:125`, `05:190`, `06:71`, `10:39`). "No view from the top" grounded in the postulate, diagonalization demoted (`09:23-25`). Postulate labeled and asked once (`06:63`, recalled not re-asked at `09:113`). Realism-is-a-cut / existence held open (`06:69`, `08:146`, `11:69`). No emotional properties projected onto the structure (`09:90`, `15:27`). Moral spine in the structure, never in citations (no forbidden names; one phrase-level tension at M1). No em-dashes.

## The three-part escalation
Genuinely escalates: Part I earns the prior and dominance and closes the math of prediction; Part II makes the slip, takes the postulate, ends colder than it began; Part III dissolves the self and converges all three cuts (`14:37`), then performs the held cut (`15`). Ch10 functions as both cap (titular thesis) and hinge (`10:107`). The one soft spot is the opening of Part III (M3), recovered by Ch14.

## The closing
Verified against `landing.md`/`grace.md`: gathers the cold first (`15:21`), turns to "here you are" (`15:23`), runs rage-passes-equanimity-care (`15:31`), takes Camus's must literally (`15:33`), names the adequacy doubt outright and refuses to dress hope as proof (`15:35`), ends on "Stay." (`15:38`). Critically does NOT commit the failure the lore rejects ("that has to be enough, and at these coordinates, it is"). The only refinements are the coda's typographic separation (L2) and the upstream foreclosed-consolation phrase in Ch13 (M1).

## Arc of seeding
Care is present as tone from the first page (`00_preface.tex:4,14-16`), the crisis note (`00_note.tex:6`), and structurally in Ch9 (`09:61`), carried for nine chapters before Part III turns to it explicitly. Part III's turn does not arrive cold.

## Strengths (protect)
- The finitude discipline is exemplary and never slips (the spine of the book's integrity).
- Ch9's "no view from the top" is the model for how the whole cascade stays honest (postulate first, computation argument demoted).
- The Ch2-to-Ch14 convergence ("You will meet the cut three times" paid off at `14:37`) is a hard three-part architectural arc, and it holds.
- The adequacy-doubt handling (naming "I do not know," refusing to dress hope as proof) executes the hardest craft decision the lore flagged without flinching.
- The concrete object in Ch13 (table, mug, cold coffee) makes the argument tactile exactly as intended.
