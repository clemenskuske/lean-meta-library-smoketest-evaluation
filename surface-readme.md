# Synthetic Smoke-Test Evaluation Paper

## Import

```lean
import MetaLibrary.Papers.SmokeImportEvaluation.v1a1.Surface
```

## Exported Items

| Paper item | Stable Lean name | Source Lean name | Notes |
| --- | --- | --- | --- |
| Definition 2.1 | `MetaLibrary.SmokeImportEvaluation.importedSampleCard` | `SmokeImportEvaluation.Internal.importedSampleCard` | Cardinality value imported from the first smoketest paper. |
| Lemma 2.2 | `MetaLibrary.SmokeImportEvaluation.importedSampleCard_eq_three` | `SmokeImportEvaluation.Internal.importedSampleCard_eq_three` | Reuses the upstream cardinality theorem. |
| Lemma 2.3 | `MetaLibrary.SmokeImportEvaluation.imported_union_right_self` | `SmokeImportEvaluation.Internal.imported_union_right_self` | Reuses the upstream finite-union monotonicity theorem. |
| Lemma 2.4 | `MetaLibrary.SmokeImportEvaluation.imported_sum_range_double_card` | `SmokeImportEvaluation.Internal.imported_sum_range_double_card` | Reuses the upstream finite-sum theorem at the imported cardinality. |
| Lemma 2.5 | `MetaLibrary.SmokeImportEvaluation.imported_doubled_card_sum_eq_six` | `SmokeImportEvaluation.Internal.imported_doubled_card_sum_eq_six` | Combines the imported cardinality with a selected mathlib finite-sum computation. |

This repository is a synthetic fixture for checking that a second paper repo can
use an earlier paper repo and submit downstream reuse feedback.
