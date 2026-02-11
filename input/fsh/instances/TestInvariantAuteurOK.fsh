Instance: test-invariant-auteur-ok
InstanceOf: TDDUIQuestionnaireResponse
Title: "Test invariant auteur - OK"
Description: "Exemple d'évaluation avec auteur renseigné"
Usage: #example
* identifier.value = "3480787529/777888999-EVAL-2025"
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"
* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-pa-ssiad"
* status = #amended
* subject = Reference(tddui-pp-pa-patient-example-pp)
* author = Reference(tddui-pp-pa-practitioner-ide-example)
* item.linkId = "resultat-eval"
* item.text = "Résultat évaluation"
* item.answer.valueCoding = $terminologie-cisis#MED-341 "GIR-3"