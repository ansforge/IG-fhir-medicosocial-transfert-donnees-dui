Instance: tddui-questionnaire-response-serafin-sans-precision-example
InstanceOf: TDDUIQuestionnaireResponse
Description: "Evaluation SERAFIN pour un besoin d'hébergement adapté sans précision"
Usage: #example

* identifier.value = "3480787529/147720425367411-EVAL-21564655"
* identifier.system = "https://identifiant-medicosocial-evaluation.esante.gouv.fr"

* questionnaire = "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-serafin"

* status = #completed
* subject = Reference(tddui-patient-ins-example)

* authored = "2023-04-06"

* source = Reference(tddui-practitioner-example)

* encounter = Reference(tddui-encounter-evenement-example)

* extension[TDDUIComment].valueString = "Cette évaluation fait suite à la demande de Madame Dupont pour organiser le suivi post-opératoire de son fils qu’elle ne peut pas gérer. L'objectif est de décrire le besoin de Monsieur Dupont de disposer d’une prestation d’hébergement pour une durée de 1 mois."

* item[0].linkId = "besoin-vivre-logement"
* item[=].answer.valueInteger = 30
* item[=].text = "Besoins pour vivre dans un logement"
