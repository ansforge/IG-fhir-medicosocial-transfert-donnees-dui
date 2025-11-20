Instance: tddui-goal-attente-famille-pa-example
InstanceOf: TDDUIGoalAttente
Usage: #example
Description: "Exemple des attentes de la famille dans le cadre du projet personnalisé PA."

* identifier.value = "3480787529/123456789-PPAttente-1234"

* lifecycleStatus = #active

* note[origineAttente].text = "Famille"
* note[origineAttente].extension[TDDUIGoalNoteExtension].valueCode = #origineAttente

* subject = Reference(tddui-patient-pa-example-pp)

* description.text = "- Prévenir les chutes
- Stabiliser le poids et le plaisir alimentaire
- Maintenir le lien familial (visios)"

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-perso-pa-example)