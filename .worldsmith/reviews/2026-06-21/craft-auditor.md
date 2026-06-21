# Craft Auditor (Prose Craft + House-Style Hard Rules)

**Book**: *The Library: The Indifference of Description* (nonfiction)
**Scope**: Full manuscript, 15 chapters + frontmatter + backmatter (~28.3K words of body prose)
**Lens re-pointed for nonfiction**: sentence-level prose quality, dead/mixed metaphors, ungrounded abstraction, fatiguing repetition, hype/salesmanship, mechanical house-style compliance, figures-as-arguments. No show-don't-tell / dialogue / scene-mechanics checks (none exist).

**Finding counts**: BLOCKING 0 | HIGH 0 | MEDIUM 3 | LOW 5

---

## House-style mechanical verification (all PASS)

- **(a) Em-dashes / en-dashes / horizontal bars**: CLEAN. `grep -rnP '\x{2014}'`, `'\x{2013}'`, `'\x{2015}'` over `chapters/` each return zero hits. Independently confirmed.
- **(b) Raw Unicode math in typeset prose**: HARMLESS. The only raw-Unicode-math hits are on `%`-comment lines (`05_the_optimality.tex:54,58,61`; `07_the_inhabited_library.tex:73`); they do not render. A scan of TikZ `node` text found no non-ASCII that reaches the page.
- **(c) CJK**: CLEAN (zero hits across CJK/Kana/Hangul/fullwidth ranges; no stray U+2212 minus / primes / degree sign).
- **(d) Figures as arguments**: PASS. All ~20 captions reviewed; every figure derives, verifies, or interprets (Kraft tiling, dominance bar chart, two-ontologies argument, etc.). None decorative.

Pattern counts (count_patterns.py over the body): crutch words all well within normal density for a 28K-word philosophy book (`something` 17, `just` 10, `actually` 8, `very` 7); the two "adverb dialogue tag" hits are false positives inside the Crane epigraph. No pattern crosses into problem territory. The intentional refrains ("the cut," "at its coordinates," "the measure singles out none," "no view from the top") are load-bearing, not slack.

---

## MEDIUM

### M1. Tangled closing clause in the consistency argument
- **Location**: `chapters/03_the_indexing.tex:143`
- **Quoted text**: "The rule produces nonsense at the edges, which means it is producing nonsense in proportion everywhere short of the edges."
- **Problem**: The one genuinely muddy sentence in an otherwise crystalline chapter. "producing nonsense in proportion everywhere short of the edges" forces the reader to unpack "in proportion" (to what?) and "everywhere short of the edges" at once; the tense shift "produces" -> "is producing" adds friction. The point (an additive rule is mis-scaled throughout, not only at the boundary) arrives blurred.
- **Suggestion**: "The rule produces nonsense at the edges, and a rule that miscounts at the edges was miscounting everywhere; the edge is just where the error becomes impossible to ignore."

### M2. Overloaded single sentence at the book's argumentative climax
- **Location**: `chapters/10_indifference_of_description.tex:39`
- **Quoted text**: "It does not bottom out at ``why is reality simplicity-weighted,'' because there is no privileged measure on reality to explain: the weighting is the finite cutter's, forced by Kraft, and reading it as a property of the world rather than of the predictor is itself one of the cuts the postulate refuses to crown (Chapter 8 made it the open question it is)."
- **Problem**: The densest sentence in the book (quoted sub-question + colon-clause + two-part appositive + long gerund subject + parenthetical cross-reference with its own embedded clause), sitting at the climax of the title chapter where the surrounding rhythm is short and punchy. Demanding but parseable; the risk is a reader stall at exactly the wrong place.
- **Suggestion**: Split after "to explain": "...because there is no privileged measure on reality to explain. The weighting is the finite cutter's, forced by Kraft. To read it as a property of the world rather than of the predictor is itself a cut, one the postulate refuses to crown (Chapter 8 made it the open question it is)."

### M3. "Where this leaves you" closing-header refrain fades out abruptly rather than gracefully (judgment call)
- **Location**: `\section*{Where this leaves you}` appears in chapters 2,3,4,5,6,7,9,10,11,12; absent in 1, 8; deliberately dropped in 13,14,15
- **Problem**: The refrain is a deliberate, working device through Part I and most of Part II (it gives each bedrock chapter a clean foothold before the next step). It begins to feel mechanical in Ch11 and Ch12, where the closer's content is already a forward-pointer and the chapter has by then performed its own summing-up. The strongest evidence the device is right is that it is correctly dropped for 13-15; the only awkwardness is the abrupt stop at the 12/13 boundary.
- **Suggestion**: Keep the refrain through Ch10 (where it caps the title chapter). Consider dropping the header in Ch11 and Ch12, letting those close on their last paragraph the way 13-15 do, so the device fades across Part III rather than stopping abruptly. Polish, not a defect; current state is defensible.

---

## LOW

### L1. "in two units": momentary abstraction without a handhold
- **Location**: `chapters/04_the_prior.tex:211`
- **Quoted text**: "The prior $M$ and the complexity $K$ are the same idea in two units, probability and code length, related by a logarithm"
- **Problem**: "the same idea in two units" is economical but "units" does metaphorical work right where the reader meets the $M$/$K$ identity. The next clause rescues it.
- **Suggestion**: "the same idea written two ways, as a probability and as a code length, related by a logarithm."

### L2. "What if you refuse" header used twice: minor echo
- **Location**: `chapters/07_the_inhabited_library.tex:126` and `chapters/09_the_limits.tex:101`
- **Problem**: Both sections do the same honest job (what survives refusing the postulate / the quantum reading), and the parallelism is arguably a feature; two identically-titled sections four pages apart can momentarily read as duplication.
- **Suggestion**: Optionally differentiate: "What if you refuse the postulate" (Ch 7) / "What if you refuse the quantum reading" (Ch 9). Equally fine to leave as the deliberate twin.

### L3. Light backmatter register shift in Further Reading
- **Location**: `chapters/98_reading.tex:4,10`
- **Quoted text**: "far friendlier than its title"; "Rigorous and, against the odds, readable."
- **Problem**: The most conversational asides in the manuscript, against the body's plain default. Genre-appropriate for an annotated reading list, so likely intentional.
- **Suggestion**: None required. "Rigorous and unexpectedly readable" is a hair plainer if desired.

### L4. Stacked appositives in the no-top footnote
- **Location**: `chapters/09_the_limits.tex:25` (footnote)
- **Quoted text**: "This is diagonalization, the engine behind the halting problem, run upward without end: the Turing jump, a strictly increasing tower of oracle machines with no greatest member, for the same reason there is no largest number."
- **Problem**: Three chained appositive expansions in one breath; clear on a second pass; lower-stakes footnote.
- **Suggestion**: Period after "without end": "...run upward without end. This is the Turing jump: a strictly increasing tower of oracle machines with no greatest member, for the same reason there is no largest number."

### L5. "proportion(s)" diction clusters near the one slack use
- **Location**: `chapters/03_the_indexing.tex:143` (with `:91`, `:137`)
- **Problem**: "proportion(s)" is the chapter's correct technical word; the only slack use (143, see M1) sits near several load-bearing ones. Resolving M1 de-clutters the local field.
- **Suggestion**: Folded into M1.

---

## Strengths (protect in revision)

- **The refrains are load-bearing, never slack.** "At its/their coordinates," "no cut is privileged," "the measure singles out none," and "the cut" itself accumulate force rather than fatigue. "The measure ranks; it does not choose." (`10` body + figure caption) lands the thesis in five words. Do not touch these.
- **The "cut" metaphor family is disciplined and never mixed** across 15 chapters (cut / carving / braid / Library / index / coordinate stay in one coherent geometric register; the braid "thickens" rather than contradicting the Worldlines worldline image). Hardest thing to do over a book-length argument; done.
- **Chapter openers vary deliberately** (direct claim / prior-chapter recap / image), felt as structure not formula.
- **The information-hazard passages are sentences-level discipline**: every dark permission (`11:63`, `09:89`, `12:37`) is immediately followed by the "the framework permits, it does not place you there; you may decline to live inside it" move (`09:97`, `12:39` footnote). Never consoles with anything untrue.
- **The landing earns its silence**: Ch15 drops the section scaffolding, lets Camus's *must* sit literal, names the adequacy doubt in first person ("Is it enough? I do not know."), closes on "Stay." set off by vertical space. The preface's "Hello, fellow sufferer. Stay with me." and the closing "Stay." frame the book without a seam.
- **Rhythm is varied throughout**: short punches ("Generation is trivial." / "Indexing is everything." / "Almost nothing.") alternate with long textured derivation sentences; the one or two overlong sentences (M1, M2) stand out precisely because the baseline is strongly varied.
