Instance: test-invariant-porteur-non
InstanceOf: TDDUIQuestionnaireResponse
Title: "Test invariant porteur - KO"
Description: "Exemple INVALIDE : auto-évaluation sans porteur"
Usage: #example
* identifier.value = "3480787529/111222333-EVAL-9999"
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"
* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-pa-ssiad"
* status = #in-progress
* subject = Reference(tddui-pp-pa-patient-example-pp)
* source = Reference(tddui-pp-pa-patient-example-pp)
* item.linkId = "resultat-eval"
* item.text = "Résultat évaluation"
* item.answer.valueCoding = $terminologie-cisis#MED-341 "GIR-3"