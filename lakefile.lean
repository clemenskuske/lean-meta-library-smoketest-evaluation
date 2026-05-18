import Lake
open Lake DSL

package «smoke_import_evaluation» where
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "022e5828a80e427b66ca1c20f4841fff435fb18c"

require «smoke_import_paper» from git
  "https://github.com/clemenskuske/lean-meta-library-smoketest-paper.git" @ "59645ae044a133a2e301fe74fe1fc82debff9a66"

@[default_target]
lean_lib SmokeImportEvaluation where
  roots := #[`SmokeImportEvaluation.Internal]
