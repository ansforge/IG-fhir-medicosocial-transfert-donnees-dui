Instance: tddui-careplan-projet-perso-pa-example
InstanceOf: TDDUICarePlanProjetPersonalise
Usage: #example
Description: "Exemple d'un projet personnalisé PA"

* identifier.value = "3480787529/123456789-PPER-1234"

* title = "Projet personnalisé de Mme Jeanne L."

* status = #active

* intent = #plan

* subject = Reference(tddui-patient-pa-example-pp)

* supportingInfo[structure] = Reference(tddui-consent-accord-example)
* supportingInfo[structure].display = "Consentement structure"