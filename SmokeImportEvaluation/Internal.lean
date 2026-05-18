import SmokeImportPaper.Internal
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Finset.Range

namespace SmokeImportEvaluation.Internal

open scoped BigOperators

def importedSampleCard : Nat :=
  SmokeImportPaper.Internal.sampleVertexSet.card

theorem importedSampleCard_eq_three : importedSampleCard = 3 := by
  unfold importedSampleCard
  decide

theorem imported_union_right_self (right : Finset (Fin 5)) :
    SmokeImportPaper.Internal.sampleVertexSet ∪ right ⊆
      SmokeImportPaper.Internal.sampleVertexSet ∪ right :=
  SmokeImportPaper.Internal.union_subset_union_right (by
    intro vertex hvertex
    exact hvertex)

theorem imported_sum_range_double_card :
    (Finset.range importedSampleCard).sum (fun k => 2 * k) =
      2 * (Finset.range importedSampleCard).sum id := by
  unfold importedSampleCard
  exact SmokeImportPaper.Internal.sum_range_double
    SmokeImportPaper.Internal.sampleVertexSet.card

theorem imported_doubled_card_sum_eq_six :
    (Finset.range importedSampleCard).sum (fun k => 2 * k) = 6 := by
  rw [imported_sum_range_double_card, importedSampleCard_eq_three]
  decide

end SmokeImportEvaluation.Internal
