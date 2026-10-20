# Foundations: The Bedrock, the Cut, and the Postulate

The argument rests on settled mathematics, a particular universal construction, and one
interpretive postulate. Those layers must remain visible. The inversion is the work the book
does on the reader:

> There are no joints. There are only the cuts you make.

The structure the book is about (the totality of computable possibility, the Library of
Babel made formal) has no natural decomposition: no books, no shelves, no index, no list of
"systems," no privileged "you." Every one of those is a cut, a carving an observer brings to
a structure that has none of its own. Once the reader feels this, the rest of the book is
consequence. (Two footings sit under this paragraph and must stay distinct: that no computable procedure
indexes the Library by description cost is a theorem-level fact of Part I; that no decomposition at all is the
correct one is the postulate of Chapter 6. See "The cut has no canonical form.")

## The principle of earned axioms

The book earns its bedrock the way Worldlines earned the constancy of the speed of light:
through everyday inquiry that ends somewhere the reader did not start. Chapter 1 begins with
ordinary induction. You observe data; you predict. By the end of Part I the reader has
arrived at a principled universal prior and the dominance theorem, and has felt the inversion
(Chapter 2) as a picture. The recognition that the index, the system, and the self were all the
same move all along is Part III's work: it converges in Chapter 14, once the third depth (the
self) has been cut. The mathematics is not asserted. It is the resolution of a puzzle the reader
has been led to feel.

What is interpretive in the book is concentrated in one place and labeled there: the single
postulate (Section "The postulate"). A second distinction is just as important: fair random
program bits and a reference universal machine define a construction, not a theorem forcing a
unique prior. Every conclusion rests on one of five footings, named the same way everywhere
(lore, chapters, appendices):

1. **theorem** (Bayes, Kraft, the coding theorem, dominance, convergence, invariance, each with
   its hypotheses);
2. **construction** (a chosen universal machine and fair random program bits, which define $M$
   and $m$);
3. **finitude** (a finite observer must use bounded local models);
4. **postulate** (no cut is privileged; asked once, refusable);
5. **optional additions** (the outside view read ontically, Everett, an identity rule, a self-location
   rule, a cosmology), which the book names when a conclusion would need them and adopts none
   of.

The reader can always trace a conclusion to one of these. Nothing is hidden behind difficulty.

---

## The bedrock

The bedrock is a compact body of probability and computation. It can be stated in several
conditional results and definitions. Their hypotheses matter.

### 1. Bayes' theorem (probability)

The structure of belief revision. Given prior $P(H)$ and likelihood $P(D \mid H)$, the
posterior is

$$P(H \mid D) = \frac{P(D \mid H)\, P(H)}{P(D)}.$$

Bayes' theorem follows from the probability calculus. Cox-style representation theorems show,
under regularity and richness assumptions, when coherent degrees of plausibility can be
represented by that calculus. They do not prove that probability is the only conceivable logic
of uncertainty. Bayes says nothing about *which* prior to use. That silence is the problem of
induction.

### 2. Kraft's inequality (the bridge)

For any prefix-free code with codeword lengths $\ell_1, \ell_2, \ldots$:

$$\sum_i 2^{-\ell_i} \leq 1.$$

This is what makes familiar length weights admissible. A prefix-free code is one in
which no codeword is a prefix of another: a code that knows where it ends without external
punctuation. Kraft says the quantities $2^{-\ell_i}$ have total mass at most
one. They are also the probabilities of reading those codewords from fair random bits.
For a prefix machine (the machine class of exact-output $m$ and $K$ below), prefix-free encoding
is the structure of self-delimiting computation: a program knows when it has finished reading its
input. The monotone machine that defines $M$ need not halt; there Kraft applies to the minimal
programs for a fixed $x$, which also form a prefix-free set. Kraft does **not** force this weighting, a unique prior, or the
claim that most total mass must lie on short descriptions. Other coherent priors exist.

### 3. The universal prior (Solomonoff)

Fix a universal **monotone** machine $U$: it reads its program one bit at a time, never going
back, and writes its output one symbol at a time, never erasing. Feed it fair coin flips. If its
output comes to begin with $x$, there is a first moment it does; the bits read up to that moment
form a **minimal program** $p$ for $x$. Write $U(p)=x*$ for "$p$ is a minimal program whose
output begins with $x$." The universal prior is

$$M(x) = \sum_{p\, :\, U(p) = x*} 2^{-|p|} \qquad \text{(sum over minimal programs)},$$

equivalently the fair-coin probability that $U$'s output begins with $x$:

$$M(x) = \lambda\{\omega : U(\omega) \text{ begins with } x\}.$$

The minimal programs for $x$ form a prefix-free set (no minimal program for $x$ extends
another), so Kraft keeps the sum at most $1$. $M$ is a lower-semicomputable semimeasure on
finite output prefixes; mass can be lost where the output stalls. It results from two modeling
choices: a reference universal monotone machine and fair random input bits. (Li and Vitanyi,
*An Introduction to Kolmogorov Complexity and Its Applications*, sec. 4.5; Hutter, *Universal
Artificial Intelligence*, 2005, ch. 2.)

A halting prefix machine does **not** give this object. Summing $2^{-|p|}$ over halting programs
whose output begins with $x$ yields a quantity whose total over all $x$ of length $n$ is a tail
of a convergent sum and tends to zero, so it dominates no computable probability measure (the
uniform measure is already a counterexample). The dominance and convergence theorems below are
theorems about the monotone-machine $M$. Do not define $M$ on a halting prefix machine, on a
"monotone prefix machine," or with an unrestricted sum over all (non-minimal) programs, which
diverges on a monotone machine.

The related exact-output algorithmic probability lives on a different machine class. For a
universal **prefix** machine $V$ (halting programs, prefix-free domain; Li and Vitanyi secs. 3.1
and 4.3),

$$m_V(x) = \sum_{q\, :\, V(q)=x} 2^{-|q|}.$$

For a universal prefix machine $V$, the coding theorem gives
$-\log_2 m_V(x)=K_V(x)+O(1)$. Universality is required; the theorem is false for arbitrary
prefix machines. The book must not silently replace sequential $M$ by exact-output $m$, or
condition $m$ as though it were the sequential predictor.

### 4. The dominance theorem (optimality)

For any lower-semicomputable semimeasure $\mu$ (any distribution over data sequences that can
be approximated from below by an algorithm), there is a constant $c_\mu$ with

$$M(x) \geq c_\mu \cdot \mu(x) \quad \text{for all } x, \qquad c_\mu = 2^{-K(\mu)-O(1)}.$$

The log-loss form: $\log_2\mu(x_{1:n})-\log_2 M(x_{1:n})\le K(\mu)+O(1)$ on every sequence, so
the guaranteed excess per observation, at most $(K(\mu)+O(1))/n$, shrinks toward zero. In
expectation the gap is a KL divergence, also bounded by $K(\mu)+O(1)$. (Do not write "the
average gap goes to zero.")

The constant may be extremely small and depends on the source and the chosen universal
machine. Under the usual computable-source assumptions, dominance supports strong convergence
results for sequential prediction. It does not establish pointwise superiority at every finite
horizon, a unique rational prior, or superiority to every rival under every optimality notion.

### 5. The invariance theorem (machine-independence)

$M$ depends on the choice of universal machine, but for any two universal monotone machines
$U_1, U_2$ the semimeasures differ by at most a multiplicative constant set by the length of the
cross-compiler between them:

$$M_1(x) \asymp M_2(x).$$

Likewise, two universal prefix machines give $K$'s within an additive constant.

Universal machines define a multiplicative-equivalence class. This supports asymptotic
robustness in the settings covered by the convergence results, but the constants can dominate
finite problems. Adversarial universal machines can encode poor finite-scale biases. There is no
single machine-independent prior.

---

## The inversion: no joints, only cuts

This is the book's pivot, the equivalent of Worldlines' "the speed of light is the invariant;
space and time give." It is meant to leave the reader with an intuition they cannot un-think.

### Generation is trivial

The generator for the totality of computable structures is, in effect, one line: enumerate all
binary strings as candidate programs, and dovetail them on a universal machine (run the first
for one step, the first two for two steps, and so on, so that every program receives
unboundedly many steps). Enumerating the strings only lists the candidates; dovetailing is what
runs them. The two are not equivalent, and the generator needs both. The Kolmogorov
complexity of "the universe of all programs" is small. It is one of the cheapest objects there
is. This is the Library of Babel point made formal: Borges' library contains every possible
book, and generating it is trivial. The hard problem is locating any specific book.

### The information lives in the cut

The empty set and the universal set $\Omega$ (the set of all strings, "everything") are
complements, and both are informationally cheap: $K(\emptyset) \approx K(\Omega) \approx$ small. A
theory that explains everything explains nothing; a theory that explains nothing explains
nothing; a theory that explains *this* is the only interesting thing. The information lives in
the **cut**: the selection, the boundary, the restriction. Relative to a chosen universal prefix
machine, Kolmogorov complexity $K(x)$ is the length of the shortest program that outputs $x$. In
the book's image, it is the cost of the cheapest cut that isolates $x$ from the totality. That
is an image, not a definition: the definition is the program length, and it is machine-relative
up to an additive constant.

### The counting fact: cheap cuts are rare

Theorem-level, Part I, stated in Chapter 2's section "The address of a book." Of the $2^n$
binary strings of length $n$, fewer than $2^{n-k}$ have a description more than $k$ symbols
shorter than themselves, in any scheme of description whatever, because there are fewer than
$2^{n-k}$ such short descriptions to hand out. So fewer than one string in $2^k$ can be
shortened by more than $k$ symbols. Almost everything in the Library costs as much to name as
to write out; the cheap cuts are rare, and they are the ones with a pattern in them (a law is a
short name for a long book). Borges' arithmetic is the same fact in costume: the library stocks
$25^{1{,}312{,}000}$ books, so an address in its own alphabet is $1{,}312{,}000$ symbols, one full
book; a catalogue of $T$ books is $T$ volumes, each as lost as the book it names; a complete
catalogue is the library over again. The counting is machine-independent. Which few strings get
the short names is machine-relative (invariance, Chapter 5), and the constant can be large.
The fact seeds the reply to joint-carving realism (Appendix E, objection 6): shortness is a
fact about a string relative to a machine, with all machines agreeing only in the limit, where
no finite observer stands.

### The cut has no canonical form

Here is the move that makes this book different from every other book about all possible worlds. Two claims
sit under it, and they have different footings. Keep them apart.

**The theorem-level fact (Part I).** No computable procedure sorts the Library by how cheaply each
item can be said. The construction
gives program-output space with description weights on candidate output prefixes; it contains
no "books," no shelves, no index. Borges' books and Tegmark's discrete structures are
convenient discretizations of an undecomposed substrate. The shortest description of $x$ is
taken across *all* regularities, not book by book; if two "books" share structure, $K$ exploits
it, indifferent to any boundary we imposed. The library is generable but not surveyable: we can
produce everything in it by running the generator, but no algorithm takes an arbitrary $x$ and
returns its complexity or its shortest description ($K$ is not computable; $M$ is
only lower-semicomputable). A bare address (a string's place in a length-ordered enumeration,
its path in the tree) is computable, but it is only the string again; any index that tracks what
matters to an observer is a tool the observer brings. This much is mathematics and needs no
assent. (Do not write "no algorithm returns its position": a string's index in an enumeration
is computable.)

**The postulate (Part II).** That no decomposition at all, computable or not, is the correct
one is a further claim. It is not a theorem; it is the refusable commitment of Chapter 6 (see
"The postulate" below).

The spine sentence ("There are no joints. There are only the cuts you make.") is first *felt*
in Chapter 2, as the inversion, on top of the theorem-level fact. It becomes a *commitment* in
Chapter 6, which quotes the spine back at the postulate and names Chapter 2's inversion as the
picture the reader is now being asked to adopt. Chapter 2 should present the inversion as a
picture to be committed to later, not as Part I fact.

### The cut at three depths

The single move (cutting, equivalently local compression) appears at three depths, and these
are the book's three Parts:

- **The Index.** You cut the totality to *predict*. The index is the restriction that picks
  out the part relevant to where you are. Bayesian inference is indexing under uncertainty.
- **The System.** You cut the totality into a *world* with laws and objects. "One world,"
  "the system," "the laws of physics" are carvings, not joints.
- **The Self.** You cut the totality into *someone*. "I" is a label drawn around a region of
  structure for navigation, the brain's self-model, a short local program.

Self, system, and index are not three separate facts. They are one move applied at three
levels of the same apparatus. The dissolution of the self that Part III performs is the same
operation as the dissolution of the index; they are one move, seen twice. The book makes this
convergence concrete in Chapter 14 (index, system, and self each carved two ways in the prose,
then the "three cuts" figure: one field with three nested boundaries), not earlier.

---

## The postulate: no cut is privileged

The bedrock above is mathematics. Exactly one thing in the book is not: a single postulate,
stated plainly, that the reader may refuse.

> **The postulate: no cut is privileged.** No decomposition of the describable totality is
> view-independently correct. Every carving into worlds, systems, and selves is a cut an
> observer makes; none comes labeled as the structure's own.

This is the boxed wording, and it is identical wherever the manuscript boxes it (Chapter 6,
where it enters, and Chapter 9, where it is recalled). Elsewhere, recap it in prose. "The one
reality that exists" is one of the carvings it covers.

**Status: a refusal, not a proof of absence.** The spine sentence asserts an absence ("there
are no joints"); the postulate declines to crown. The author's ontology is epistemic humility
(2026-10-19), so the body says once, in Chapter 6's inline objection-and-reply after the
postulate, that the denial is weaker than the spine sentence sounds: whether the structure has
joints is not settled from inside in either direction. The counting fact makes shortness a fact
relative to a machine, and machines agree only in the limit, where no finite observer stands.
The book has not shown there are no joints; it has refused to name one, and says so. Chapter
10's thesis is worded to match ("nothing in it, from any vantage you can occupy, marks one
carving as the right one"). The spine sentence stays as the picture; the lore already records
that Chapter 2 presents it as a picture, not fact.

**The two views are not symmetric.** The inside view is a vantage every reader has; the outside
view is a picture no finite observer occupies. So "which picture is real" is not a choice
between rival worlds: the cut between what exists and what is only described is drawn between a
vantage you have and a picture you drew. Chapter 8's closing paragraph says this; it makes
"realism is a cut" cleaner, not weaker.

**The named adversary.** The postulate's opposite is joint-carving realism: Lewis's natural
properties, Sider's structure, Plato's image of carving nature at the joints. The body names
the opposite in one clause where the postulate is stated (Chapter 6) and gives it its strongest
form as objection 6 of Appendix E. The citations live in the Notes (the Appendix E section), not
in the body; an adversary named in the Notes is not an imported authority, so the moral-spine
rule is untouched. The reply separates two senses of *privileged*. Rewarded for a job is
conceded: decomposability rewards carvings that follow the grain (Chapter 8), and the counting
fact makes shortness a fact about a string. The structure's own, independently of every job, is
denied: which strings are short is machine-relative up to a constant that invariance does not
make small, and *works* is always *works for a job*, with many jobs (the kitchen of Chapter 13
reread at mug grain and at molecule grain in Chapter 14; the chooser at five widths in Chapter
11). A reader who insists on the second sense is refusing the postulate, which Chapter 7 and
Appendix D allow, and keeps every theorem.

This single postulate replaces the two "speculative moves" earlier drafts carried (the claim
that physics is computable, and the claim that all computable structures exist). Those were
framed as *additions*: things you take on. The postulate is the opposite. It is a *refusal to
privilege*. "Only this one world is real" is one possible cut. Declining to privilege it does
not prove that every describable world exists. Under the outside view it motivates considering the
whole space without selecting one member as view-independently real; under the inside view it leaves
the observer with competing candidate descriptions. Even the leap from "no cut is privileged"
to "all cuts are equally real" is a further postulate, and the book does not make it.

The reader who refuses the postulate keeps all of the bedrock: Bayesian indexing is still
well-posed, and Solomonoff induction remains a distinguished theoretical construction with
strong dominance and convergence properties. What they lose is only the ontological reach of
Parts II and III. The postulate is the one place the book asks for assent, and it asks once.

The refusal lives in one place in the body: Chapter 7's section "What if you refuse," which says
what the refuser keeps (all of the theorem-level fact of Part I, including that no computable
procedure sorts the Library by description cost) and what they give up. Appendix D expands Chapter 7's refusal.
Chapter 9's section on refusing Everett is a different matter and is titled "Without Everett."

---

## Finitude: why every usable view is local

"No cut is privileged" does not make every practical representation equally useful. A finite
observer cannot store, compute, or act on an exhaustive description. Finitude therefore forces
bounded and local models. It does not, by itself or through Kraft, force the Solomonoff prior or
any unique allocation of probability mass.

Short descriptions are often valuable because they save memory and computation, and the
fair-bit universal mixture gives a precise way to reward them. Its justification is cumulative:
prefix-code admissibility, universality, dominance, convergence, and the practical value of
compression. Each reason has a scope and none makes simplicity a joint in reality.

This is the guardrail for everything that follows. Finitude explains why observers must cut and
approximate. The universal prior supplies one especially powerful ideal benchmark for prediction.
The book must not turn either statement into the false theorem that finite agents are compelled
to use one unique prior.

---

## The ontology: realism is a cut

Take the postulate seriously and one more thing follows, the book's coldest and most
self-consistent move: the question of which picture is *real* is itself a cut.

There are two pictures the framework supports. **The outside view** is the totality as an
object: a static program-output space with description weights, surveyed from outside, the
Library surveyed. **The inside view** is the observer inside some
$U(p)$, with access only to a prefix of their local structure, holding a posterior over
candidate programs that never collapses, unable even in principle and with unbounded data to
retrieve which program generates them: the Library inhabited. (These were "Picture A" and
"Picture B" in drafts through 2026-10-19 and in the design history under `docs/superpowers/`;
the descriptive names replaced them because the letters did not stick. Chapter 6 introduces
both by name, in a paragraph of their own, before the postulate is put to use.) The outside
view is a picture no finite observer occupies; the inside view is where every actual reader
is. The book does not declare either picture the real one,
because choosing between them is a carving, and no carving is privileged. It holds the
existence question open and underdetermined from inside.

In the manuscript, "realism is a cut" is stated once in the body, at the end of Chapter 8:
choosing which picture is the real one is itself a cut, and the postulate privileges no cut, so
the book holds the question open rather than answering it. It is not left to the objector in
Appendix E; Appendix E's reply can point back to Chapter 8.

**The missing occurrence measure.** Neither picture supplies one. $M$ weights candidate
programs and output prefixes. Nothing in the construction says what counts as an observer
occurrence, whether occurrences exist, or how first-person weight is spread among them.
Supplying that takes further rules (SSA, SIA, xerographic distributions, reference classes),
which the book adopts none of. This gap has one name, "the missing occurrence measure." It is
defined once, at full strength, in Chapter 7; Chapter 8 lists the rules that would fill it
(with Appendix C for detail); afterwards the book refers to it by name instead of restating it.

This relocates the book's vertigo. The cold is no longer "the hellscapes definitely exist." It
is *groundlessness*: nothing in the structure, and no possible vantage, settles whether they
do, and you are the kind of thing that cannot stop asking.

It also changes what the book promises. Earlier framing asked "why the Born measure, why this
system?" and offered the universal prior as the answer. The book no longer offers that answer,
and it does not replace it with a dissolution of the question. Under the postulate, no
representation certifies itself as the view from nowhere. But "why this weighting?" remains an
ordinary scientific and mathematical question, and quantum theory owes it an answer:
experiments exhibit Born statistics, and an account of them is still due. The Born measure and
the universal prior can be compared as two forms of weighting, but their domains and
justifications differ: one weights quantum outcomes within quantum theory, while the other
weights program descriptions in universal induction. The book compares their roles only. It
neither derives the Born rule nor closes the Born question (Appendix B, which this matches).
The question "but are the weighted things real?" remains interpretive. This is the clean seam to
*Multitudes* (Volume II).

---

## The cascade

The book is structured so that every conclusion in Parts II and III can be traced to its
source. The vocabulary of the trace changed under the re-foundation; the discipline did not.
Every conclusion rests on one of the five footings: theorem, construction, finitude, postulate,
optional additions. Use these names, in this order, wherever the manuscript lists the footings
(the Appendices opener A0, Appendix E, Chapter 7's tracing convention, Chapter 9, Chapter 10).

**Theorem and construction** give:

- Bayesian indexing is well-posed.
- Length weights from fair program bits are admissible for a prefix code.
- The resulting universal semimeasure dominates every lower-semicomputable semimeasure up to a
  source- and machine-dependent constant.
- Under stated computable-source assumptions, its sequential predictions converge strongly.
- Universal-machine changes preserve a multiplicative equivalence class, while finite-scale
  differences remain consequential.

**Finitude** gives:

- Why a finite observer must use bounded, selective, local representations.
- Why local inference (effective theories at each scale), not global Solomonoff, is what
  observers actually do.

**Postulate** (on top of theorem, construction, and finitude) gives the full picture the book
commits to:

- The totality has no privileged decomposition; index, system, and self are cuts.
- "One world exists" is a cut; realism is a cut; the existence question is held open.
- **The indifference of description.** No description is privileged. You can carve the Library
  into worlds, systems, and selves in endlessly many ways, and nothing in it marks one carving
  as the right one. $M$ ranks descriptions by what they cost; it singles out none of them as the
  world, and none as you. The indifference is over descriptions, and the description is yours.
  This is the deeper analog of Worldlines' "indifference of geometry": geometry was indifferent
  to your worldline; here the structure is indifferent among all the ways you could describe
  it, including the one you call "I." Chapter 10 states it positively first, opening with the
  spine sentence, and then gives its caveats once, in one paragraph: it does not say every
  output exists; it does not say which occurrence is you (the missing occurrence measure); it
  does not derive the Born rule.
- **No view from the top.** No view is privileged because every view is a cut and no cut is
  privileged; so there is no overseer, no God's-eye decomposition that is the real one, and
  this follows directly from the postulate rather than from any claim about the limits of
  computation. It does not say no powerful agent could exist; it says no agent's view is *the*
  view. Developed in Chapter 9; it sharpens the indifference (the structure is not only
  unpreferring but unwatched) and seeds the grace of Part III (warmth, if any, comes from
  among observers, never handed down).
**Optional additions** (the outside view read ontically, Everett, an identity rule, a self-location
rule, a cosmology) are named wherever a conclusion would need them, and the book adopts none:

- Boltzmann observers, hellscapes, dark continuations, and other uncomfortable descriptions are
  permitted by the outside view; the framework does not establish their existence or assign a
  self-location measure over their occurrences (the missing occurrence measure). Reading them
  as facts takes optional additions. The book catalogues the conditional implication honestly
  (Chapter 9). The chosen response of Part III is not a theorem about it.
- Quantum mechanics enters only as a familiar interpretive landmark. Unitary quantum mechanics
  plus an Everettian ontology describes effectively autonomous decoherent branches. Decoherence
  does not by itself select that ontology or solve the definite-outcome problem. Everett is a
  landmark, never evidence and never a premise; it is stated once at full strength in Chapter 8,
  and nothing later rests on it. A reader who rejects Everett loses no theorem in this book.
- Quantum immortality takes at least Everett, an identity rule, and a self-location rule. Chapter 11
  states it plainly as such, labeled, with a reader-safety note; the premise analysis lives in
  Appendix C.

The chosen response (care, the held cut) is none of the five footings. It is chosen, and the
book says so.

---

## What the bedrock does not provide

The bedrock and the postulate are silent on:

- **Why there is something rather than nothing.** The nearest thing the Library can offer for
  "nothing" is the empty cut, the empty set, which is as cheap as the whole; but the empty set is
  already something (a set, a container with nothing in it, needing a domain of possibilities to
  exclude from), and the Library has no symbol for the absence of the Library. So the cut
  principle compares the empty cut with the whole, and neither is quite the nothing the question
  meant; the chapter says so (Chapter 7, "An older question") and does not write "nothing is the
  empty set" flatly. What excludes nothing is not simplicity but
  observation (we exist) and a question about coherence, which the failed translation points at. The book does not pretend to resolve
  this; under the postulate, "why anything" is itself a cut, which relocates the question
  without closing it.
- **The hard problem of consciousness.** Bracketed. The book is about the structure observers
  cut, not about why structure is observed. Where consciousness must be invoked (the observer)
  it is a placeholder, not analyzed.
- **The choice of machine at finite scales.** Invariance is asymptotic. For a finite agent
  with finite data the constants matter; this is the finite-scale caveat on Solomonoff.
- **Whether the postulate is correct.** The book takes it seriously and follows its
  consequences. It does not claim to have proven it.
- **How to assign self-location probabilities.** $M$ supplies a posterior over candidate
  programs and prefixes. It does not define a sample space of observer occurrences or a
  probability distribution over them. SSA, SIA, and related rules add structure the book does
  not adopt.
- **The coherence of mathematics itself.** The book presupposes mathematics is coherent in the
  standard sense. No contradiction has been found in over a century of foundational work, but
  this is an empirical claim about a practice, not a proof. If "computable structure" failed to
  pick out anything determinate, the framework would dissolve. The book takes coherence as a
  working assumption and flags it here.

These are the honest limits. The reader who follows the cascade should always be able to ask
"which footing does this rest on: theorem, construction, finitude, postulate, or an optional
addition?" and get a visible answer.

---

## The discipline

The re-foundation changes the frame, not the book's integrity rules.

1. **State hypotheses with results.** Theorems do not depend on the postulate, but their scope
   does depend on definitions and assumptions.
2. **The postulate is labeled and asked once.** The one interpretive commitment is named where
   it enters; the reader is never asked to confuse mathematics with metaphysics.
3. **Finitude forces approximation, not a prior.** Kraft makes length weights admissible; fair
   program bits choose them; dominance and convergence explain their power. Keep these claims
   distinct.
4. **The cascade is traceable.** Every conclusion unwinds to one of the five footings: theorem,
   construction, finitude, postulate, optional additions. The source is always visible.
5. **Never claim the math supports more than it does.** "No view from the top" follows from the
   postulate, not from a strained argument about the limits of computation; the Born-measure
   comparison is an analogy between weighting roles, not a derivation or an identification of
   domains.
6. **Never project emotional properties onto the structure.** It does not care, prefer, or
   punish. It has no joints to care with. The measure is not benevolent.
7. **Never console with what is not true, and never engineer away what the framework permits.**
8. **The reader is never alone with difficulty.** If a step is hard, the book pauses. If a step
   is interpretive, the book labels it. The reader who follows from Chapter 1 has all the tools
   by the end of Part I. What remains is to see what they build.
9. **State each caveat once, where its object first enters, at full strength; afterwards refer
   back by name.** A caveat restated is a caveat weakened, and a book that restates its caveats
   becomes a book defending itself instead of a voice talking to the reader. Canonical homes:
   the Kraft/no-unique-prior caveat in Chapter 4 (one paragraph in Chapter 5 at most); the
   dominance scope in Chapter 5; the missing occurrence measure in Chapter 7 (its filling rules
   listed in Chapter 8); Everett as landmark in Chapter 8 (one consolidated paragraph);
   "realism is a cut" at the end of Chapter 8; the Born comparison in Chapter 8 (Appendix B for
   the boundary; later chapters cross-reference it); "conditional copies do not console" once,
   in Chapter 12. Later passages cite these by name ("the missing occurrence measure," "Everett
   is a landmark") rather than re-arguing them. This is not permission to weaken any scoping
   claim; it is a rule about where each one lives.
