Instance: tddui-careplan-projet-personnalise-pa-example
InstanceOf: TDDUICarePlanProjetPersonnalise
Usage: #example
Description: "Exemple d'un projet personnalisé PA"

* identifier.value = "3480787529/123456789-PPER-1234"
* identifier.system = "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr"

* extension[entrantProjetPerso].valueReference = Reference(entrant-projet-personnalise-pa-example-pp)

* title = "Projet personnalisé de Mme Jeanne L."

* status = #active

* intent = #plan

* subject = Reference(tddui-patient-pa-example-pp)

* supportingInfo[accordStructure] = Reference(tddui-consent-accord-example)
* supportingInfo[accordStructure].display = "Consentement structure"