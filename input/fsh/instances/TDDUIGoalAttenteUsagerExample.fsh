Instance: tddui-goal-attente-usager-example
InstanceOf: TDDUIGoalAttente
Usage: #example
Description: "Exemple des attentes de l'usager dans le cadre du projet personnalisé."

* identifier.value = "3480787529/147720425367411-PPAttente-12548"

* lifecycleStatus = #active

* expressedBy = Reference(tddui-patient-ins-example)

* subject = Reference(tddui-patient-ins-example)

* description.text = "- Garder la main sur l'organisation de ses journées 
- Participer à une chorale et à un club lecture
- Se sentir en sécurité lors des déplacements"

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-perso-example)