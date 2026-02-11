Instance: test-invariant-evaluateur-ok
InstanceOf: TDDUIQuestionnaireResponse
Title: "Test invariant évaluateur - OK"
Description: "Exemple d'évaluation par un professionnel (source = Practitioner)"
Usage: #example
* identifier.value = "3480787529/444555666-EVAL-2024"
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"
* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-ph-ssiad"
* status = #completed
* subject = Reference(tddui-pp-pa-patient-example-pp)
* source = Reference(tddui-pp-pa-practitioner-ide-example)
* item.linkId = "resultat-eval"
* item.text = "Résultat évaluation"
* item.answer.valueCoding = $terminologie-cisis#MED-341 "GIR-3"