# Foundations: The Bedrock, the Cut, and the Postulate

The entire argument of this book rests on a small amount of settled mathematics and one
inversion of intuition. The mathematics is not difficult and is, in its core form, closed
since the 1960s. The inversion is the work the book does on the reader:

> There are no joints. There are only the cuts you make.

The structure the book is about (the totality of computable possibility, the Library of
Babel made formal) has no natural decomposition: no books, no shelves, no index, no list of
"systems," no privileged "you." Every one of those is a cut, a carving an observer brings to
a structure that has none of its own. Once the reader feels this, the rest of the book is
consequence.

## The principle of earned axioms

The book earns its bedrock the way Worldlines earned the constancy of the speed of light:
through everyday inquiry that ends somewhere the reader did not start. Chapter 1 begins with
ordinary induction. You observe data; you predict. By the end of Part I the reader has, with
nothing imposed from above, arrived at the universal distribution, the dominance theorem,
and the recognition that the index, the system, and the self were all the same move all
along. The mathematics is not asserted. It is the resolution of a puzzle the reader has been
led to feel.

What is interpretive in the book is concentrated in one place and labeled there: the single
postulate (Section "The postulate"). The reader can always trace any conclusion back to
bedrock, to the postulate, or to finitude. Nothing is hidden behind difficulty.

---

## The bedrock

The bedrock is a single integrated edifice of probability and computation. It is settled
mathematics, stated as theorems, and it does not change under the re-foundation. It can be
given in three theorems and one definition.

### 1. Bayes' theorem (probability)

The structure of belief revision. Given prior $P(H)$ and likelihood $P(D \mid H)$, the
posterior is

$$P(H \mid D) = \frac{P(D \mid H)\, P(H)}{P(D)}.$$

This is not philosophy. It is the only way to combine prior and likelihood that respects the
axioms of probability (Cox's theorem). It says nothing about *which* prior to use. That
silence is the entire problem of induction, and it is the first hint that something has to be
brought to the structure from outside it.

### 2. Kraft's inequality (the bridge)

For any prefix-free code with codeword lengths $\ell_1, \ell_2, \ldots$:

$$\sum_i 2^{-\ell_i} \leq 1.$$

This is the entire reason "shorter" can become "more probable." A prefix-free code is one in
which no codeword is a prefix of another: a code that knows where it ends without external
punctuation, self-delimiting. Kraft says the lengths of such a code can be read as a
probability mass function, $P(i) = 2^{-\ell_i}$ up to normalization. Without prefix-free
encoding the sum diverges. Prefix-free is exactly the structure of self-delimiting
computation: a program that knows when it has finished reading its input. Kraft is also the
hinge of finitude (see below): it makes short descriptions necessarily scarce.

### 3. The universal distribution (Solomonoff)

Given a universal prefix Turing machine $U$, the universal distribution is

$$M(x) = \sum_{p\, :\, U(p) = x*} 2^{-|p|},$$

where $x*$ means "$x$ as a prefix of the output." This is a probability distribution over
strings, derived entirely from program lengths. The deep fact is not the formula but what
$M$ does. The shortest description length of $x$, written $K(x)$, satisfies
$M(x) \geq 2^{-K(x)}$: the weight $M$ places on $x$ is dominated by its single cheapest
description.

### 4. The dominance theorem (optimality)

For any lower-semicomputable semimeasure $\mu$ (any distribution over data sequences that can
be approximated from below by an algorithm), there is a constant $c_\mu$ with

$$M(x) \geq c_\mu \cdot \mu(x) \quad \text{for all } x.$$

Whatever computable distribution is generating your data, $M$ catches up to it; its
predictions converge to the truth at the same asymptotic rate, up to a multiplicative
constant. The universal distribution is contained inside every reasonable distribution, up to
a constant. For prediction, you cannot do better.

### 5. The invariance theorem (machine-independence)

$M$ depends on the choice of universal machine, but for any two universal machines $U_1, U_2$
the distributions differ by at most a constant set by the length of the cross-compiler
between them:

$$M_1(x) \asymp M_2(x).$$

Asymptotically the choice of machine does not matter. "The universal distribution" is
well-defined up to a constant, and the constant becomes negligible as data accumulate.

---

## The inversion: no joints, only cuts

This is the book's pivot, the equivalent of Worldlines' "the speed of light is the invariant;
space and time give." It is meant to leave the reader with an intuition they cannot un-think.

### Generation is trivial

The generator for the totality of computable structures is, in effect, one line: dovetail
every program on every input, or equivalently enumerate all binary strings. The Kolmogorov
complexity of "the universe of all programs" is small. It is one of the cheapest objects there
is. This is the Library of Babel point made formal: Borges' library contains every possible
book, and generating it is trivial. The hard problem is locating any specific book.

### The information lives in the cut

The empty set and the universal set are complements, and both are informationally cheap:
$K(\emptyset) \approx K(V) \approx$ small. A theory that explains everything explains nothing;
a theory that explains nothing explains nothing; a theory that explains *this* is the only
interesting thing. The information lives in the **cut**: the selection, the boundary, the
restriction. Kolmogorov complexity $K(x)$ is exactly the length of the shortest cut that
isolates $x$ from the totality.

### The cut has no canonical form

Here is the move that makes this book different from every other multiverse book. The totality
has no canonical decomposition. The mathematics is program-output space with a measure on it;
there are no "books," no shelves, no index in it anywhere. Borges' books and Tegmark's
discrete structures are convenient discretizations of an undecomposed substrate. The shortest
description of $x$ is taken across *all* regularities, not book by book; if two "books" share
structure, $K$ exploits it, indifferent to any boundary we imposed. The library is generable
but not surveyable: we can produce everything in it by running the generator, but no algorithm
takes an arbitrary $x$ and returns its position, its complexity, or its shortest description
($K$ is not computable; $M$ is only lower-semicomputable). There is no computable canonical
index. Any index is a tool the observer brings.

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
operation as the dissolution of the index; they are one move, seen twice.

---

## The postulate: no cut is privileged

The bedrock above is mathematics. Exactly one thing in the book is not: a single postulate,
stated plainly, that the reader may refuse.

> **No cut is privileged.** The totality has no decomposition that is the correct one. Every
> carving (into a world, into systems, into selves, into "the one reality that exists") is a
> cut an observer makes, and the structure ranks none of them above the others.

This single postulate replaces the two "speculative moves" earlier drafts carried (the claim
that physics is computable, and the claim that all computable structures exist). Those were
framed as *additions*: things you take on. The postulate is the opposite. It is a *refusal to
privilege*. "Only this one world is real" is not the cheap default it feels like; it is a cut,
and specifying which world costs information. Declining to privilege that cut is what is left
when you stop carving. So the multiverse is not a large addition to the ontology; it is what
remains when no cut is treated as the real one. (What that does to the question of existence
itself is the subject of "The ontology" below; even the leap from "no cut is privileged" to
"all cuts are equally real" is a further cut, and the book does not make it.)

The reader who refuses the postulate keeps all of the bedrock: Bayesian indexing is still
well-posed, the simplicity bias is still forced for prediction, Solomonoff is still optimal.
What they lose is only the ontological reach of Parts II and III. The postulate is the one
place the book asks for assent, and it asks once.

---

## Finitude: why some cuts are forced

"No cut is privileged" sounds as though it should collapse into "anything goes": if no carving
is correct, why prefer Solomonoff to its opposite, why simplicity, why anything? It does not
collapse, and the reason is **finitude**.

A finite observer is forced toward cheap cuts. This is a consequence of Kraft, not a new
theorem, and the book presents it as such. Kraft makes short descriptions necessarily scarce
(their weights must sum to at most one), so a finite agent with finite probability mass to
allocate is *compelled* to spend most of it on short descriptions. Simplicity is therefore not
the world's joint and not a privileged cut. It is the cut a finite cutter cannot avoid making.
The bias is real for the observer and never in the structure.

This is the guardrail for everything that follows. Whenever the book leans on simplicity, on
the universal distribution, on the optimality of Solomonoff, it is leaning on what finitude
forces, never on a claim that the structure prefers the simple. The discipline of the book is
to keep that distinction visible at every step.

---

## The ontology: realism is a cut

Take the postulate seriously and one more thing follows, the book's coldest and most
self-consistent move: the question of which picture is *real* is itself a cut.

There are two pictures the framework supports. **Picture A** is the totality as an object: the
static set with its measure, surveyed from outside. **Picture B** is the observer inside some
$U(p)$, with access only to a prefix of their local structure, holding a posterior over
candidate programs that never collapses, unable even in principle and with unbounded data to
retrieve which program generates them. The book does not declare either picture the real one,
because choosing between them is a carving, and no carving is privileged. It holds the
existence question open and undecidable from inside.

This relocates the book's vertigo. The cold is no longer "the hellscapes definitely exist." It
is *groundlessness*: nothing in the structure, and no possible vantage, settles whether they
do, and you are the kind of thing that cannot stop asking.

It also changes what the book promises. Earlier framing asked "why the Born measure, why this
system?" and offered the universal distribution as the answer. Under the postulate the book
gives a different and more honest answer: the *why* presupposes a joint, a privileged cut from
which "this and not that" would have a determinate sense, and there is none. The Born measure
and the universal distribution are the same kind of object because both are the bookkeeping of
cuts (what a carving costs), and the question "but are the carved things real?" is itself a
cut. This is the clean seam to *Multitudes* (Volume II): that book postulates the Born measure
and hands forward "why this measure"; this book answers that the question was a cut. The shift
is deliberate and should read as a finding, not a retreat.

---

## The cascade

The book is structured so that every conclusion in Parts II and III can be traced to its
source. The vocabulary of the trace changed under the re-foundation; the discipline did not.
Every conclusion rests on one of three things:

**Bedrock alone** gives:

- Bayesian indexing is well-posed.
- The simplicity bias is mathematical structure, not aesthetic preference (this is finitude
  applied to prediction).
- Solomonoff is asymptotically optimal among computable learners.
- The choice of machine is asymptotically irrelevant.

**Bedrock plus finitude** gives:

- Why a finite observer predicts with the simple, and why this is compulsion, not discovery.
- Why local inference (effective theories at each scale), not global Solomonoff, is what
  observers actually do.

**Bedrock plus the postulate** gives the full picture the book commits to:

- The totality has no privileged decomposition; index, system, and self are cuts.
- "One world exists" is a cut; realism is a cut; the existence question is held open.
- **The indifference of description.** No description is privileged. The structure ranks
  carvings (by what they cost) and singles out none. This is the deeper analog of Worldlines'
  "indifference of geometry": geometry was indifferent to your worldline; here the structure
  is indifferent among all the ways you could describe it, including the one you call "I."
- **No view from the top.** No view is privileged because every view is a cut and no cut is
  privileged; so there is no overseer, no God's-eye decomposition that is the real one, and
  this follows directly from the postulate rather than from any claim about the limits of
  computation. It does not say no powerful agent could exist; it says no agent's view is *the*
  view. Developed in Chapter 9; it sharpens the indifference (the structure is not only
  unpreferring but unwatched) and seeds the grace of Part III (warmth, if any, comes from
  among the rungs, never handed down).
- Boltzmann observers, hellscapes, dark continuations, and other uncomfortable carvings are
  all permitted, and the book catalogues them honestly (Chapter 9) rather than engineering
  them away. The chosen response of Part III is the answer the book offers in their place.

Quantum mechanics enters only as a familiar landmark: the plainest reading of the unmodified
Schrodinger equation already branches, so multiplicity is not exotic. It carries no
argumentative weight here; a reader who rejects the quantum reading still inherits the whole
cascade from the postulate, and the physics-grounded version of multiplicity is the work of
*Multitudes*.

---

## What the bedrock does not provide

The bedrock and the postulate are silent on:

- **Why there is something rather than nothing.** "Nothing" is the empty set, itself a cheap
  cut; "everything uncut" is its complement. What excludes nothing is not simplicity but
  observation (we exist) and a question about coherence. The book does not pretend to resolve
  this; under the postulate, "why anything" is itself a cut, which relocates the question
  without closing it.
- **The hard problem of consciousness.** Bracketed. The book is about the structure observers
  cut, not about why structure is observed. Where consciousness must be invoked (the observer)
  it is a placeholder, not analyzed.
- **The choice of machine at finite scales.** Invariance is asymptotic. For a finite agent
  with finite data the constants matter; this is the finite-scale caveat on Solomonoff.
- **Whether the postulate is correct.** The book takes it seriously and follows its
  consequences. It does not claim to have proven it.
- **Whether the indexing problem has an accessible solution.** The choice function exists (you
  live somewhere, so a cut is in force); no procedure converges to "the true index" on bounded
  resources. Choice exists in the structure; access to choice does not.
- **The coherence of mathematics itself.** The book presupposes mathematics is coherent in the
  standard sense. No contradiction has been found in over a century of foundational work, but
  this is an empirical claim about a practice, not a proof. If "computable structure" failed to
  pick out anything determinate, the framework would dissolve. The book takes coherence as a
  working assumption and flags it here.

These are the honest limits. The reader who follows the cascade should always be able to ask
"which of bedrock, finitude, or the postulate does this rest on?" and get a visible answer.

---

## The discipline

The re-foundation changes the frame, not the book's integrity rules.

1. **Bedrock is bedrock.** The theorems are presented as theorems. They are not negotiable and
   they do not depend on the postulate.
2. **The postulate is labeled and asked once.** The one interpretive commitment is named where
   it enters; the reader is never asked to confuse mathematics with metaphysics.
3. **Finitude carries the weight the structure will not.** Simplicity is presented as forced on
   the observer, a consequence of Kraft, never as a preference of the structure or a theorem of
   its own.
4. **The cascade is traceable.** Every conclusion unwinds to bedrock, finitude, or the
   postulate. The source is always visible.
5. **Never claim the math supports more than it does.** "No view from the top" follows from the
   postulate, not from a strained argument about the limits of computation; the central
   identification (Born measure and universal distribution) is cut-bookkeeping, not a
   derivation of one from the other.
6. **Never project emotional properties onto the structure.** It does not care, prefer, or
   punish. It has no joints to care with. The measure is not benevolent.
7. **Never console with what is not true, and never engineer away what the framework permits.**
8. **The reader is never alone with difficulty.** If a step is hard, the book pauses. If a step
   is interpretive, the book labels it. The reader who follows from Chapter 1 has all the tools
   by the end of Part I. What remains is to see what they build.
