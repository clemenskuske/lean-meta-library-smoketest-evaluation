# Hard-Earned Lessons

## Pin Both The Upstream Paper And Mathlib

This repo deliberately pins the first smoketest paper by commit and pins mathlib
to the same commit used by that repo's manifest. That keeps the dependency graph
small and predictable while still exercising the GitHub-package import path.

## Keep The Evaluation Theorems Thin

The useful test is not a large new mathematics development. The exported results
show that downstream code can import definitions and theorems from the earlier
paper, combine them with selected mathlib modules, and expose a clean alias-only
surface for the meta-library.

## Separate New Lessons From Reuse Feedback

The lessons in this file describe this repository's own design choices. The
feedback about `smoke-import-paper/v1a1` lives in `used-formalizations.json` and
`used-formalization-lessons.md`, because the importer merges those files into
the older version's downstream feedback.

## Missing Results

No blocking mathematical result was missing. The main practical lesson is that a
synthetic upstream paper is most useful to downstream tests when its exported
names cover definitions and theorems, not only final theorem statements.
