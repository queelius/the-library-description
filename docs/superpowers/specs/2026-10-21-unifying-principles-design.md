# The Unifying Principles: Design Spec

**Date:** 2026-10-21
**Status:** Draft for the author's approval (brainstorm complete; builder check pending).
**Governs:** a structural revision of *The Library: The Indifference of Description* that names
three principles the book already uses, moves the postulate into the register of epistemic
humility, and rebuilds Chapter 9 around the first principle. Lore first, then prose.

---

## 1. Intent

The book handles one family of puzzles as a series of separate refusals. Boltzmann brains are
refused in Chapter 9, self-location rules in Chapter 8 and Appendix C, quantum immortality in
Chapter 11, "copies do not console" in Chapter 12, dilution in Chapter 13, and "no thread ties
you here to you there" in Chapter 14. A reader meets six refusals and is never told they are one
refusal. The author's own observation on 2026-10-21 exposed the seam: a spatially infinite
cosmos supplies duplicates of a person, including ones that share a history up to a death and
then survive, so "quantum immortality" needs no quantum mechanics. The argument's force was
never in the physics. It is in two rules the book has always declined to adopt, and those rules
are instances of a principle the book has never stated.

The revision states that principle and two others once each, at the place where each first
fits, and then uses them by name. It also settles a seam the October 19 revision left open:
Chapter 6 now calls the postulate "a refusal, not a proof of absence," while Chapter 9 still
treats "no view from the top" as a finding derived from it, and the boxed wording asserts an
absence outright. The author's decision (2026-10-21): the book takes the epistemically humble
approach in general. The postulate becomes a stance, worded as what the book declines to do,
and the cold sentences are sorted into findings (what the mathematics shows) and refusals
(what the book declines to grant).

## 2. Goals, non-goals, anti-goals

**Goals.**
- Name three principles once each and refer to them by name afterward (discipline rule 9).
- Make Chapter 9 the one home of the first principle and of everything that is an instance of
  it: self-location, continuation, the catalogue of what the framework permits, and "no view
  from the top."
- Reword the postulate as a stance, identically in both boxes, and sort every cold sentence in
  the book into finding or refusal, with the reason a refusal is the most the book can honestly
  take.
- Name the strongest attempt to fill the gap with the book's own prior (UDASSA) and give it the
  hearing joint-carving realism got.
- Keep fifteen chapters, the five footings, the three Parts, the Everett landmark in Chapter 8,
  and the Chapter 15 cadence. Total length about 33,500 words (section 7).

**Non-goals.**
- No change to the mathematics of Part I or to any theorem's statement.
- No new footing. The three principles are all pre-postulate (see section 4). The postulate
  remains the one thing the reader is asked to grant.
- No staged dialogue; the three inline objection-and-reply pairs stay as they are.
- No renaming of chapter files. Chapter titles change as Chapters 11 and 13 did on October 19
  (the `\chapter` line changes; the filename does not).

**Anti-goals (what would make this a failure even if it builds).**
- Overclaiming principle 3 beyond strings. It is a theorem about descriptions and an analogy
  everywhere else, and the prose must say which it is being used as.
- Letting the stance register leak into every sentence. The book states once that its cold
  claims are refusals and why, then speaks plainly. A hedge on every page is the defensive
  register rule 9 forbids.
- Re-deriving principle 1 in Part III. Chapters 11 to 14 refer to Chapter 9 by name.
- Turning Chapter 9 into a survey of anthropic reasoning. Appendix C is the survey; Chapter 9
  states the principle, shows three instances, and moves on.
- Widening the quantum-immortality exposure without its reply in the same breath (section 8).

## 3. The three principles (canonical statements for the lore)

These go into `lore/foundations.md` as a new section, "Three principles the book names," placed
after "The counting fact" and before "The cut has no canonical form." Each has a lore name, a
book-voice statement, its epistemic status, its home chapter, and its instances.

### P1. The center is not in the description

**Statement.** A description of the whole, however complete, does not say which part of it is
the one reading the description. It can contain every occurrence of you, each with its
memories and each thinking "I am here," and still not contain the fact of which one is this,
or which later one is next. Those facts are not missing from the description by oversight;
they are not the kind of thing a description contains. Philosophers call a world with a "you
are here" mark in it a *centered* world.

**How far P1 reaches (settled 2026-10-21, builder check).** P1 stops there: no description,
however complete, contains its center. Whether there is nonetheless a hidden fact of which
occurrence is you, unreachable but existing, is a question closed from inside in both
directions (P3), exactly like the joints. So "the center is a cut" is not part of P1. It is the
postulate applied to the center: the book declines to posit a cross-occurrence "you" as a found
fact and reads it as a cut. P1 is the finding; "the center is a cut" is the refusal. Chapter 9
says both, in that order, and "No view from the top" gets a third clause: the hidden indexical
fact the reader hoped for is not denied, it is declined, and nothing inside could certify it.

**Two faces.** *Now:* among the occurrences that match your evidence, which is you (the
self-location question; the missing occurrence measure is this face in the Library's
currency). *Next:* among later occurrences, which continue you (the identity question; the
Chooser's question in Part III). Every argument in the family needs a supplier of occurrences
plus one or both rules, and the rules are cuts.

**Supplier-neutrality.** The occurrences can be supplied by Everett branches, by a spatially
infinite cosmos (ordinary cosmology allows one), by eternal inflation, by thermal fluctuation,
by simulation, or by the Library read ontically. The argument's form and force are the same for
every supplier, because the force lives in the two rules. Everett stays the chapter's landmark
as the supplier with the most physics behind it (the author's wish); the infinite cosmos is
the supplier that asks least of physics and most of counting.

**The occurrence measure, sorted.** Two claims hide in "the occurrence measure is missing."
That the construction supplies none is a finding (P2: $M$ is defined on prefixes, and no
carving of occurrences has been supplied). That the book adopts none of the rules on offer is a
refusal. Both are said, and kept apart, in Chapter 9 and Appendix C.

**The native-weighting slip.** Each supplier brings a weighting of its own: Born weights on
branches; $M$ on program prefixes; nothing at all for an infinite cosmos, where the ratio of
one kind of occurrence to another is infinity over infinity and every regularization gives an
answer that depends on the cutoff (the cosmological measure problem). Reading any native
weighting as first-person weight over occurrences is Chapter 6's slip made one level down.
The best version of the slip uses the book's own prior: weight an observer-moment by the length
of the shortest program that generates the world *and locates the observer inside it*. That is
the universal-distribution self-sampling assumption (UDASSA, Hal Finney and Wei Dai). It is the
most principled candidate for an occurrence measure anyone has offered, and it is a cut three
times over: the locating program is an index, its length is relative to a machine, and the
decision to weight by that length is the choice of a rule. The reply does not say it is wrong.
It says it is chosen, and that the choosing is the whole point. The reply must also say why
"chosen" disqualifies UDASSA as *the* occurrence measure without disqualifying $M$ as the
book's predictor, since both are machine-relative choices: the book uses $M$ for a job, with
its scope stated, and crowns nothing; UDASSA may be used the same way, for a job; what the
objection asked for was a crown, and that is what the book declines.

**The copy was already there.** No supplier's copies are brought into being by your death. On
Everett the branches are there regardless; in an infinite cosmos the survivor is in some far
region now, while you are alive. "You die and then continue as the survivor" is the identity
rule talking, and the same rule, applied evenly, makes the survivor as much you before your
death as after, along with every other match, including the ones whose next moment is
dissolution. No one experiences the gap between occurrences, and no one experiences its
absence. The ordering of causally disconnected regions is itself a convention (*Worldlines*).

**Status.** A fact about descriptions, not a theorem of algorithmic information theory and not
the postulate. It needs no assent. The deflationary reading, that "I am this one" is trivially
true for each occurrence of itself, is compatible with it; the step from there to "there is no
cross-occurrence you" is the refusal above, not the finding. (No dissent citation in the Notes:
citing dissent against a claim labeled "needs no assent" would be a seam.)

**Home.** Chapter 9, retitled "The Center." Seeds: Chapter 1 (the chicken is "not at the place
in the structure it thinks it is," already there), Chapter 2 (no book in the library says which
reader is holding it; the catalogue cannot carry a "you are here" mark), Chapter 7 (the
missing occurrence measure, defined there, is the *now* face in the Library's currency, and one
sentence points forward to Chapter 9 for why no description could fill it).

**Instances by chapter.** Ch 7 (the gap defined), Ch 8 (the Everett landmark, now explicitly
one supplier), Ch 9 (the principle, both faces, the catalogue, no view from the top), Ch 10
(the caveat paragraph and "What remains yours" cite it by name), Ch 11 (quantum immortality is
the chapter's one P1 instance, named and labeled; the five widths are *not* a face of P1: they
are the extent of the one who acts, carved for a job, and stay under the postulate and the
"good for a job" thread, as the chapter already has them),
Ch 12 (the *does not console* turn is an application: a copy's being you is a cut, so nothing
in the structure makes it a continuation that could console), Ch 13 (dilution, by reference),
Ch 14 ("no thread supplied by $M$ ties you here to you there," by reference), Appendix C
(the survey of rules, now including UDASSA), Appendix E (new objection 7).

### P2. Weights come after cuts

**Statement.** A weight is defined on alternatives that have already been carved out. Before
the bins there is no count, and before the count there is no probability. The coin's bins in
Chapter 3 came with your question, not with the trials; $M$ is defined on prefixes because the
machine fixed that carving; Born weights attach to outcomes once decoherence has carved them,
and decoherence fixes no unique count; the self-sampling rules need a reference class before
they can weigh anything.

**Status.** Mathematics (a measure is defined on a space of events someone has specified).
Needs no assent.

**What it does for the book.** It explains why the occurrence measure is missing rather than
merely unspecified: nobody has supplied the carving it would be defined on, and on the
postulate nobody can supply a privileged one. It is the hinge in Chapter 10 between the two
absences of privilege: the first (prediction's underdetermination) can never settle the second
(description's), because every weight the first could offer presupposes a carving the second
is about. It is also why branch-counting is no shortcut to the Born rule (Chapter 8, Appendix
B) and why the native-weighting slip is a slip.

**Home.** Chapter 3, at the coin, in two sentences ("The counting was exact. The bins were
not in the trials; they came with your question."), which Chapter 14's "The index, carved
twice" then recalls instead of introducing. Named again, by name, in Chapter 4 (one sentence:
$M$ weights prefixes because the machine carved the stream into them), Chapter 8 (the Born
comparison: "neither can assign a weight until the alternatives have been carved out" becomes
the principle cited), Chapter 9 (the rules), Chapter 10 (the hinge).

### P3. A found name certifies itself; an absence cannot be certified

**Statement.** For strings this is exact. A short description, once exhibited, settles that the
string has one; the strings with short names can be listed by a procedure that never ends. But
no procedure certifies that a given string has no short name, and Chaitin's incompleteness
theorem sharpens this: for any fixed consistent system of proof there is a bound beyond which
no particular string can be proved to need more than that many symbols, although almost every
string does. (Builder: verify the statement and the citation against Li and Vitányi before it
goes into Appendix A or the Notes; do not cite a section number from memory.)

**Where it reaches, and where it does not.** It governs the string facts (Chapter 2's pi
passage already states it; Appendix A or the Notes state the theorem). It governs "no greater
mind has been disproved": a mind that showed itself would certify its existence; absence
never certifies. It does *not* govern the joints question, where neither direction is
certifiable from inside: a carving that works certifies that it works for a job, it cannot
certify that it is the structure's own, and nothing certifies that none is. That double closure
is the reason the postulate must be a stance (section 4). Outside strings the principle is an
analogy, and the prose says so whenever it uses it that way.

**Status.** Theorem for strings; analogy elsewhere, labeled.

**Home.** Chapter 2, the inversion paragraph (present since 2026-10-21). Used by name in
Chapter 6 (why the postulate declines rather than denies), Chapter 9 (no view from the top,
second half), Appendix E (objections 6 and 7), Chapter 10 ("What remains yours": the book
could be wrong, and here is the shape of the doubt).

**Two smaller threads,** named once and used: *a carving is good for a job* (Chapter 8's
decomposability, Appendix E objection 6, Chapter 11's five widths, Chapter 14's kitchen) and
*being observed is thin evidence* (Chapter 7's "what does favor something: we observe it"
rules out empty outcomes and little else).

## 4. The postulate as a stance

**Decision (author, 2026-10-21):** the epistemically humble register, throughout.

**Why it is forced, not merely chosen.** By P3 the joints question is closed from inside in
both directions. A book that asserts "there are no joints" as an axiom claims what it has just
said cannot be certified. A book that declines to crown any cut claims only what it can show:
that nothing available from inside marks one, and that it will therefore read none as the
structure's own.

**The box, reworded.** Identical in Chapter 6 and Chapter 9 (where it is recalled) and in
`lore/foundations.md`:

> **The postulate: no cut is privileged.** The book treats no decomposition of the describable
> totality as view-independently correct. Every carving into worlds, systems, and selves it
> reads as a cut an observer makes, and none as the structure's own.

This is my proposed wording, marked as my call; the author may rephrase. The constraint is
only that it say what the book declines, not what the structure lacks. "There are no joints.
There are only the cuts you make." stays as the picture, exactly as it is, in Chapter 2,
Chapter 6, Chapter 10, Chapter 14, and Chapter 15; the lore already records that it is
presented as a picture, not a fact.

**Sorting the cold sentences.** Each is a finding or a refusal, and the prose that carries it
must be consistent with its kind:

| Sentence | Kind | Rests on |
|---|---|---|
| Almost nothing has a short name; nothing computable sorts the Library by cost | finding | theorem |
| No description contains its center; nothing says which one is you | finding | P1 |
| No weight without a carving; the construction supplies no occurrence measure | finding | P2 |
| The book adopts none of the occurrence rules on offer | refusal | postulate |
| The center is a cut (no cross-occurrence "you" as a found fact) | refusal | postulate + P1 + P3 |
| No surveying mind, however vast, can read off which one is you | finding | P1 |
| No greater mind has been disproved | finding | P3 |
| No carving is the structure's own | refusal | postulate (stance) |
| No mind's decomposition is *the* decomposition | refusal | postulate |
| Groundlessness: no floor under any cut | refusal, stated as "no floor the book can certify" | postulate + P3 |
| The structure does not require, reward, or notice | finding about the structure as a mathematical object, not about minds in it | construction |
| No view from above. No reason beneath. (Ch 15) | kept verbatim; the scope sentence before it ("nothing in the framework says") already makes it "as far as the book can see" | P1 + P3 + framework |

**What changes in the lore because of the register.** `foundations.md`: the postulate section
(box; "Status" paragraph becomes the normative statement; the cascade's "No view from the
top" entry splits into its P1 half and its postulate half); the discipline rule 5 ("'No view
from the top' follows from the postulate" becomes "its indexical half follows from P1 and
needs no postulate; its joints half is the postulate applied"). `themes.md` theme 2 ("No
Privileged Cut") and theme 4 ("The Groundlessness"): groundlessness is the condition of one who
cannot certify a floor, not the finding that there is none. `grace.md` lines on "no view from
the top" (it "follows directly from the postulate"): split the same way. `landing.md`: check
the adequacy-doubt paragraph reads as humility about the stance, which it already does.
`CLAUDE.md` section 2, item 3: "the postulate ... is a stance: the book declines to treat any
cut as privileged, because (P3) nothing from inside could certify a joint or its absence."

## 5. Chapter plan

### Part I (seeds; small edits)

- **Chapter 1.** No change required. The chicken's sentence "not at the place in the structure
  it thinks it is" is the seed of P1 and stays as is.
- **Chapter 2.** One or two sentences in "Indexing" or "The address of a book": the catalogue,
  even a faithful one, cannot carry a "you are here" mark; no book in the library says which
  reader is holding it. P3 is already present (the pi passage); the Notes gain Chaitin (after
  verification).
- **Chapter 3.** Two sentences at the coin (P2's home, section 3). Chapter 14 then recalls.
- **Chapter 4.** One sentence naming P2 where $M$ is defined on prefixes.
- **Chapter 5.** No change.

### Part II

- **Chapter 6, The Slip.** Box reworded. The inline reply after "Be careful how far this
  reaches" gains P3 by name: both directions closed, so a refusal is the most the book can
  take; "The postulate proves no absence; it declines to crown one" stays. The ontic reading in
  "Two readings" is already the slip; one clause notes that Chapter 9 will meet the same slip
  one level down.
- **Chapter 7, The Inhabited Library.** The missing occurrence measure stays defined here
  (rule 9) with one forward sentence: it is the *now* face of something Chapter 9 names, and no
  description could fill it. "What if you refuse": quantum immortality "needs Everett" becomes
  "needs a supplier of copies (Everett is one), an identity rule, and a self-location rule."
  The footing list's "optional additions" gain the same wording.
- **Chapter 8, The Observer.** Keeps "What an observer is" and "An Everettian landmark" (with
  the Born comparison, now citing P2 by name for "decoherence fixes no unique count"). Loses
  "Where am I?" to Chapter 9. Its final paragraph (the two views are not rivals of one kind; a
  vantage you have and a picture you drew) stays in Chapter 8 as a short closing section,
  working title "Which picture is real," because "realism is a cut" has its canonical home here
  (rule 9). The last sentence hands off: one more thing no picture contains, which one in it is
  you. (The paragraph now opens "There is a deeper underdetermination underneath this one,"
  where "this one" was self-location; with that section gone, the closing must introduce the
  two-views question on its own terms.) The surviving sentence of "Without Everett" ("Here, Everett is a guest") moves into the
  landmark paragraph; a reader who rejects Everett loses one supplier and nothing else.
- **Chapter 9, The Center** (file `09_the_limits.tex` unchanged). Replaces The Limits.
  Sections, in order:
  1. *Where am I?* Moved from Chapter 8 with Figure `fig:where-am-i`; the question sharpened;
     the two underdeterminations.
  2. *The center is not in the description.* P1 stated in the book's voice. Tell the two gods
     without naming Lewis in the body (the Notes cite Lewis 1979 and Perry 1979; dissent,
     Cappelen and Dever 2013, may be noted). The two faces. The three ingredients: a supplier,
     a rule for now, a rule for next. The suppliers listed, Everett first as the one with the
     most physics behind it, the infinite cosmos as the author's own case stated in full
     ("quantum immortality without the quantum"), with the reply in the same breath: the copy
     was already there; no one experiences the gap; and the measure gets worse without the
     quantum, not better. The rules the literature offers (SSA, SIA, xerographic distributions)
     listed in one paragraph and sent to Appendix C. The native-weighting slip named, UDASSA
     named as its best form, and sent to Appendices C and E.
  3. *No view from the top.* Split in two. First half (finding, P1): even a mind that surveys
     the whole cannot read off which occurrence is you, since that is in no survey. Second half
     (refusal, postulate): whether any mind's decomposition is the structure's own is what the
     book declines to grant, and by P3 no mind inside could certify it. Third clause (refusal, postulate): the hidden
     indexical fact the reader hoped for, "unreachable but at least existing," is not denied
     but declined, since nothing inside could certify it either way. "Power is not
     privilege" stays. "The book has not disproved every greater mind" stays and is now
     anchored to P3. Warmth, if any, among observers, stays as the seed of Part III.
  4. *What the framework permits.* The catalogue, each entry tagged with what it needs (a
     supplier; a *now* rule; a *next* rule; a cosmology). Boltzmann brains (supplier +
     now-rule), hellscapes (supplier read ontically; program weights are not moral weights,
     this remains its one home), dark continuation (supplier + next-rule + now-rule; the
     quantum is dispensable here too), versions of you and of everyone you love (three
     additional choices, as now). The safety note stays in the body, unchanged in substance.
  5. *Where this leaves you.* The postulate box recalled in the new wording. The open
     questions. The handoff to Chapter 10.
  Target length about 2,400 words (from 1,152; measured by the builder check: about 1,600
  words move in or stay before any new material). Where content and length collide, content
  wins, with two economies: the rules paragraph (SSA, SIA, xerographic distributions) and the
  UDASSA paragraph are pointers in Chapter 9 and full statements in Appendices C and E; the
  infinite-cosmos case is stated in full in Chapter 9, because it is the author's own
  observation and its reply must sit beside it (section 8). Everything in the old Chapter 9
  survives except "Without Everett" and the claim that the view from the top "is absent."
- **Chapter 10, The Indifference of Description.** The caveat paragraph names the center ("it
  does not say which occurrence is you; Chapter 9 said why no description could"). "Two
  absences of privilege" gains P2 as its hinge, one sentence. "What remains yours" cites P1 and
  P3 by name where it already says what the mathematics bought and what could be wrong.
  Thesis sentence unchanged.

### Part III (stop re-deriving)

- **Chapter 11, The Chooser.** The five widths stay as they are (the postulate applied to the
  one who acts; a carving good for a job); they are not refiled under P1. "Quantum immortality"
  becomes one short instance: named, labeled, its three ingredients by name (a supplier, which
  need not be quantum; a next-rule; a now-rule), the safety note verbatim, the pointer to
  Chapter 9 and Appendix C. Its length stays about what it is (the safety note is a third of
  it). "One optional lens" stays.
- **Chapter 12.** "This is not an escape" remains the canonical "does not console" (rule 9) and
  grants the premises in the new vocabulary ("Grant a supplier, the identity rule, the
  self-location rule"). One sentence ties it to Chapter 9: a copy's being you is a cut, so
  nothing in the structure makes it a continuation that could console.
- **Chapter 13.** The dilution paragraph refers to Chapter 12 as now; no change beyond
  vocabulary if the figure caption mentions Everett alone (it says "on Everett's reading, or an
  ontic reading of the outside view," which is already supplier-neutral; keep).
- **Chapter 14.** "The index, carved twice" recalls Chapter 3's sentences instead of
  introducing P2. "What is preserved" cites the center by name for "no thread ties you here to
  you there."
- **Chapter 15.** Unchanged except where a cross-reference's wording must follow. The protected
  line, the triad, the cadence, and "Stay." are verbatim.

### Back matter

- **Appendix A.** Chaitin's incompleteness theorem, stated with its hypothesis, after
  verification; P3 named as what it formalizes.
- **Appendix B.** One sentence: the Deutsch-Wallace program (Born weights from decision theory
  inside Everett) is the Everettian analog of defending a native weighting; the book takes no
  side and notes it as the seam to *Multitudes*.
- **Appendix C.** Reframed around P1: the supplier, the now-rule, the next-rule. UDASSA added
  to the survey with its reply. Quantum immortality taken apart as now, with the supplier made
  general and the "copy was already there" reply added. The speed prior stays.
- **Appendix D.** Refusal under the stance register: to refuse is to assert that some carving
  is the structure's own, which the book declined to assert; the refuser keeps every theorem
  and all three principles.
- **Appendix E.** Objection 7: *The occurrence measure is not missing; the book's own prior
  supplies it.* Stated at full strength (UDASSA, with the locating program), then the reply
  (section 3, P1). Objection 6's reply cites P3 for "neither direction certifiable."
- **Notes.** New entries: Chapter 9 (Lewis 1979 "Attitudes De Dicto and De Se" for the two
  gods; Perry 1979 "The Problem of the Essential Indexical"; Tegmark's Level I multiverse for
  the infinite cosmos; the cosmological measure problem, one standard reference; Finney and
  Wei Dai for UDASSA, with the source verified before citation since it lives in mailing-list
  archives and a 2005 write-up; Cappelen and Dever 2013 as dissent, optional). Chapter 2 and
  Appendix A (Chaitin 1974). The citation rule is untouched: these are mathematical sources and
  philosophical adversaries, named in the Notes, not authorities for the moral spine.
- **Further Reading.** Consider adding Tegmark's *Our Mathematical Universe* (2014) for the
  Level I argument, with the same caution the book already gives Tegmark in Chapter 6's
  footnote; builder's call.

## 6. Lore propagation (do first)

In order: `foundations.md` (new section "Three principles the book names"; postulate section
and box, including the line that still names Chapter 9's "Without Everett"; cascade entries;
optional additions wording; discipline rule 5; "What the bedrock does not provide"), `index.md` (self-location section restated under P1), `themes.md` (themes 2, 4,
6), `grace.md` (no view from the top), `landing.md` (check only), `apokatastasis.md` (check
"no view from the top" mentions), `information_hazards.md` (section 8 below), `appendices.md`
(C, E, Notes), `outline.md` (Chapters 2, 3, 4, 6 to 12, 14; the word table), `direction.md`
(comparable works: Tegmark's Level I; Bostrom), then `CLAUDE.md` (section 2 item 3; section 5
status; the index.md and outline.md descriptions in the lore map) and `README.md`.

## 7. Budget

| Unit | Now | Target |
|---|---|---|
| Chapter 8 | 1,944 | about 1,600 |
| Chapter 9 | 1,152 | about 2,400 |
| Chapter 11 | 1,651 | about 1,650 |
| Part II total | about 8,450 | about 9,400 |
| Part III total | about 6,100 | about 6,050 |
| Appendices | about 4,050 | about 4,500 |
| Whole book (`make wordcount`) | 31,724 | about 33,500 (author to confirm; see section 11) |

## 8. Reader-safety re-audit

`information_hazards.md` is re-audited for two changes. (a) Making the indexical gap
supplier-neutral slightly widens the quantum-immortality exposure: a reader who rejects Everett
could now reach the argument by the infinite-cosmos route. Mitigation: the reply ("the copy was
already there"; "no one experiences the gap"; the measure problem) is in the same section as
the argument, in Chapter 9, and the Chapter 11 safety note is verbatim. (b) "The center is a
cut" is a new phrasing of risk 1 (groundlessness and derealization). Mitigation: Chapter 9's
existing safety paragraph ("describing a possibility does not place you in it") stays in the
body, and the humility register itself lowers the temperature: the book no longer says there is
no floor, it says it cannot certify one and holds the cut anyway. Every safety note remains
body text and points to Resources.

## 9. Verification

Lore first, then prose, chapter by chapter, with `make check` after each chapter. After the
batch: three fresh auditors (mathematics and claim-scope against `foundations.md` and primary
sources; prose, voice, and cross-references; reader safety against `information_hazards.md`),
findings applied, then one whole-book read by a fourth auditor for seams, repetition, and any
cold sentence filed under the wrong kind (section 4 table). Then `make`, `make epub`,
`epubcheck`, `make wordcount` against section 7, and the review record under
`.worldsmith/reviews/2026-10-21/`.

## 10. Left to the builder

The exact prose; whether Chapter 9 needs a new figure or reuses `fig:where-am-i` and the
two-carvings field with a marked point; the order of the suppliers after Everett; the Notes
wording; which sentences of the old Chapter 9 move verbatim; the Further Reading addition;
whether to retitle the three retitled chapters' files in one later housekeeping commit.

## 11. Calls made in this document (for the author to check while reading)

1. Chapter 9's title: "The Center."
2. The box wording in section 4.
3. The three principles are filed as pre-postulate facts, not as a sixth footing.
4. "Does not console" stays an application of P1 in Chapter 12, not a third face.
5. Lewis's two gods told in the body without the name; the Notes carry the citations.
6. Filenames unchanged.
7. P1 stops at "no description contains its center"; "the center is a cut" is the postulate
   applied (a refusal), per the author's general decision for the humble register.
8. The five widths of Chapter 11 are not refiled under P1; the chapter's one P1 instance is
   quantum immortality.
9. Content wins over the per-chapter targets; the whole-book figure rises to about 33,500.
   This is the one call the author has not yet confirmed.
