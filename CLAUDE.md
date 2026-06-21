# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this
repository.

> Also read the parent conventions: `../../CLAUDE.md` (the `literature/` cross-project
> conventions: manuscript format, build patterns, lore-first workflow, license, author
> identity). This file covers what is specific to *this* book. For live working state (what is
> drafted, what is next), read `HANDOFF.md`.

---

## 0. What this book is

This directory is **Volume III** of the "Indifference of" nonfiction suite by Alex Towell:

**\*The Library: The Indifference of Description.\***

Its subject is algorithmic information theory (Bayes, Kraft, Solomonoff), followed all the way
down to a single claim. The book takes settled mathematics as bedrock, follows it to a cold
structural conclusion, and answers that cold with the same chosen human response as its siblings
(grace). It stands alone; it pairs most directly with *Worldlines* (Vol I).

This is a re-foundation of an earlier draft. The prior draft lives, intact and read-only, at
`../the-library/` under its old subtitle, *The Indifference of Enumeration*, with an older
"two labeled moves + cascade" framing. **Do not edit `../the-library/`.** Author here, fresh,
deriving from the old lore and manuscript as source material. See §3.

---

## 1. The spine

> There are no joints. There are only the cuts you make.

The structure the book is about (the totality of computable possibility, the Library of Babel
made formal) has no natural decomposition: no books, no shelves, no index, no list of "systems,"
no privileged "you." Every one of those is a *cut*, a carving an observer brings to a structure
that has none of its own. Generation is trivial (the totality is one line of code); the cut is
everything; and the cut is yours, including the one you call "I."

The one move (cutting, equivalently local compression) appears at three depths, which are the
three Parts:

- **The Index** (cut to *predict*).
- **The System** (cut to have a *world*).
- **The Self** (cut to be *someone*, and to *care*).

Self, system, and index are not three facts; they are one move at three levels. The dissolution
of the self in Part III is the same operation as the dissolution of the index.

---

## 2. The reasoning skeleton

Replaces the old "bedrock + labeled moves + cascade" architecture. Every conclusion traces to
one of these, and the trace is always kept visible (this is the book's integrity).

1. **Bedrock** (settled mathematics, stated as theorems, unchanged): Bayes (Cox), Kraft, the
   universal prior and the dominance theorem (Solomonoff), the invariance theorem.
2. **The postulate** (the single interpretive commitment, asked once, refusable): **no cut is
   privileged.** The totality has no decomposition that is the correct one. "Only this world is
   real" is itself a cut. This replaces both old moves (which were *additions*; the postulate is
   a *refusal to privilege*).
3. **Finitude** (the guardrail against relativism, a *consequence of Kraft, never a theorem*): a
   finite cutter is forced toward cheap cuts. Simplicity is real for the observer, never in the
   structure.
4. **Consequences:** everything in Parts II and III.

**The ontology is (c): realism is itself a cut.** The book declines to assert the multiverse
exists or does not; the existence question is undecidable from inside and is held open. This
shifts the book's central claim: it no longer owes "explain the Born measure," but shows the
"why" presupposes a joint there is none of. The Born measure and the universal prior are
the same kind of object (the bookkeeping of cuts); this is the seam to *Multitudes* (Vol II).

**The landing is the held cut:** both the cold and the warmth are cuts at the same level, and
neither is the ground; care is the cut we choose to keep, with no floor under it. "We" is a cut
we make anyway, and the making is the whole point. The book itself is the holding performed.

---

## 3. Relationship to `../the-library/` (read-only)

The prior draft is kept intact as a reference so the new lore is not a confused mix of old and
new identity. Read it for source material (`../the-library/lore/`, `../the-library/chapters/`);
never edit it. When you need the old argument, read it there and write the new version here. The
old identity files describe the retired subtitle (*The Indifference of Enumeration*) and the old
"moves" framing; trust *this* directory for current identity.

---

## 4. Lore map

The bible in `lore/` is authoritative. When lore and (future) manuscript conflict, fix the
manuscript; when changing a fact, update the lore doc first, then propagate.

| Doc | Role |
|---|---|
| `foundations.md` | **Canonical.** Bedrock, the postulate, finitude, the cut at three depths, the ontology (c), the recast cascade, what the bedrock does not provide, the discipline. Upstream of all. |
| `themes.md` | Core vision, the inversion, the seven themes (theme 6 = the indifference of description), the suite table, "What This Book Is NOT." |
| `index.md` | Supporting detail: Picture A vs Picture B (and that choosing between them is a cut), local inference, hierarchical decomposability. |
| `outline.md` | The three parts as three cuts; per-chapter cut notes; Ch 10 = "The Indifference of Description"; word targets; pedagogical sequencing. |
| `direction.md` | Format, tone, pedagogy, comparable works, diagrams (the cut as figure), the voice sample. |
| `grace.md` | The destination (the held cut); no-view-from-the-top grounded on the postulate; the symmetric-distribution resolution. |
| `landing.md` | Why the closing was hard and how (c) resolves it; the three directions reconciled into the held cut; the adequacy-doubt decision. |
| `apokatastasis.md` | The universalist moral spine; the refusal as a chosen orientation-cut; the crux-4 resolution. |
| `implications.md` | Each human concept (free will, death, love, self) re-derived as a cut. |
| `information_hazards.md` | Reader-harm analysis re-audited under (c): quantum-immortality demoted, groundlessness raised, with mitigations. |

Governing documents under `docs/superpowers/`: the design spec
(`specs/2026-06-20-the-library-respine-design.md`, the authoritative frame for the
re-foundation) and the lore-authoring plan (`plans/2026-06-20-lore-bible-authoring.md`).

---

## 5. Structure and status

Three parts, fifteen chapters, target ~20,000 to 25,000 words. Part I = The Index (Ch 1-5),
Part II = The System (Ch 6-10, capped by Ch 10 "The Indifference of Description"), Part III =
The Self (Ch 11-15, closing on the held cut: a header-less coda, address "Stay.", Camus's *must*
literal, the adequacy-doubt named).

**Status:** Phase A (the lore bible) is authored. Phase B (the manuscript port) is pending: copy
`../the-library/chapters/` here and apply the reframes in spec section 7 (title and metadata, the
spine line in Ch 2, the finitude guardrail in Ch 4-5, the (c) ontology and the dissolved moves in
Ch 6-9, the Ch 10 retitle, Ch 14 as the convergence, Ch 15 as the held cut, the two-to-three part
split), then port `kdp/`, the build files, and the citation metadata, then build and validate.

---

## 6. Build and conventions

The manuscript is not yet present in this directory (Phase B). When it lands it follows the
`literature/` conventions and the prior repo's build pattern (LaTeX, 6x9 `book` class, a `MAIN`
source `\include`-ing `chapters/NN_name.tex`, `make` producing the PDF and EPUB, a `kdp/`
pipeline). See `../the-library/CLAUDE.md` section 7 for the full build and prose conventions; read
it as reference only, since its identity sections describe the old subtitle.

**Prose and house-style rules (these apply to every file written here, including this one):**

- **No em-dashes.** Use commas, colons, semicolons, parentheses, or sentence breaks. (A write
  hook enforces this; it matches the em-dash codepoint, so even a `grep` example for it must use
  `\x{2014}`, not a literal em-dash.)
- **Math in math mode** (`$K(x)$`, `$\sum$`); no raw Unicode math; no CJK (romanize).
- **Figures are arguments, not decoration.** The recurring figure is the cut.
- **Voice:** second-person, plain, companionate, unflinching, never hype (the Worldlines voice);
  the care is present as tone from the preface, long before it is argued in Part III.
- **Discipline:** never claim the math supports more than it does (finitude is a consequence of
  Kraft; "no view from the top" follows from the postulate); never project emotional properties
  onto the structure; never console with what is not true; never engineer away what the framework
  permits; keep the moral spine in the structure, never in citations (no Origen, Hart, Gregory of
  Nyssa, the bodhisattva vow, Levinas; and under (c), no Nagarjuna, Pyrrho, or "emptiness").
- *Worldlines* is a **companion, not a prerequisite**: gloss any borrowed concept (block
  universe, worldline, the braid) inline.

This CLAUDE.md is the authoritative statement of what the book *is*; `HANDOFF.md` tracks where the
work *is*.
