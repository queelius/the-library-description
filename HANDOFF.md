# HANDOFF: the-library-description

Working state and orientation for this directory. Read this first.

## What this is

The re-founded **Volume III** of the "Indifference of" suite:
**\*The Library: The Indifference of Description\*** by Alex Towell. Subject: algorithmic
information theory (Bayes, Kraft, Solomonoff), read all the way down to a single claim:
**there are no joints, only the cuts you make.**

## Critical: relationship to `../the-library`

This directory was started so the new lore would not be a confused mix of old and new
identity. The rule:

- **`../the-library/` is a READ-ONLY REFERENCE. Do not edit it.** It holds the prior draft
  of this book under its old subtitle, *The Indifference of Enumeration*, with the old
  "two labeled moves + cascade" framing. It is kept intact on purpose.
- **All new content is authored here, fresh**, deriving from the old lore and manuscript as
  *source material*, not by editing them in place. When you need the old argument, read
  `../the-library/lore/` and `../the-library/chapters/`; then write the new version here.

## The governing document

`docs/superpowers/specs/2026-06-20-the-library-respine-design.md` is the authoritative frame
for everything in this directory. It records the seven foundational decisions of the
re-foundation, the reconceived spine, how it resolves the five cruxes that motivated the
rethink, the relativism guardrail, and the per-document propagation plan. When this HANDOFF
and the spec disagree, the spec wins; when the spec and any future lore disagree, fix the
lore.

## The spine, in one line

> There are no joints. There are only the cuts you make.

The one move (cutting / local compression) at three depths, which are the three Parts:
**The Index** (cut to predict), **The System** (cut to have a world), **The Self** (cut to be
someone, and to care). The reasoning skeleton is bedrock (settled math) to the postulate
("no cut is privileged") to finitude (finite cutters are forced toward cheap cuts; a
consequence of Kraft, not a theorem) to consequences. The landing is the *held cut*: warmth
between cuts, the book itself the holding performed.

## State (2026-06-21)

The re-foundation is complete and on `main`:
- **Lore bible:** authored (`lore/`; `foundations.md` is canonical).
- **Manuscript:** ported from `../the-library/chapters/` and reframed onto the new spine; all
  15 chapters, three parts (The Index / The System / The Self).
- **Reviewed:** a five-agent audit for relics, undefined terms, and inconsistencies; all
  findings fixed (see the `review:` commits).
- **Typography:** warm print design on Libertinus (font + matched math, old-style figures,
  quiet small-caps chapter/part openers, polished title page). Print PDF only; EPUB unaffected.
- **Build:** `make` -> `the-library.pdf` (116 pages); `make epub` -> `the-library.epub`
  (passes `epubcheck`).

**Done since (2026-06-22):**
- **Cover:** regenerated for the *Description* subtitle. The subtitle line was re-set in place
  (EB Garamond caps matched to the title; the corridor/braid art is untouched), so only the
  one stale word changed. Passes `kdp_validate_cover` (1600x2560, ratio 1.6, sRGB JPEG); the
  EPUB embeds it. Stale *Enumeration* comment headers in `kdp/kindle.css` and
  `kdp/epub-filter.lua` were fixed too.
- **Repo:** pushed. Public at `queelius/the-library-description`; `main` tracks `origin/main`.

**Remaining work (one item, non-blocking):**
- **Release / DOI:** `CITATION.cff` and `.zenodo.json` point at the new repo and carry no
  stale DOI, so the metadata is primed. Minting needs the Zenodo GitHub webhook enabled for
  the repo (a one-time manual toggle at `zenodo.org/account/settings/github`), after which a
  GitHub Release triggers the DOI. Note: Zenodo only archives releases created *after* it is
  enabled, so enable it first, then cut the release.

Governing docs: `docs/superpowers/specs/` (the re-foundation spec and the typography design)
and `docs/superpowers/plans/` (the lore-bible and manuscript-port plans).

## Conventions

House style carries over from the old repo unchanged: **no em-dashes**; math in math mode
(no raw Unicode math); no CJK; figures as arguments, not decoration; second-person, plain,
companionate voice; *Worldlines* is a companion, not a prerequisite. This directory has its
own `CLAUDE.md` (the governing identity and conventions); read it first. The old
`../the-library/CLAUDE.md` is reference only (its identity sections describe the *old*
subtitle). Print typography decisions are recorded in
`docs/superpowers/specs/2026-06-21-typography-design.md`.
