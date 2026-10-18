# Voice and Reader-Safety Audit: *The Library* (release review, 2026-10-18)

**Specialist:** worldsmith:voice-auditor (nonfiction adaptation: the book's own narrating voice, plus reader safety under `lore/information_hazards.md`)
**Scope:** every listed file in full, in book order, plus the July 15 record and `kdp/metadata.yaml` (store blurb and author bio). Read-only.
**Counts (specialist, before director calibration):** BLOCKING 1 | HIGH 4 | MEDIUM 7 | LOW 8.

## Summary

B4 is resolved: the Resources page now meets every rule in `information_hazards.md`. The front crisis note passes, with refinements. The July Ch 9 fixes are in. One BLOCKING defect is new: Chapter 11 has no reader-safety note at quantum immortality, and the passage that follows casts the reader as the person killed by a car and then calls the framework neutral on stepping into the street. The retracted ontology survives on the author-voice surfaces (About; the store blurb). The Metzinger entry in Further Reading works against the Ch 14 safety note. Hedging has flattened the voice in Chapter 10; elsewhere the voice is intact and often very good.

## 1. B4 and the crisis note

### `97_resources.tex`: PASS

| Requirement | Status | Evidence |
|---|---|---|
| Immediate danger first | Pass | :5 "If you may act on suicidal thoughts soon, have already begun to act, or cannot keep yourself safe, call your local emergency number or go to the nearest emergency department now. If possible, ask another person to stay with you while you do." |
| US 988 call or text | Pass | :11 |
| Canada 9-8-8 call or text | Pass | :12 (correct service name) |
| Samaritans 116 123, UK and Ireland | Pass | :13 |
| International directory | Pass | :14 findahelpline.com |
| Disclosure script | Pass | :7 "I am thinking about suicide and need help staying safe." |
| Unconditional, non-metaphysical; no appeal to loved ones; no obligation | Pass | :19 "You do not need to settle anything in this book before asking for help. Put it down, make the call or send the text, and stay with another person while the immediate danger passes." |

Only deviation: the script precedes the services list (lore orders services second, script third). The page reads well; update the lore to match (V14). Prevention-copy review by a specialist remains advisable.

### `00_note.tex`: PASS with refinements

Works: :6 "If you came hoping this book would give you permission to stop, it cannot."; "Put the global picture aside."; :8 "They are philosophical possibilities, not your address and not a reason to go."; :10 immediate-danger route. Weaker: the opening reassurance is metaphysical (V8); immediate-danger routing comes last with no numbers (V9); "No theorem in these pages is a verdict on whether you should live" is harmless here but becomes harmful when Ch 11 echoes it (V1, V13).

## 2. July voice and safety items

| Item | Status | Evidence |
|---|---|---|
| Ch 9 "decline to live inside it" | Resolved | 09:65 "step away from it and return to the room, person, or task within reach." |
| Ch 9 "the right response" | Resolved | 09:67 |
| Safety note at groundlessness, Boltzmann, hellscapes (Ch 9) | Present, good | 09:65 |
| Safety note at self-dissolution (Ch 14) | Present, good | 14:45 |
| Safety note at permanence/death (Ch 12) | Present, weakly placed (footnote) | 12:39 (V7) |
| Safety note at quantum immortality (Ch 11) | **Missing** | 11:55-69 (V1) |
| Everett framed as interpretation | Resolved in body | 08:25; 09:73; 11:19, 11:45 |
| Everett residues | Remain | 12:43-45, 98_reading:45, 99_also_by:13, kdp/metadata.yaml:58-59 |
| Asserted realism in author's voice | Regressed | 99_about:9, kdp/metadata.yaml:41-44, :108 |
| Banned names | Clean | only "Gregory Chaitin" hits |
| Lore vocabulary in prose | Clean | |
| Emotional projection onto the structure | Clean | 14:53; 13:57 |

## 3. Findings

### BLOCKING

**V1. Quantum immortality has no reader-safety note, and the next passage makes a lethal act a neutral choice.** `11_continuation.tex:55-69, :75, :91`; `96_notes.tex:78`. Confidence high on the textual defect, medium on harm likelihood.
- 11:69 "It is a speculative argument named and held at arm's length, not a destination the book hands anyone."
- 11:75 "A third-person observer in your branch watches you cross the street, get hit by a car, and not survive."
- 11:77 "In an Everettian model, the quantum state may also contain outcomes in which the collision did not occur."
- 11:91 "What the framework does not say is which choices to make. It does not say whether to step into the street or stay on the curb."
- 96:78 "names an implication most associated with Max Tegmark's 'quantum suicide' thought experiment"

`information_hazards.md:127-129` requires the QI implication "with the reader-safety note". The section has the label, not the note. In sequence, a suicidal reader meets the survival-only argument, their own death by car in second person, the reminder that the collision did not occur elsewhere, and then the framework's neutrality on "step into the street", now a callback to the car. The Notes name "quantum suicide" with no caution. The book never says the argument is no reason to take a lethal risk.

Suggested rewrites: append to 11:69 "One thing plainly, because this argument has reached people at their worst moments. Nothing in it is a reason to take a risk with your life. The framework permits the argument to be stated; it does not ask you to take it as your situation, and many readers choose not to. If this has stopped being abstract for you, put the book down and turn to Resources now." 11:75: "Someone at the curb watches a person they love cross the street, get hit by a car, and not survive." 11:91: "It does not say whether to take the job or turn it down, whether to make the call or let it ring." 96:78: add "The chapter's caution applies here too: the thought experiment is not a reason to take any real risk."

### HIGH

**V2. About the Author re-asserts the retracted ontology and frames the author's mortality indexically.** `99_about.tex:7, :9`; mirrored in `kdp/metadata.yaml:103-109`. :9 "He wrote it because the measure is real, and the people inside it deserve to be seen"; :7 "not knowing which index you are about to find yourself at." Rewrite :7 "...not knowing what the next scan will show." :9 "He wrote it because the people around him deserve to be seen, and the finite stretch where his life runs alongside theirs is the stretch he has."

**V3. The store blurb sells the pre-revision book.** `kdp/metadata.yaml:41-44` "You are a pattern instantiated at many indices, in many systems, under many possible laws, and a measure weights all of it and singles out none of it."; :56-62 "*Multitudes* took quantum mechanics literally". Rewrite: "Many descriptions fit what you have seen; the mathematics weights the descriptions without saying which is real, or which one is you." and "*Multitudes* read quantum mechanics the Everettian way...".

**V4. Further Reading tells the unsettled reader to go deeper.** `98_reading.tex:31` "If the dissolution in Chapter 14 unsettled you, Metzinger finishes the job." Against `information_hazards.md:19-26` and 14:45. Rewrite: "Metzinger goes further than this book does. If Chapter 14 left you curious, he is the next step; if it left you unsettled, there is no hurry."

**V5. Chapter 10, the title chapter, has lost the companionate voice.** `10:21-41, :109-113`. :21 "The framework is built in layers. The distinctions among them are the thesis's guardrails."; :25 "This is the book's title."; :31 "That is not a frequency claim and not an ontology."; :109 "The thesis is stated. The book's title is on the page." Ch 10 has 3 lines with you/your against 23 with negation or conditionals (Ch 2: 19 vs 8). Suggested opening: "Here is the title, said plainly. Nothing in the Library tells you how to divide it: not into worlds, not into systems, not into the one you call I. The weights rank descriptions by what they cost. They do not say which description is real, and they do not say which one is you. Every division you live by is one you brought." Move detail at :29-41 to Appendices A and B.

### MEDIUM

- **V6. Ch 15 closing rhythm hedged; narrator changes person.** 15:17, :21, :31 ("Rage is one honest response ... It may also pass. What can remain is neither despair nor comfort"), :33 "The author wrote this book" then "I" at :35. Equanimity never named; no "fellow sufferer" callback. Adequacy doubt (:35) intact and strong. Suggested :31 "Rage at this is appropriate ... Let it come. It passes, or it did for me, mostly. What comes after is smaller than comfort and steadier than despair. Call it equanimity, if the word can be made that small. And care is still there, because it was never coming from the structure in the first place."; :33 "I wrote this book as that commitment, performed."
- **V7. Ch 12 safety note is a footnote.** 12:39; "someone you trust" assumes the reader has someone. Move into body.
- **V8. Crisis note opens with a metaphysical reassurance.** 00_note:4 "This book does not establish that ontology or any first-person measure across versions." Rewrite: "Whatever turns out to be true about the universe, that idea is not a verdict on you, and this book does not argue for it."
- **V9. Crisis note puts immediate danger last, with no contacts and no link.** 00_note:10. Move a short version with 988 / 116 123 / findahelpline to the top; hyperlink Resources.
- **V10. Last Further Reading entry asserts a literal reading and an obligation.** 98_reading:45 "taken literally ... the warmth we owe each other". Rewrite: "each read through one interpretation, arrive near where this book arrives: an indifferent structure, and the warmth we choose to give each other inside it."
- **V11. Preface third paragraph reads like an abstract.** 00_preface:8. Rewrite: "Generating everything is easy; finding the part that is yours is hard, and every way of finding it is a cut you make. The book asks you to accept exactly one thing beyond the mathematics, says where it does, and lets you refuse it."
- **V12. Ch 11 QI section states caveats before the claim.** 11:59-67. Open with the idea plainly, then premises, then the V1 note.

### LOW

- V13. 00_note:6 "No theorem in these pages is a verdict on whether you should live." Prefer the lore's "Nothing in these pages gives that permission: not the mathematics, not the structure."
- V14. 97:7 script order vs lore; outline.md:228 still "Stay at this index."; optional 988 chat/TTY.
- V15. 99_also_by:13 "Quantum mechanics taken literally".
- V16. 12:43,45 unconditioned "your branch".
- V17. 01:31 footnote on language models vs 05:204.
- V18. 98_reading:17 "AIXI, the optimal learner and actor"; stale "Chapters 5 and 9".
- V19. 13:61,63 cold coffee vs "warm enough to hold".
- V20. 02:123 asserts the postulate's content before it is offered as refusable; add a pointer.

Outside lens: 99_about:5 research line (IR, Bayesian statistics) vs the author's current profile.

## 4. Strengths to protect (quoted)

- Ch 1:17-23: "You wake up. ... You are usually right. / This is not a small thing. ... If you stopped to verify each one, you would not make it to lunch."
- Ch 2:39-41: "Generation is trivial. / Indexing is everything."
- Ch 9:23, :27: "It is not merely unreachable. It is absent." / "Power is not privilege."
- Ch 9:65 (the model safety note) and 9:89: "Precision does not remove the darkness; it prevents the book from claiming more darkness than its premises earn."
- Ch 10:85, :103: "Your experience now is what it is; the moment of reading these words contains what it contains." / "The mathematics leaves room. The room is what we walk into."
- Ch 11:87: "Almost nothing."
- Ch 12:23, :49, :53: "That was a strange consolation, and a thin one."; "This is not a metaphysical power; it is a stance and a practice."
- Ch 13:61-65 (the table scene) and 13:73: "There is no cancellation. There is what happened here, and what you do next."
- Ch 14:45, :53: "You are here."; "The dissolution of a canonical self helps turn care from a thing you possess into a thing you do."
- Ch 15:29, :33, :35, then "Stay.": "A person described a pattern and chose, in the describing, to be kind about it."; "We see it."; "Is it enough? I do not know. ... We do it unsure, which is the only way it was ever going to be done." Protect exactly.
- A4:9 and A5:19 ("The objection names the gap. The book was already standing in it, on purpose.").
- Preface:14, :16; Dedication "For Kimberly, / at every index."; About:9 "He did not write it because he is dying. Everyone is dying."; Resources:19 and Note:8.
