# Lean Meta-library Smoke-Test Evaluation Paper

> Synthetic fixture, not a model mathematical contribution. Use this repository
> to test downstream reuse, feedback ingestion, and commands; do not copy its
> theorem scope or proof style as guidance for a real paper formalization.

This is a second synthetic public paper repository for testing the
`clemenskuske/lean-meta-library` import workflow.

It intentionally depends on the first smoketest paper repository and on selected
mathlib modules. The repo exercises two import-system paths:

- importing a different paper package from GitHub;
- submitting structured reuse feedback and downstream lessons about an older
  paper version.

## Dependency Under Evaluation

The repository depends on:

- `clemenskuske/lean-meta-library-smoketest-paper` at commit
  `59645ae044a133a2e301fe74fe1fc82debff9a66`;
- `leanprover-community/mathlib4` at commit
  `022e5828a80e427b66ca1c20f4841fff435fb18c`.

## Local Checks

```bash
lake update
lake build
lake env lean Surface.lean
```

From the main meta-library repository:

```bash
npm run check:submission -- \
  --repo /path/to/lean-meta-library-smoketest-evaluation \
  --metadata metadata-meta-library.yaml \
  --surface Surface.lean
```

The metadata `source_commit` and reuse-feedback `reporting_source_commit` fields
are syntactic placeholders because a commit cannot contain its own hash. For a
real import submission, use the exact pinned GitHub commit selected by the import
UI or `git rev-parse HEAD`.
