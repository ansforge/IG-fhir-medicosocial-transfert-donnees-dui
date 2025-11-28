Instance: tddui-goal-objectif-3-pa-example
InstanceOf: TDDUIGoalObjectif
Usage: #example
Description: "Exemple d'un objectif dans le cadre du projet personnalisé PA."

* identifier.value = "3480787529/123456789-OBJE-1236"
* identifier.system = "https://identifiant-medicosocial-objectif.esante.gouv.fr"

* lifecycleStatus = #active

* description.text = "Maintenir le lien social."

* addresses = Reference(tddui-servicerequest-besoin-3-pa-example)

* subject = Reference(tddui-patient-pa-example-pp)

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-personnalise-pa-example)

* note[titreObjectif].text = "Objectif 3"
* note[titreObjectif].extension[TDDUIGoalNoteExtension].valueCode = #titreObjectif