Instance: tddui-pp-pa-goal-attente-famille-example
InstanceOf: TDDUIGoalAttente
Usage: #example
Description: "Exemple des attentes de la famille dans le cadre du projet personnalisé PA."

* identifier.value = "3480787529/123456789-ATTE-1234"
* identifier.system = "https://identifiant-medicosocial-attente.esante.gouv.fr"

* lifecycleStatus = #active

* note[origineAttente].text = "Famille"
* note[origineAttente].extension[TDDUIGoalNoteExtension].valueCode = #origineAttente

* subject = Reference(tddui-pp-pa-patient-example-pp)

* description.text = "- Prévenir les chutes
- Stabiliser le poids et le plaisir alimentaire
- Maintenir le lien familial (visios)"

* extension[referenceProjetPerso].valueReference = Reference(tddui-pp-pa-careplan-example)