Instance: tddui-goal-objectif-example
InstanceOf: TDDUIGoalObjectif
Usage: #example
Description: "Exemple des attentes de la famille dans le cadre du projet personnalisé."

* identifier.value = "3480787529/147720425367411-PPAttente-12549"

* lifecycleStatus = #active

* description.text = "L'objectif est d'améliorer l'autonomie de Mme Dupont dans les activités de la vie quotidienne."

* addresses = Reference(tddui-servicerequest-besoin-example)

* subject = Reference(tddui-patient-ins-example)

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-perso-example)

* note[titreObjectif].text = "Améliorer l'autonomie de Mme Dupont dans les activités de la vie quotidienne."
* note[titreObjectif].extension[TDDUIGoalNoteExtension].valueCode = #titreObjectif