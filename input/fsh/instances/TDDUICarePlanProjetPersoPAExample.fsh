Instance: tddui-pp-pa-careplan-example
InstanceOf: TDDUICarePlanProjetPersonnalise
Usage: #example
Title: "tddui-pp-pa-careplan-example"
Description: "Exemple d'un projet personnalisé PA"

* identifier.value = "3480787529/123456789-PPER-1234"
* identifier.system = "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr"

* extension[entrantProjetPerso].valueReference = Reference(tddui-pp-pa-documentreference-entrant-example)

* title = "Projet personnalisé de Mme Jeanne L."

* status = #active

* intent = #plan

* subject = Reference(tddui-pp-pa-patient-example-pp)

* supportingInfo[accordStructure] = Reference(tddui-pp-pa-consent-accord-example)
* supportingInfo[accordStructure].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminatorCS#accordStructure
