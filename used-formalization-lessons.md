# Used Formalization Lessons

## Target: smoke-import-paper v1a1

The first smoketest repo was useful as a tiny upstream paper dependency. Its
definition `sampleVertexSet`, cardinality theorem, finite-union monotonicity
theorem, and finite-sum theorem were enough to build downstream statements that
touch imported paper code and selected mathlib modules.

## What Worked

- The root import `SmokeImportPaper` was sufficient for downstream Lean code.
- The upstream repo's small, explicit mathlib imports made dependency behavior
  easy to reason about.
- The exported theorem shapes were stable enough to reuse directly in short
  downstream proofs.
- The mix of a definition, computational cardinality theorem, subset theorem,
  and big-operator theorem gave the second repo enough variety to test metadata
  and theorem-list generation.

## Friction

- The upstream `source_commit` placeholder is expected before publication, but
  downstream feedback should still mention the actual pinned commit used by this
  repo.
- Reuse feedback targets the meta-library surface module
  `MetaLibrary.Papers.SmokeImportPaper.v1a1.Surface`, while the local paper repo
  imports the upstream package module `SmokeImportPaper`. That distinction should
  stay explicit in future documentation.

## Recommendation For Future Agents

Use `smoke-import-paper/v1a1` as a dependency smoke test rather than as a source
of serious graph theory. It is best for checking Lake/GitHub dependency
resolution, import surfaces, alias-only exports, and downstream feedback
plumbing.
