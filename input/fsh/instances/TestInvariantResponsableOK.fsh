Instance: test-invariant-responsable-ok
InstanceOf: TDDUIQuestionnaireResponse
Title: "Test invariant responsable - OK"
Description: "Exemple d'évaluation avec responsable dans les participants"
Usage: #example
* identifier.value = "3480787529/333444555-EVAL-2026"
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"
* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-pa-ssiad"
* status = #in-progress
* subject = Reference(tddui-pp-pa-patient-example-pp)
* extension[TDDUIQRParticipant].extension[TDDUIResponsible].valueReference = Reference(tddui-pp-pa-practitioner-ide-example)
* item.linkId = "resultat-eval"
* item.text = "Résultat évaluation"
* item.answer.valueCoding = $terminologie-cisis#MED-341 "GIR-3"