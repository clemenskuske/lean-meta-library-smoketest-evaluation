import SmokeImportEvaluation

namespace MetaLibrary.SmokeImportEvaluation

def importedSampleCard := SmokeImportEvaluation.Internal.importedSampleCard

theorem importedSampleCard_eq_three : importedSampleCard = 3 :=
  SmokeImportEvaluation.Internal.importedSampleCard_eq_three

theorem imported_union_right_self (right : Finset (Fin 5)) :
    SmokeImportPaper.Internal.sampleVertexSet ∪ right ⊆
      SmokeImportPaper.Internal.sampleVertexSet ∪ right :=
  SmokeImportEvaluation.Internal.imported_union_right_self right

theorem imported_sum_range_double_card :
    (Finset.range importedSampleCard).sum (fun k => 2 * k) =
      2 * (Finset.range importedSampleCard).sum id :=
  SmokeImportEvaluation.Internal.imported_sum_range_double_card

theorem imported_doubled_card_sum_eq_six :
    (Finset.range importedSampleCard).sum (fun k => 2 * k) = 6 :=
  SmokeImportEvaluation.Internal.imported_doubled_card_sum_eq_six

end MetaLibrary.SmokeImportEvaluation
