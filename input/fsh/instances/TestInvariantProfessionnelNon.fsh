Instance: test-invariant-professionnel-non
InstanceOf: TDDUIQuestionnaireResponse
Title: "Test invariant Professionnel Non - KO"
Description: "Exemple INVALIDE : ni source Practitioner, ni author, ni participant"
Usage: #example
* identifier.value = "3480787529/666777888-EVAL-ERROR"
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"
* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-aggir-pa-ssiad"
* status = #completed
* subject = Reference(tddui-pp-pa-patient-example-pp)
* item.linkId = "resultat-eval"
* item.text = "Résultat évaluation"
* item.answer.valueCoding = $terminologie-cisis#MED-341 "GIR-3"