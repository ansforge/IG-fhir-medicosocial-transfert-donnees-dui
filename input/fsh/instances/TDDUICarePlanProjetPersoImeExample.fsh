Instance: tddui-pp-ime-careplan-example
InstanceOf: TDDUICarePlanProjetPersonnalise
Title: "TDDUI PP IME CarePlan Example"
Description: "Exemple du projet personnalisé d'un enfant en IME"
Usage: #example

* identifier.value = "3480787529/123456-PPER-12"
* identifier.system = "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr"

* title = "Projet personnalisé de Hugo en IME"

* status = #active

* intent = #plan

* subject = Reference(tddui-pp-ime-patient-example)

* supportingInfo[accordStructure] = Reference(tddui-pp-ime-consent-accord-example)
* supportingInfo[accordStructure].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminator#accordStructure
