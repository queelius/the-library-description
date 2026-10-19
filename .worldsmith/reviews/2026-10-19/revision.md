# Revision after the 2026-10-19 check

Source: `check.md` in this directory. Applied directly in the main session, lore first, then
prose, then two independent read-only verifiers (craft and voice; consistency and lore) read every
changed passage in context. Their follow-ups were applied in one retry pass and rebuilt.

## Lore (first)

- `outline.md`: Ch 1 and Ch 5 epigraph entries match the manuscript (Ch 5 records that the 2005
  paraphrase must not return); Ch 9 is the one home of "program weights are not moral weights,"
  with no footings recap and no Camus; Ch 10 seeds the adequacy doubt once; Ch 11 notes its
  boundary-redrawing is its own use of the move, gathered later by Ch 14; Ch 12 keeps "What the
  living lose" in grief terms and leaves orientation to Ch 13; Ch 13 attributes the braid to
  *Worldlines*, coffee cold, gloss after the scene, home of "orientation can be broad; action
  remains local"; Ch 14 and Ch 15 entries rewritten to the shipped structure (Ch 15 cadence in
  shipped order; book-as-act made once and paid off once); word table now shows targets and
  actuals; the stale open questions recorded as resolved.
- `grace.md` (braid enters at Ch 12; Camus placement), `landing.md` (Ch 10 location),
  `direction.md` (undrawn diagrams marked), `implications.md` ("Memory" and "History and
  Progress" flagged exploratory).

## Manuscript

| Finding | Fix |
|---|---|
| E-1 | 12:17 trimmed to a pointer; Ch 14's self carving opens by gathering the lines drawn in Ch 11 and Ch 12, then takes the job away |
| E-2 | 15:25 spine tail changed ("The line that puts the two of us together is one of those, and it is drawn from both ends."); 15:27 last clause cut and its subject restored ("The book could not reach..."); protected lines verbatim |
| E-3 | Uncomputability sentence full only in Ch 2; Ch 6, Ch 7, A4 shortened and varied |
| E-4 | Ch 12 "What the living lose" rewritten in grief terms (the braid's endpoint, what the survivors carry, "not as survival"); orientation paragraph and the repeated block-universe passage cut |
| C-1 | 13:7 braid attributed to *Worldlines*; "keeps the image and changes what holds it together" |
| C-2 | 15:7 "The short program that prints everything prints it too" |
| C-3 | Ch 8 panel "quantum outcomes"; Ch 9 "Without Everett" names what is lost; 9:49 names both indexical rules |
| E-M | Ch 14 opening, callbacks, and "What is preserved" merged (safety note ends "You are here."); Ch 13 maxims cut to two, table scene concrete with the chair named, closing given referents; moral-weight caveat removed from 11:69 and 12:27; Ch 9 footings recap and Camus footnote cut; Ch 10:93 rewritten as a plain doubt that does not overclaim; "room" fixed at 10:99 and 11:71 |
| X | Five figures now cited in text; 8:89 points to Chapter 9; Notes keys verbatim; sources added (Srednicki and Hartle; Elga; Carter and Leslie; Schmidhuber); Ch 15 Notes lead with the epigraph; Borges title quoted in the Notes |
| LOW | Ch 5:31 $K(\mu)$ on the prefix machine; Fig 2.2 caption; Ch 7:7; A1:3; Ch 10 footnote (three-book suite); catalogue spelling; epigraph title styling; Ch 11:35, 11:45, 11:59, 11:71; Ch 12 curb repetition; Ch 14 four-things count |

## Verification

- Craft and voice: all targets RESOLVED or PARTIAL. It found 1 HIGH regression (15:27 lost
  referent), 3 MEDIUM (12:43 one-line reachability claim, 13:65 chair without antecedent, 10:93
  reassurance overclaiming against the postulate), 1 MEDIUM repetition (14:58 echoing 14:31), and
  LOW wording. All were fixed in the retry pass. Its residual PARTIAL on E-2 (15:23, 15:27 and
  15:29 all touch the act of writing) is accepted: 15:23 is the protected line, 15:27 is now about
  the refusal, and 15:29 is the outline's single payoff.
- Consistency and lore: all 11 targets RESOLVED; 0 HIGH or MEDIUM; 8 LOW residues (outline and
  lore wording, Notes styling, one connective in 14:58, the shortened uncomputability clause), all
  fixed.

## Not changed

- Preface "exactly one thing beyond the mathematics": left as is; the computable frame is part of
  the construction footing.
- Ch 13 title "Love Across Branches": the author's call.
- Chapter-end short pages at printed pp. 20, 102, 108 pre-date this pass.

## Build

140 pages with chapter pagination unchanged; no undefined references or overfull boxes; EPUB
passes `epubcheck` 5.3.0; about 28,750 words (body about 23,750).
