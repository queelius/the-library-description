# Voice Auditor (Authorial Voice)

**Book**: *The Library: The Indifference of Description* (nonfiction)
**Scope**: Full manuscript, 15 chapters + frontmatter + backmatter
**Lens re-pointed for nonfiction**: there are no characters and no character voices. There is exactly ONE voice (the author's). Checked: consistency of that single voice, tonal correctness (the Worldlines voice: second-person, plain, companionate, unflinching, never hype), care-as-tone from the preface forward, consistent second-person address, no consolation with what is not true.

**Finding counts**: BLOCKING 0 | HIGH 0 | MEDIUM 1 | LOW 4

---

## MEDIUM

### M1. Single-instance gendered pronoun "her" for the reasoner breaks the established second-person address
- **Location**: `chapters/06_the_slip.tex:27`
- **Quoted text**: "The universal prior describes optimal belief. It tells the agent how to weight her hypotheses about the world."
- **Problem**: The book's established address is second-person ("you") for the reasoner/observer, with impersonal "the agent / the observer / a careful reasoner" as the neutral fallback. This is the only place in the entire manuscript that assigns the reasoner a gendered pronoun ("her"). It is not a comprehension problem, but against otherwise-uniform handling, the lone "her" reads as a momentary slip into a different convention and introduces a third party who appears nowhere else.
- **Confidence**: medium (could be deliberate variation, but it is inconsistent with the book's own otherwise-uniform handling).
- **Suggestion**: Recast to house pattern: "It tells the agent how to weight its hypotheses about the world," or better and more in-voice, fold back to second person: "It tells you how to weight your hypotheses about the world."

---

## LOW

### L1. "with an enthusiasm that is its own argument" brushes the one register the book forbids (hype)
- **Location**: `chapters/98_reading.tex:12`
- **Quoted text**: "Gregory Chaitin, *Meta Math!* (2005). The randomness side of the same mathematics, told by one of its inventors, with an enthusiasm that is its own argument."
- **Problem**: The voice spec is emphatic the book must never sell and is "not pop-science enthusiasm." Praising enthusiasm-as-argument is adjacent to that register. Mild, describes another author's book, and the surrounding entries keep the skeptical posture; borderline, not a breach.
- **Confidence**: low.
- **Suggestion**: If tightening, make praise about substance: "told by one of its inventors, who is candid about how strange the result is," or trim to "told by one of its inventors." No change genuinely required.

### L2. Two breezier asides in Further Reading lean slightly off the plain default
- **Location**: `chapters/98_reading.tex:4` ("far friendlier than its title") and `:10` ("Rigorous and, against the odds, readable.")
- **Problem**: The most conversational moments in the manuscript. Genre-appropriate for an annotated reading list and likely intentional; flagged only because a reader moving from Ch15's gravity into backmatter feels a small register shift.
- **Confidence**: low.
- **Suggestion**: None required. "Rigorous and unexpectedly readable" is a hair plainer.

### L3. Crisis note's "smaller, and better" verified inside the discipline (not a defect)
- **Location**: `chapters/00_note.tex:6`
- **Quoted text**: "The dark readings are confident ones, and confidence is the single thing the framework will not support. What is real is smaller, and better: one finite person, writing to another, asking you to stay."
- **Finding**: Checked the book's most consolation-adjacent sentence against the "never console with what is not true" discipline. It is the disciplined version: it removes false *certainty* in both directions rather than promising rescue, and "better" is the modest, true thing (one person asking another to stay), not a metaphysical reassurance. Clean. Recorded as a verification note.
- **Suggestion**: None. Protect this sentence.

### L4. Impersonal "one" constructions verified NOT to be person-slips
- **Location**: `chapters/06_the_slip.tex:123,125`; `chapters/07_the_inhabited_library.tex:108`; `chapters/12_the_dissolution_of_death.tex:31`
- **Quoted text (representative)**: "To assert this position, one must specify which universe is real." / "Is nothing a position one could coherently hold?"
- **Finding**: Every occurrence sits in a genuinely impersonal logical/expository construction where second-person "you" would mislead (it would imply the reader holds the position being dismantled). These are correct uses of the impersonal, not drift out of the established "you." Clean result, recorded for completeness.
- **Suggestion**: None. Changing these to "you" would be a regression.

---

## Cross-chapter voice consistency (verified)

- **The three emotional anchors are tonally continuous**: preface "Hello, fellow sufferer. Stay with me." (`00_preface.tex:16`); crisis note "one finite person, writing to another, asking you to stay" (`00_note.tex:6`); closing single word "Stay." (`15:38`); Resources echo "Stay with them. Stay at this index." (`97_resources.tex:16`). Same voice, same gesture, escalating from sentence to bare imperative as the book earns the compression.
- **The earned "I" is handled correctly**: first-person singular appears only in the crisis note (`00_note.tex:4`) and the closing (`15:35`), both the intended author-to-reader register. No unearned "I" leaks into the expository chapters.
- **Part I/II expository register vs Part III warmth is correctly calibrated**: the companionate thread stays alive at the seams (`09:97`, `09:61`). No chapter goes purely clinical where warmth is required, none goes purple or flippant where restraint is required.
- **"Never console with what is not true" held throughout**, and in several places performed openly as a refusal of false comfort (`10:94`, `12:35`, `13:73`, `15:35`).

## Strengths (protect)

- The closing coda is the book's voice at full strength (`15:31-38`); do not touch.
- Ch1's opening matches the provisional voice sample almost verbatim and sets the register cleanly (`01:17-20`).
- The care-as-tone seeding works: the preface plants the destination as tone in its first sentences (`00_preface.tex:4,14-16`).
- Ch13's "Two at a table" vignette surfaces the warmth exactly where the lore intends (`13:63`), grounding the math in a human instant without going sentimental.
- The About-the-Author page carries the same voice into the paratext using the book's own lexicon (`99_about.tex:8`).
