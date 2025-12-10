Instance: tddui-pp-pa-goal-objectif-3-example
InstanceOf: TDDUIGoalObjectif
Usage: #example
Description: "Exemple d'un objectif dans le cadre du projet personnalisé PA."

* identifier.value = "3480787529/123456789-OBJE-1236"
* identifier.system = "https://identifiant-medicosocial-objectif.esante.gouv.fr"

* lifecycleStatus = #active

* description.text = "Maintenir le lien social."

* addresses = Reference(tddui-pp-pa-servicerequest-besoin-3-example)

* subject = Reference(tddui-pp-pa-patient-example-pp)

* extension[referenceProjetPerso].valueReference = Reference(tddui-pp-pa-careplan-example)

* note[titreObjectif].text = "Objectif 3"
* note[titreObjectif].extension[TDDUIDiscriminator].valueCodeableConcept.coding.code = #titreObjectif
