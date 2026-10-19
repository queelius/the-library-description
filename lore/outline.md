# Outline

*The Library: The Indifference of Description.* Three parts, fifteen chapters. The three parts
are the one move (the cut, equivalently local compression) at three depths: you cut the totality
to **predict** (The Index), to have a **world** (The System), and to be **someone** (The Self).
The chapter order is unchanged from the prior draft; the parts name what was already there.
Target length: 20,000 to 25,000 words.

The reasoning skeleton (see `foundations.md`) is theorem to universal construction to postulate
("no cut is privileged") to finitude (bounded local modeling) to consequences. Every chapter's
argument is traceable to one of the five footings, named the same way everywhere: theorem,
construction, finitude, postulate, optional additions. Each caveat is stated once, where its
object enters, and referred to by name afterwards (`foundations.md`, "The discipline," rule 9).

---

## Part I: The Index (the cut for prediction)

*The reader meets the mathematics through ordinary observation, arrives at the universal
prior by Chapter 4, sees the inversion in Chapter 2, and learns that to predict is to
cut. The index is the first instance of the move.*

### Chapter 1: The Question

You wake up. You observe data. You predict. Everyday induction: the sun has risen every day, so
you expect it tomorrow. Why is the prediction reasonable? The naive answer (uniformity of
nature) is interrogated and left open. **The cut, named:** prediction is already a restriction,
a slice taken from what could be.

**Epigraph:** Russell, "The man who has fed the chicken every day throughout its life at last
wrings its neck instead." (*The Problems of Philosophy*, 1912, ch. 6)

### Chapter 2: The Library

The inversion. The generator for the totality is one line; the Kolmogorov complexity of
"everything" is small; the hard problem is locating *this*. Borges' Library of Babel; the
empty/universal duality; "the information lives in the cut." **The cut, named explicitly here
for the first time, with its native sentence.** A short "note on the metaphor" flags that the
shelves are the librarian's imposition and points forward to Chapter 14. The reader leaves with
an inversion they cannot un-think: there are no joints, only the cuts you make. The Part I fact
underneath is that no computable procedure sorts the Library by description cost (a bare
address is computable, but it is only the string again); the inversion itself is flagged as
the picture Chapter 6 will ask the reader to commit to (the postulate), not stated as Part I
fact.

**Epigraph:** Borges, "The Library of Babel."

### Chapter 3: The Indexing

Bayes. The structure of belief revision; Cox-style representation results under stated
regularity assumptions. We have been cutting all along, using
Bayesian inference informally: the prior is the cut before data, the posterior the cut after.
Bayes does not say which prior to use; that silence is the opening Chapter 4 fills. **The cut,
named:** indexing is conditioning, the verb sense of the cut.

**Epigraph:** Maxwell, "the true logic for this world is the calculus of probabilities" (1850,
letter to Lewis Campbell).

### Chapter 4: The Prior

Kraft's inequality; fair random bits assign $2^{-|p|}$ to prefix-free programs; the sequential
universal semimeasure $M(x) = \sum_{p:U(p)=x*} 2^{-|p|}$, summed over minimal programs on a
universal monotone machine $U$ (equivalently, the fair-coin probability that $U$'s output begins
with $x$); and the distinct exact-output quantity $m_V(x)=\sum_{q:V(q)=x}2^{-|q|}$ on a universal
prefix machine $V$, used in the coding theorem for $K(x)$. **The cut, and finitude:** Kraft makes
the chosen weights admissible but does not force them. Finitude requires bounded models; the
universal prior is a powerful ideal construction, not the only coherent prior.

**Epigraph:** Solomonoff, 1964 abstract: "Almost all, if not all problems in induction can be
put in this form."

### Chapter 5: The Optimality

Solomonoff's dominance theorem and its computable-source convergence consequences. Universal
machines define a multiplicative-equivalence class, while their constants can matter greatly at
finite scales. **The cut:** these are strong but scoped prediction results, not blanket finite-time
superiority or a proof of a unique rational prior. Treat language-model examples as analogies, not
evidence. The chapter ends by turning toward reality: what
happens when we read this not as how to learn but as what is?

**Epigraph:** Hutter, "His central result is that the posterior of his universal semimeasure $M$
converges rapidly to the true sequence generating posterior $\mu$, if the latter is computable.
Hence, $M$ is eligible as a universal predictor in case of unknown $\mu$." (abstract of "On the
Existence and Convergence of Computable Universal Priors," ALT 2003; verified against the source
2026-10-18). Do not restore the earlier *Universal Artificial Intelligence* (2005) line: it was a
paraphrase, not a quotation.

---

## Part II: The System (the cut for a world)

*The Bayesian structure is a measure on candidate descriptions. Reading it as a measure on what
exists is an additional ontological move, not another theorem. The reader meets the one
postulate, the groundlessness, and the indifference.*

### Chapter 6: The Slip

The pivot. The prose exposes the temptation to turn weights over candidate programs into a measure
on realities. **The postulate enters here:** no cut is privileged (boxed, in the canonical wording
of `foundations.md`). The postulate section opens by quoting the spine back ("There are no joints.
There are only the cuts you make.") and naming Chapter 2's inversion as the picture the reader is
now asked to commit to: first felt there, a commitment here. It denies that one decomposition is
view-independently canonical; it does not prove that every described world exists or that $M$ is
an ontic measure. Picture A and Picture B are introduced as alternatives and held open.

**Epigraph:** Wheeler, "It from bit."

### Chapter 7: The Inhabited Library

The optional Picture A made available by the slip, the old question it sharpens (why is there
something rather than nothing), and the humility hinge: the section "What if you refuse," the one
place in the body where refusing the postulate is argued (what the refuser keeps, including the
Part I fact that no index is computably canonical, and what they give up; Appendix D expands it).
**The missing occurrence measure is defined here, once, at full strength:** $M$ weights candidate
programs and output prefixes; nothing in the construction says what counts as an observer
occurrence, whether occurrences exist, or how first-person weight is spread among them. Later
chapters refer to it by name. The recurring cut figure is drawn here ("two carvings": the same
structure carved two ways, neither privileged). The nothing question is taken seriously and not
pretended-resolved (nothing is itself a cheap cut; observation excludes it; coherence is
flagged). A note on time: computation is static, time is a logical index, the same eternalism as
the block universe. **The cut:** the inhabited world is a carving; contingency is relocated, not
resolved.

**Epigraph:** Wittgenstein, "The world is everything that is the case."

### Chapter 8: The Observer

Everettian quantum mechanics as a familiar interpretive landmark, not a route or corroboration:
unitary evolution plus an Everettian ontology yields decoherent branches, shown briefly and
cross-referenced to *Multitudes* for the full treatment. Decoherence gives effective autonomy,
not a unique outcome or an interpretation-free ontology. The Everett caveat is stated once, at
full strength, in one consolidated paragraph; nothing later rests on Everett. The Born-measure /
universal-prior comparison is made here: they arise in different formal settings and can be
compared only in role (each attaches weight once a domain of alternatives is specified); their
domains and warrants differ, no formula is identified or derived, and "why this weighting?"
stays open to quantum theory. This is the seam to *Multitudes*. Then the chapter defines what an
observer is: a local substructure doing local inference, with hierarchical decomposability as the
condition for inference to work, and the self as a short local program. "Where am I?" becomes
sharp; the rules that would fill the missing occurrence measure (SSA, SIA, xerographic
distributions) are listed as none-forced and adopted by none (the speed prior is distinguished as a program
prior in Chapter 9's footnote and Appendix C). **The cut:** the observer is itself a carving. **The chapter ends on "realism is
a cut," stated in the body:** choosing which picture (A or B) is the real one is itself a cut,
and the postulate privileges no cut, so the book holds the question open rather than answering
it.

**Epigraph:** Bryce DeWitt, on every quantum transition splitting the local world into myriads
of copies of itself (1970).

### Chapter 9: The Limits

The close of Part II and its coldest move. First, **no view from the top:** no view is privileged
because every view is a cut and no cut is privileged, so no overseer's view is *the* view, and
not contingently; what is above all minds is the structure, which is not a mind and surveys
nothing. ("Power is not privilege": the book has not disproved every greater mind.)
This follows from the postulate, not from a Turing-jump ladder of allegedly computable minds. The
ordinary halting theorem supplies only a narrower limit. The grace of Part III is seeded here
(warmth, if any, is among observers, not handed down). Then the
catalogue of what the framework permits: Boltzmann observers, hellscapes, dark continuation, with
a calibrated reader-safety note (Picture A permits these descriptions; the framework neither
establishes that they exist nor places you in one; step away if the material is destabilizing).
This catalogue is the one home of "program weights are not moral weights"; later chapters refer
back to it instead of restating it. Then a short section, "Without Everett": what refusing the
Everett landmark costs (nothing in the cascade). The refusal of the *postulate* is not argued
here; it lives in Chapter 7. The postulate box, if recalled here, uses the identical canonical
wording; the chapter does not also recap the five footings (Ch 10 does that once). Camus is not
quoted here; his line belongs to Ch 15.

**Epigraph:** Spinoza, "Nature has no particular goal in view, and final causes are mere human
figments." (*Ethics*, 1677, trans. Elwes)

### Chapter 10: The Indifference of Description

The titular chapter and the cap of The System. The thesis is stated positively first, and the
chapter opens with it and with the spine sentence: you can carve the Library into worlds, systems,
and selves in endlessly many ways, and nothing in it marks one carving as the right one. $M$ ranks
descriptions by what they cost; it singles out none of them as the world, and none as you. There
are no joints; there are only the cuts you make, including the one you call *I*. **The cut:** the
indifference is over descriptions, and the description is yours. (Ch 10 can now assume the
postulate, having asked for it in Ch 6.)

Then one positive cascade summary in the five footing names (theorem, construction, finitude,
postulate, optional additions), and **one** paragraph of caveats, stated once: it does not say
every output exists; it does not say which occurrence is you (the missing occurrence measure, by
name); it does not derive the Born rule (a cross-reference to Ch 8 and Appendix B, not a re-run of
the comparison). Say what the indifference is before saying what it is not. The adequacy
doubt is seeded once, in plain terms, in "What remains yours" (what could fail: the theorems'
application to nature, the machine idealization, the postulate), and "Where this leaves you"
points forward to Ch 15 without closing it.

This is the analog of Worldlines' "The Block Universe" chapter, one level deeper.

**Epigraph:** Stephen Crane, "A man said to the universe" (*War Is Kind*, 1899).

---

## Part III: The Self (the cut for being someone, and the response)

*The bedrock, the postulate, and the indifference are in place. Now: what does the cut do to the
human concerns, and what is the chosen response? The self is the third and deepest instance of
the move, and care is the cut we choose.*

### Chapter 11: The Question of Continuation

Free will and the chooser, built around one beat: **the chooser is a cut.** Responsibility attaches
to a drawn boundary (the region you call *you*, carved out for navigation and for answering); the
causal process inside and across that boundary is real, and the boundary is the observer's. The
compatibilist point stands without branches: choosing is what a deliberating process looks like
from inside, and "could have done otherwise" is a claim about the process, not about the
structure's joints. Everett appears only as a brief, optional lens (one paragraph, flagged as
such, pointing back to Ch 8's "Everett is a landmark"); the chapter does not assume it.

Quantum immortality is then stated plainly and labeled: the claim, its premises named in one
sentence (Everett, an identity rule, a self-location rule, all optional additions the book does not
adopt), and the book's refusal to assert it. It comes with a reader-safety note in the body,
non-metaphysical, pointing to Resources: the thought experiment is not a reason to take any real
risk. The detailed premise analysis moves to Appendix C. The chapter's examples of choices the
framework does not rank are ordinary ones (take the job or turn it down; make the call or let it
ring), never a lethal act. Bridge from Ch 10 through the cut, not through "if the Everettian
picture is true"; expand any acronym (no bare "MWI"). The chooser's boundary is redrawn here at
several scales (decision, brain, person, family, culture); that is this chapter's specific use of
the move, and Ch 14 later gathers it as evidence rather than Ch 11 pre-empting Ch 14.

**Epigraph:** Schopenhauer, "A man can do what he wills, but he cannot will what he wills," in
Einstein's paraphrase (1932 credo), not verbatim *On the Freedom of the Will* (1839); the Notes
say so.

### Chapter 12: The Dissolution of Death

Mortality. Worldlines treated death as the boundary of the worldline; this book adds that the
sharp metaphysical boundary called death is a carving, while the local loss is not ("The sharp
metaphysical boundary was a cut. The local loss was not."). Identity is vague at the edges; grief
is not. **This chapter makes the "does not console" turn once, at full strength, for the whole of
Part III:** conditional copies, other carvings, and descriptions of continuation (each needing
optional additions) do not console the people left behind, and the book will not pretend they do.
Chapters 13 to 15 refer back to this turn instead of re-making it. Block-universe permanence
appears only "on that reading," once; no "your branch" (say "history"). The Ch 12 safety note
lives in the body, not in a footnote, and does not assume the reader has someone to call (it
points to Resources). "What the living lose" stays in grief terms: the braid ends in the
survivors' history, some of it is carried in them, and the others who grieve are still within
reach. The broad-orientation, local-action discipline is not stated here; its home is Ch 13.
**The cut:** the boundary called death is a carving; what the living lose is lost here, where
they are.

**Epigraph:** Epicurus, "Death is nothing to us," *Letter to Menoeceus*, in Hicks's translation
(the epigraph text must match Hicks's wording).

### Chapter 13: Love Across Branches

Love and grief. The braid extended: two patterns intertwined through mutual influence, the braid a
carving we maintain. The opening image is *Worldlines'* (the braid in the manifold, permanent on
the block-universe reading) and is attributed as such; this book keeps the image and changes what
holds it together (the tending, not the structure). **"We" is a cut we make anyway**, and the
chapter turns on that: the
boundary around *us* is drawn, not found, and the drawing is the work. Picture A permits
descriptions of braids that end in cruelty, in care, or never form; program weights are not moral
ranks, and the book says so once and acts here. It does not re-make Ch 12's "does not console"
turn; it refers back. Holds the concrete object in the table vignette (a table, late; a mug held
both-handed; the coffee gone cold, with the temperature consistent across the scene and in Ch 14),
and keeps the abstractions out of the scene itself (the gloss comes after the scene, not in it).
This chapter is the home of the discipline "orientation can be broad; action remains local." "There is no cancellation. There is what happened here, and
what you do next." **The cut:** the braid is a carving we maintain; "we" is a cut we make anyway.

**Epigraph:** Rilke, *Letters to a Young Poet* (Herter Norton translation, named in the Notes; any
elision marked).

### Chapter 14: The Pattern

The self. Worldlines dissolved the self temporally; this book dissolves it as a carving. You are a
short local program, a boundary drawn around a region for navigation, and so is everyone you love.
Extends Parfit (identity versus what matters): identity is a cut, and what matters (the person,
the experience, the effects of care) is here, where it happens; the chapter does not claim it
recurs or totals across other carvings.

The self-model is made felt before it is argued: the light switch in a dark house, and the
rubber-hand illusion. Parfit and Metzinger are introduced once, together.

**The convergence made concrete (the chapter's center):** index, system, and self, each carved
two ways, worked through with examples the reader already holds (the Ch 3 coin for the index; the
Ch 13 kitchen for the system, scaled up to "this world"; the self-model for the self), so that
"the cut met three times" is seen, not asserted. The self's carving opens by gathering the lines
the reader has already drawn (around the chooser in Ch 11, around the dying in Ch 12) and then
takes the job away. The "three cuts" figure draws it. The spine sentence is reprised here, with
the tail "One of them is you." "What is preserved" is short: Parfit's point that what matters
rides on the connections, the conclusion that no thread from $M$ ties "you here" to "you there,"
and the derealization safety note, which ends on "You are here." (not on a technical sentence).
**The cut, all the way down:** this is the convergence the whole book has built toward.

**Epigraph:** Hume, *Treatise*, on the self as a bundle of perceptions.

### Chapter 15: The Pattern Describing Itself

Closing. The book is one carving in the totality; reading it is another; care is another. The held
cut: warmth between cuts, the book itself the holding performed. The book-as-act beat is made
once (the protected line in item 4) and paid off once (item 5's "I wrote this book"), not repeated
paragraph after paragraph. The opening's self-description is exact: the short program that prints
everything prints this book too (the sentence must not imply that a short program prints this
book alone). The cadence, in shipped order:

1. **The cold, gathered**, as a cadence and not a list of caveats (the caveats already live in
   their homes and are referred to by name). A sentence scoping what follows (nothing in the
   framework says why there is anything), then: "No view from above. No reason beneath." ("No
   view from above" means no privileged view, echoing Ch 9's "No view from the top"; the book
   has not disproved every greater mind.)
   Then "And here you are": the local situation, the next room, the next call.
2. **The triad:** "The structure does not require it. The structure does not reward it. The
   structure does not notice."
3. **Rage**, appropriate; it passes. **Equanimity**, named. **Care** remains, chosen.
4. **The object and the warmer room:** *Worldlines* had a dark ground to stand care against; this
   book does not. The book as a finite object, with the protected line kept verbatim: "A person
   described a pattern and chose, in the describing, to be kind about it."
5. **The recognition:** "fellow sufferer" answered; the spine reprised (its tail here is the line
   that puts writer and reader on the same side, distinct from Ch 14's "One of them is you"); the
   refusal toward the dark descriptions, which reaches no one and is still a thing a person can do;
   Camus's *must* literal, and **"I wrote this book"** as that commitment, performed (first
   person; the narrator is I).
6. **The adequacy doubt** named ("Is it enough? I do not know."), the hope named as hope, the
   choosing done unsure. Keep verbatim the final paragraph ending "We do it unsure, which is the
   only way it was ever going to be done."
7. A header-less coda; the address is the single word **"Stay."**

No pre-revision line about simplicity returns (no "simplicity is why you are here").

**Epigraph:** George Eliot, *Middlemarch* finale, on unvisited tombs.

---

## Frontmatter

- Title page; copyright; dedication ("For Kimberly, at every index.")
- Half-title epigraph: Borges, "The Library of Babel" (Irby).
- Preface: the book is about the indifference of description, and about why you should be gentle
  with the people around you; the connection takes several chapters to build. Ends "Hello, fellow
  sufferer. Stay with me."
- A note (the crisis note, per `information_hazards.md`): opens with the emergency route and
  contacts, links to Resources, and does not answer the reader's crisis with ontology.

## Backmatter

- Appendices (A to E): the deferred technical and discursive material. A The Bedrock,
  Formally; B The Born Measure and the Universal Prior; C Anthropic Assumptions; D
  Refusing the Postulate; E Objections and Replies. (Canonical in `appendices.md`.)
- Notes (keyed endnotes, per chapter; see `appendices.md`).
- Resources: routes immediate danger first (local emergency number or emergency department, and
  someone to stay with you), then gives contacts and a plain disclosure script. Unconditional and
  non-metaphysical; it carries no line from the book's argument (no "Stay at this index.").
  `information_hazards.md` governs the order.
- Further reading
- About the author; Also by Alex Towell.

---

## Word counts (targets and the release candidate)

Actuals are `detex | wc -w` per chapter file at the 2026-10-19 release candidate (figure labels
included, so prose alone runs a few hundred words lower per Part).

| Section | Target | Actual |
|---|---|---|
| Preface | 500 | about 300 |
| Part I (5 chapters) | ~7,500 | about 9,400 |
| Part II (5 chapters) | ~8,000 | about 7,900 |
| Part III (5 chapters) | ~8,000 (aspirational) | about 6,200 |
| Appendices (A to E) | ~3,000 to 5,000 (under about 20 percent of the body; see `appendices.md`) | about 3,700 |
| Notes, Resources, and other back matter | as needed | Notes about 1,500 |
| **Body total (preface and Parts I to III)** | **~24,000** | **about 23,800** |

Part III is shorter than Parts I and II by design after the October revision: it refers back to
caveats stated in their homes instead of restating them. Growing it means new material, not
restatement.

Slightly longer than Worldlines (~18,500) to accommodate the Part I groundwork. Chapters are
roughly the length of Worldlines' chapters; this book has more of them because old Chapter 6 and
Chapter 8 were each split after drafting.

---

## Pedagogical sequencing

Each step is set up by the previous, tracing the new skeleton:

1. **Induction is universal** (Ch 1). Everyone predicts; prediction is already a cut.
2. **The totality has no joints** (Ch 2). Generation is trivial; the cut is everything.
3. **Bayes is the cut for prediction** (Ch 3). A coherent calculus under stated assumptions.
4. **Fair bits construct a universal prior** (Ch 4). Kraft makes the length weights admissible;
   neither Kraft nor finitude makes them unique.
5. **Solomonoff has powerful scoped guarantees** (Ch 5). Dominance and convergence hold under
   their hypotheses; finite machine dependence remains.
6. **The slip is a cut; the postulate** (Ch 6). No cut is privileged.
7. **The inhabited world; the nothing question; humility** (Ch 7). Contingency relocated; the
   missing occurrence measure defined; "What if you refuse" (the one home of the postulate's
   refusal).
8. **The observer defined; realism is a cut** (Ch 8). QM as landmark, stated once; the Born seam
   compared in role only; the chapter ends on "realism is a cut."
9. **The limits** (Ch 9). No view from the top; what the framework permits; without Everett.
10. **The indifference of description** (Ch 10). Thesis stated positively, opening with the
    spine; caveats once; The System capped.
11. **Continuation** (Ch 11). The chooser is a cut; responsibility attaches to a drawn boundary;
    quantum immortality labeled, with a safety note.
12. **Death** (Ch 12). The boundary is a cut; the loss is not; "does not console," once.
13. **Love** (Ch 13). The braid as a carving we maintain; "we" is a cut we make anyway.
14. **Self** (Ch 14). The cut all the way down; the convergence made concrete, with the figure.
15. **Closing** (Ch 15). The held cut; the restored cadence; "Stay."

---

## Drafting questions (resolved)

- **Epigraph review.** Done 2026-10-18: every epigraph was checked against its source, and the
  Ch 5 Hutter line was replaced (see the Ch 5 entry and
  `.worldsmith/reviews/2026-10-18/decisions/revision.md`).
- **The cut named as imposition.** Named at each entry (Ch 2 the cut, Ch 3 the index, Ch 6 the
  system, Ch 8 the observer), dissolved fully at Ch 14.
- **Where the finitude guardrail sits.** Inside the prose of Ch 4.
- **Worldlines reference cadence.** Explicit in the preface, Ch 7 ("What if you refuse"), Ch 10
  ("The deeper indifference"),
  Ch 13 (the braid image), Ch 14 ("The temporal dissolution, recalled"), and Ch 15 (the warmer
  room); other parallels speak for themselves.
