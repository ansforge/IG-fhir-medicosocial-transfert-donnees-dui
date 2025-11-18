Instance: tddui-goal-attente-famille-example
InstanceOf: TDDUIGoalAttente
Usage: #example
Description: "Exemple des attentes de la famille dans le cadre du projet personnalisé."

* identifier.value = "3480787529/147720425367411-PPAttente-12549"

* lifecycleStatus = #active

* expressedBy = Reference(fr-core-related-person-example)

* subject = Reference(tddui-patient-ins-example)

* description.text = "- Prévenir les chutes
- Stabiliser le poids et le plaisir alimentaire
- Maintenir le lien familial (visios)"

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-perso-example)