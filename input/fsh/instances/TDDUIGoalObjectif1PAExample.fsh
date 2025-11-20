Instance: tddui-goal-objectif-1-pa-example
InstanceOf: TDDUIGoalObjectif
Usage: #example
Description: "Exemple d'un objectif dans le cadre du projet personnalisé PA."

* identifier.value = "3480787529/123456789-PPObjectif-1234"

* lifecycleStatus = #active

* description.text = "Réduire le risque de chute et la peur associée en 6 mois."

* addresses = Reference(tddui-servicerequest-besoin-pa-example)

* subject = Reference(tddui-patient-pa-example-pp)

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-perso-pa-example)

* note[titreObjectif].text = "Objectif 1"
* note[titreObjectif].extension[TDDUIGoalNoteExtension].valueCode = #titreObjectif