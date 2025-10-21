Instance: tddui-questionnaire-response-situation-ssiad-example
InstanceOf: TDDUIQuestionnaireResponse
Description: "Grille de réponse de la situation SSIAD"
Usage: #example

* identifier.value = "3480787529/147720425367411-EVAL-21564655"
* identifier.system = "https://identifiant-medicosocial-evaluation.cnsa.fr"

* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-situation-ssiad"

* status = #completed
* subject = Reference(tddui-patient-ins-example)

* authored = "2023-04-06"

* source = Reference(tddui-practitioner-example)

* encounter = Reference(tddui-encounter-evenement-example)

* item[0].linkId = "incontinence"
* item[=].text = "Incontinence urinaire, sans précision"
* item[=].answer.valueBoolean = false
* item[+].linkId = "incontinence-fec"
* item[=].text = "Incontinence des matières fécales"
* item[=].answer.valueBoolean = false
* item[+].linkId = "obesite"
* item[=].text = "Obésité, sans précision"
* item[=].answer.valueBoolean = false
* item[+].linkId = "trouble-cognitif"
* item[=].text = "Trouble cognitif léger"
* item[=].answer.valueBoolean = true
* item[+].linkId = "trouble-personnalite"
* item[=].text = "Trouble de la personnalité et du comportement chez l'adulte, sans précision"
* item[=].answer.valueBoolean = false
* item[+].linkId = "soins-ide"
* item[=].text = "Soins IDE pour escarres et autres plaies chroniques"
* item[=].answer.valueBoolean = false
* item[+].linkId = "prise-charge-ide"
* item[=].text = "Prise en charge IDE du diabète insulinotraité"
* item[=].answer.valueBoolean = false
