Instance: tddui-pp-pa-questionnaire-response-aggir-pa-example
InstanceOf: TDDUIQuestionnaireResponse
Description: "Grille de réponse AGGIR PA"
Usage: #example

* identifier.value = "3480787529/123456789-EVAL-1234"
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"

* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-pa-ssiad"

* status = #completed
* subject = Reference(tddui-pp-pa-patient-example-pp)

* item.linkId = "resultat-eval"
* item.text = "Résultat évaluation"
* item.answer.valueCoding = $terminologie-cisis#MED-341 "GIR-3"
