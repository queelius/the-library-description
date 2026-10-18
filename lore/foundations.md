# Foundations: The Bedrock, the Cut, and the Postulate

The argument rests on settled mathematics, a particular universal construction, and one
interpretive postulate. Those layers must remain visible. The inversion is the work the book
does on the reader:

> There are no joints. There are only the cuts you make.

The structure the book is about (the totality of computable possibility, the Library of
Babel made formal) has no natural decomposition: no books, no shelves, no index, no list of
"systems," no privileged "you." Every one of those is a cut, a carving an observer brings to
a structure that has none of its own. Once the reader feels this, the rest of the book is
consequence.

## The principle of earned axioms

The book earns its bedrock the way Worldlines earned the constancy of the speed of light:
through everyday inquiry that ends somewhere the reader did not start. Chapter 1 begins with
ordinary induction. You observe data; you predict. By the end of Part I the reader has
arrived at a principled universal prior, the dominance theorem,
and the recognition that the index, the system, and the self were all the same move all
along. The mathematics is not asserted. It is the resolution of a puzzle the reader has been
led to feel.

What is interpretive in the book is concentrated in one place and labeled there: the single
postulate (Section "The postulate"). A second distinction is just as important: fair random
program bits and a reference universal machine define a construction, not a theorem forcing a
unique prior. The reader can always trace a conclusion to theorem, construction, postulate, or
finitude. Nothing is hidden behind difficulty.

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
punctuation, self-delimiting. Kraft says the quantities $2^{-\ell_i}$ have total mass at most
one. They are also the probabilities of reading those codewords from fair random bits.
Prefix-free encoding is the structure of self-delimiting computation: a program knows when it
has finished reading its input. Kraft does **not** force this weighting, a unique prior, or the
claim that most total mass must lie on short descriptions. Other coherent priors exist.

### 3. The universal prior (Solomonoff)

Given a universal prefix Turing machine $U$, the universal prior is

$$M(x) = \sum_{p\, :\, U(p) = x*} 2^{-|p|},$$

where $x*$ means that the output begins with $x$. This is a lower-semicomputable semimeasure
over finite prefixes. It results from two modeling choices: a reference universal prefix
machine and fair random input bits. A related exact-output algorithmic probability is

$$m(x) = \sum_{q\, :\, V(q)=x} 2^{-|q|}.$$

For a suitable prefix machine $V$, the coding theorem gives
$-\log_2 m(x)=K_V(x)+O(1)$. The book must not silently replace sequential $M$ by exact-output
$m$, or condition $m$ as though it were the sequential predictor.

### 4. The dominance theorem (optimality)

For any lower-semicomputable semimeasure $\mu$ (any distribution over data sequences that can
be approximated from below by an algorithm), there is a constant $c_\mu$ with

$$M(x) \geq c_\mu \cdot \mu(x) \quad \text{for all } x.$$

The constant may be extremely small and depends on the source and the chosen universal
machine. Under the usual computable-source assumptions, dominance supports strong convergence
results for sequential prediction. It does not establish pointwise superiority at every finite
horizon, a unique rational prior, or superiority to every rival under every optimality notion.

### 5. The invariance theorem (machine-independence)

$M$ depends on the choice of universal machine, but for any two universal machines $U_1, U_2$
the distributions differ by at most a constant set by the length of the cross-compiler
between them:

$$M_1(x) \asymp M_2(x).$$

Universal machines define a multiplicative-equivalence class. This supports asymptotic
robustness in the settings covered by the convergence results, but the constants can dominate
finite problems. Adversarial universal machines can encode poor finite-scale biases. There is no
single machine-independent prior.

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
has no canonical decomposition. The construction gives program-output space with description
weights on candidate output prefixes;
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
privilege*. "Only this one world is real" is one possible cut. Declining to privilege it does
not prove that every describable world exists. Under Picture A it motivates considering the
whole space without selecting one member as view-independently real; under Picture B it leaves
the observer with competing candidate descriptions. Even the leap from "no cut is privileged"
to "all cuts are equally real" is a further postulate, and the book does not make it.

The reader who refuses the postulate keeps all of the bedrock: Bayesian indexing is still
well-posed, and Solomonoff induction remains a distinguished theoretical construction with
strong dominance and convergence properties. What they lose is only the ontological reach of
Parts II and III. The postulate is the one place the book asks for assent, and it asks once.

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

There are two pictures the framework supports. **Picture A** is the totality as an object: a
static program-output space with description weights, surveyed from outside. **Picture B** is the observer inside some
$U(p)$, with access only to a prefix of their local structure, holding a posterior over
candidate programs that never collapses, unable even in principle and with unbounded data to
retrieve which program generates them. The book does not declare either picture the real one,
because choosing between them is a carving, and no carving is privileged. It holds the
existence question open and underdetermined from inside.

Neither picture supplies an indexical measure. $M$ distributes weight over candidate programs
and output prefixes, not over observer occurrences. Turning it into odds that *this occurrence*
is you requires an additional reference class, xerographic distribution, or other self-location
rule. The book adopts none.

This relocates the book's vertigo. The cold is no longer "the hellscapes definitely exist." It
is *groundlessness*: nothing in the structure, and no possible vantage, settles whether they
do, and you are the kind of thing that cannot stop asking.

It also changes what the book promises. Earlier framing asked "why the Born measure, why this
system?" and offered the universal prior as the answer. Under the postulate the book
gives a different and more honest answer: the *why* presupposes a joint, a privileged cut from
which "this and not that" would have a determinate sense, and there is none. The Born measure
and the universal prior can be compared as two forms of weighting, but their domains and
justifications differ: one weights quantum outcomes within quantum theory, while the other
weights program descriptions in universal induction. The analogy neither derives the Born rule
nor closes its empirical and mathematical questions. The question "but are the weighted things
real?" remains interpretive. This is the clean seam to *Multitudes* (Volume II).

---

## The cascade

The book is structured so that every conclusion in Parts II and III can be traced to its
source. The vocabulary of the trace changed under the re-foundation; the discipline did not.
Every conclusion rests on one of three things:

**Theorems plus the chosen universal construction** give:

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
  among observers, never handed down).
- Boltzmann observers, hellscapes, dark continuations, and other uncomfortable descriptions are
  permitted by Picture A; the framework does not establish their existence or assign a
  self-location measure over their occurrences. The book catalogues the conditional implication
  honestly (Chapter 9). The chosen response of Part III is not a theorem about it.

Quantum mechanics enters only as a familiar interpretive landmark. Unitary quantum mechanics
plus an Everettian ontology describes effectively autonomous decoherent branches. Decoherence
does not by itself select that ontology or solve the definite-outcome problem. A reader who
rejects Everett loses no theorem in this book.

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
"which theorem, construction, interpretation, or practical limit does this rest on?" and get a
visible answer.

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
4. **The cascade is traceable.** Every conclusion unwinds to theorem, construction, postulate,
   or practical limit. The source is always visible.
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
