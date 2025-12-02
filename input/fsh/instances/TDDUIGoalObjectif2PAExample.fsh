Instance: tddui-pp-pa-goal-objectif-2-example
InstanceOf: TDDUIGoalObjectif
Usage: #example
Description: "Exemple d'un objectif dans le cadre du projet personnalisé PA."

* identifier.value = "3480787529/123456789-OBJE-1235"
* identifier.system = "https://identifiant-medicosocial-objectif.esante.gouv.fr"

* lifecycleStatus = #active

* description.text = "Stabiliser l'état nutritionnel et restaurer le plaisir alimentaire sur 12 mois."

* addresses = Reference(tddui-pp-pa-servicerequest-besoin-2-example)

* subject = Reference(tddui-pp-pa-patient-example-pp)

* extension[referenceProjetPerso].valueReference = Reference(tddui-pp-pa-careplan-example)

* note[titreObjectif].text = "Objectif 2"
* note[titreObjectif].extension[TDDUIGoalNoteExtension].valueCode = #titreObjectif