# Index: Supporting Detail for the Cut

The spine of the book (there are no joints, only cuts; the index, the system, and the self are
one move at three depths) now lives in `foundations.md`. This document is no longer "a
clarification the book has not yet made." The clarification is the spine. What remains here is
the supporting detail: the two pictures the framework supports, why choosing between them is
itself a cut, and what observers actually do given finitude.

## The terminology the book must keep distinct

The word "index" did two jobs in earlier drafts, and the prose must keep them apart.

**Index, the verb.** The act of probabilistic restriction: indexing as activity, conditioning,
$P(\cdot \mid \text{data})$. "Where am I, given what I have seen?" This is the cut for
prediction, the work of Part I (The Index).

**Index, the noun.** The discrete labels an observer attaches to regions of the structure:
books, shelves, coordinates, bitstrings as items in an enumeration. This is the apparatus, and
it is observer-imposed. There is no canonical noun-index in the structure (see `foundations.md`:
the library is generable but not surveyable; $K$ and $M$ are not computable; no algorithm
returns an item's canonical position). The noun-index is one more cut.

Both senses are the cut, at different grain. The book uses the verb sense freely and names the
noun sense as imposition wherever the imposition matters.

## Picture A and Picture B

The framework supports two pictures of the totality, and the book must not silently switch
between them.

**Picture A: the totality as object.** The static set $\{U(p)\}$ with its measure $M$, surveyed
from outside. The book's title-level statements use this picture: the indifference of
description over carvings.

**Picture B: the observer as situated.** The observer inside some $U(p)$, with access only to a
prefix of their local structure, holding a posterior over candidate programs that never
collapses. Even with unbounded data, many distinct programs stay consistent; the observer
cannot retrieve which one generates them.

| | Picture A | Picture B |
|---|---|---|
| What it describes | static set with measure | the observer's posterior given a prefix |
| Vantage | outside, surveying the totality | inside, with finite data |
| Status of the generating program | one real $p$; the totality contains all | always a posterior, never sharp |
| Status of the index | observer-imposed on a static set | unretrievable from inside |
| What is indifferent | the measure over outputs | the posterior never resolves |

The pictures are consistent, not in conflict. But the decisive point under the postulate is
that **choosing which picture is the real one is itself a cut.** Picture A reads as though the
totality is the fundamental object; Picture B reads as though the situated observer is. Treating
either as privileged is a carving, and no carving is privileged. The book holds the choice open;
this is the ontology of `foundations.md` ("realism is a cut") seen from the reader's side.
Picture B is what applies to any actual reader, because the reader is always inside, never
outside.

## The index is one instance of the cut, parallel to the self

The "I" is a label attached to a region of structure for navigation. The index is a label
attached to a region of structure for analytical tractability. Both are compressions; neither
carves at a joint, because there are none. They arise from the same need: a fully realized,
undecomposed structure has to be made tractable by a finite observer, who decomposes it into
items and attaches labels. The items and labels are not in the structure; they are in the
observer's interface to it.

This is the parallel Part III (The Self) develops:

- **Self.** Compression of a continuing pattern, the brain's self-model (Metzinger, Parfit, in
  the lore, not the prose).
- **Index.** Compression of "address within the totality," the analyst's coordinate scheme.

The dissolution of the self and the dissolution of the index are not two moves. They are one
move applied at two levels of the same apparatus.

## Local inference: what observers actually do

Global Solomonoff is uncomputable; a finite observer could never run it. What the observer does
instead is **local inference**:

1. Isolate a substructure (a cell, an apple, a stellar system).
2. Find a short local program that approximates it well enough to predict.
3. Compose these local approximations across scales and subsystems.

The "ensemble" the observer maintains is the collection of these short local descriptions, the
effective theories at each scale, not a posterior over a global program. Science is not a search
for the program; it is the construction of a library of local cuts. The cell biologist's model
of mitosis is not extracted from the universe's wave function; it is a local cut that captures
the cell's behavior with a short description. This is finitude in practice (see
`foundations.md`): the observer is forced toward cheap local cuts.

## Hierarchical decomposability as an anthropic constraint

For local inference to work at all, the observer's region must have more structure than mere
computability:

- **Hierarchical decomposability.** Substructures at each scale are approximable by short local
  programs (cells without quarks, apples without electrons).
- **Local compressibility at multiple scales.** A substructure has a short description relative
  to deriving it from first principles.
- **Modular, Markov-blanket structure.** Subsystems are approximately isolable; the apple's near
  future depends on the apple and its local environment, not on every distant detail.

None of these follows from computability. A program can produce a perfectly computable structure
with none of them: globally entangled, locally chaotic, or perfectly homogeneous. The digits of
$\pi$ are computable but locally chaotic; an observer "in" them could not do science from finite
stretches.

Observers whose inference *works* exist only where the local structure is hierarchically
decomposable. (Observer-*moments* can fluctuate into being anywhere, Boltzmann-brain style; what
the lawless majority cannot support is an observer whose models track their world and who
persists past the instant.) This is anthropic but more substantive than the usual move. The
standard version asks "why is the world lawful?"; the deeper version asks "why is it
*hierarchically* lawful, with effective theories we can find with local effort?" The answer is
the same (it has to be, or we are not here to ask), but the constraint is real: it is a genuine
restriction on which regions can be inhabited by a cutter who works. This grounds the observer
definition in Chapter 8 and the finitude argument in `foundations.md`.

## Tone notes

- This is supporting detail for the spine, not a separate metaphysical move. Do not oversell.
- Same humility register as the rest of the book: the framework might be wrong, and the
  index-as-cut observation might be wrong about how it is wrong.
- Do not let "index as a cut" sound like consolation. It does not console; it dissolves a quiet
  certainty the reader was carrying (that the coordinates, even unknown, were at least
  coordinates). The deepened thesis removes even that.
- Match the dissolution tone Part III develops: matter-of-fact, not triumphant. Parfit's voice,
  not the new-age voice.

## Where in the manuscript

The chapter-by-chapter placement now lives in `outline.md` (the index named as imposition in
Ch 2, the observer defined in Ch 8, the full dissolution in Ch 14). This document supplies the
argument those chapters draw on; it does not maintain its own chapter plan.
