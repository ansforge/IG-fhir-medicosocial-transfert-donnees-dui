Instance: tddui-pp-ime-careplan-example
InstanceOf: TDDUICarePlanProjetPersonnalise
Usage: #example
Description: "Exemple du projet personnalisé d'un enfant en IME"

* identifier.value = "3480787529/123456-PPER-12"
* identifier.system = "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr"

* title = "Projet personnalisé de Hugo en IME"

* status = #active

* intent = #plan

* subject = Reference(tddui-pp-ime-patient-example)

* supportingInfo[accordStructure] = Reference(tddui-pp-ime-consent-accord-example)
* supportingInfo[accordStructure].display = "Consentement structure"