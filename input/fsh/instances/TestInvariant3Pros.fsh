Instance: test-invariant-3-pro-eval-valid
InstanceOf: TDDUIQuestionnaireResponse
Title: "Test invariant 3 professionnels - OK"
Description: "Exemple d'évaluation avec les trois rôles professionnels renseignés"
Usage: #example
* identifier.value = "3480787529/999000111-EVAL-2027"
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"
* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-pa-ssiad"
* status = #completed
* subject = Reference(tddui-pp-pa-patient-example-pp)
* source = Reference(tddui-pp-pa-practitioner-ide-example)
* author = Reference(tddui-pp-pa-practitioner-ide-example)
* extension[TDDUIQRParticipant].extension[TDDUIResponsible].valueReference = Reference(tddui-pp-pa-practitioner-ide-example)
* item.linkId = "resultat-eval"
* item.text = "Résultat évaluation"
* item.answer.valueCoding = $terminologie-cisis#MED-341 "GIR-3"