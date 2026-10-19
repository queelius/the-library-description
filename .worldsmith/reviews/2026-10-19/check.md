# Worldsmith check (all modes): The Library, 2026-10-19

Read-only whole-book diagnostic after the 2026-10-18 revision, which had verified 63 fixes one by
one but had not re-read the book as a whole. Three auditors read the manuscript cover to cover in
parallel (consistency against `lore/foundations.md`; editorial against `direction.md`,
`themes.md`, `outline.md`, `landing.md`, `information_hazards.md`; cross-reference across lore,
outline, Notes, and labels). Mechanical checks: `count_patterns.py`, label/ref audit, build log,
em-dash scan. Single work (no `.worldsmith/project.yaml`), so no cross-work mode.

## Summary

| Category | HIGH | MEDIUM | LOW |
|---|---|---|---|
| Consistency (lore and formal claims) | 0 | 3 | 9 |
| Editorial (prose, repetition, voice) | 4 | 12 | 8 |
| Cross-reference | 1 | 5 | 12 |
| Status | 0 | 0 | 1 |

Headline: the mathematics and the lore hold. No July overclaim regressed: $M$ over minimal
monotone programs, $m$/$K$ on a prefix machine, Kraft permits and does not force, dominance up to
a machine- and source-dependent constant, $M$ uncomputable and not an observer measure, Born
relocated not derived. The remaining problems were whole-book effects of many local fixes: Part
III re-performing moves instead of building on them, and `lore/outline.md` lagging the October
revision.

## HIGH

- **X-1** `lore/outline.md:81`: Ch 5 epigraph still named the superseded Hutter 2005 paraphrase;
  lore governs, so a rule-following pass would restore it.
- **E-1** Ch 11:17-23 and 12:17 redrew the self's boundary before Ch 14's convergence (14:31),
  against the outline's "earlier chapters only point forward."
- **E-2** Ch 15:23-29 performed the book-as-act beat four paragraphs running; 15:25 echoed 14:54.
- **E-3** One uncomputability sentence near-verbatim four times (2:115, 6:49, 7:123, A4:5),
  against outline rule 9.
- **E-4** Ch 12:43 turned grief into policy register ("orientation... a stance and a practice"),
  pre-empting 13:55 and using a lore-only term.

## MEDIUM

- **C-1** 13:7 "the structure itself carries a braid" contradicted 13:57 and 14:66 (the braid is a
  cut). Also raised by the editorial audit (its M7).
- **C-2** 15:7 "A short program could print it" read as a short program printing this book alone.
- **C-3** 8:54 panel "Everettian outcomes" and 9:59 "one analogy" tied the Born comparison to
  Everett.
- **E-M1 to E-M13** (editorial): Ch 14 vestigial "What is preserved" and triple Parfit; Ch 14
  safety note ending on jargon; Ch 14 bolted callbacks (14:27, 14:29); abstraction inside the Ch 13
  table scene; Ch 13 closing with a dangling "the staying"; Ch 13 maxim stack (13:57);
  moral-weight caveat five times (9:47, 9:71, 11:69, 12:27, 13:39); double recap across Ch 9 and
  Ch 10; Camus spent early in a Ch 9 footnote; Ch 12 thin with a repeated block-universe passage
  (12:39); "room" shifting sense (10:99, 11:71); Chs 13 and 14 opening on the same word device.
- **X-2 to X-6** (cross-reference): stale outline word table and Ch 14/15 entries; five figures
  never cited in text (`fig:slip`, `fig:cut-argument`, `fig:endpoint-spectrum`,
  `fig:mwi-branching`, `fig:boltzmann-brain`); Ch 15 order versus outline; 8:89 "we return to it
  below" (actually Ch 9); `implications.md` "Memory" and "History and Progress" orphaned.

## LOW

Ch 5:31 $K(\mu)$ machine wording; Fig 2.2 caption overstating address cost; Ch 7:7 "This chapter
draws them" though Ch 6 names them; Ch 9:49 dark continuation naming fewer premises than
Appendix C; Notes keys not verbatim (SIA, *il faut*); Notes lacking sources (speed prior,
xerographic, Sleeping Beauty, doomsday); Ch 15 Notes order; catalog/catalogue; epigraph title
styling; A1:3 "stated each once"; Ch 10 footnote "two books" versus the three-book suite; preface
"exactly one thing" versus the chosen computable frame; outline Ch 1 epigraph and "cool" coffee;
`landing.md:66`, `grace.md:187`, `direction.md` undrawn diagrams; `CLAUDE.md` short path to
`decisions/revision.md`; outline "Open questions" stale; 11:35 circular sentence; 11:45 triple
restatement; 9:53 and 11:59 same safety-note opener; 12:29 "curb" four times; Ch 13 title no longer
matching a chapter that sets branches aside (author's call).

## Strengths to protect

Ch 11's opening hour and mercy paragraph; Ch 12's hallway and kitchen; Ch 13's "We" section;
Ch 14's light switch and rubber hand; Ch 15's rage paragraph; Ch 5's Solomonoff chicken.

## Disposition

Fixed the same day, lore first; see `revision.md` in this directory.
