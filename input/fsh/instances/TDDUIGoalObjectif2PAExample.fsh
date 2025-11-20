Instance: tddui-goal-objectif-2-pa-example
InstanceOf: TDDUIGoalObjectif
Usage: #example
Description: "Exemple d'un objectif dans le cadre du projet personnalisé PA."

* identifier.value = "3480787529/123456789-PPObjectif-12345"

* lifecycleStatus = #active

* description.text = "Stabiliser l'état nutritionnel et restaurer le plaisir alimentaire sur 12 mois."

* addresses = Reference(tddui-servicerequest-besoin-pa-example)

* subject = Reference(tddui-patient-pa-example-pp)

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-perso-pa-example)

* note[titreObjectif].text = "Objectif 2"
* note[titreObjectif].extension[TDDUIGoalNoteExtension].valueCode = #titreObjectif