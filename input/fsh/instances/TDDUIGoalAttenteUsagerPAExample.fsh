Instance: tddui-goal-attente-usager-pa-example
InstanceOf: TDDUIGoalAttente
Usage: #example
Description: "Exemple des attentes de l'usager dans le cadre du projet personnalisé PA."

* identifier.value = "3480787529/123456789-PPAttente-1234"

* lifecycleStatus = #active

* note[origineAttente].text = "Famille"
* note[origineAttente].extension[TDDUIGoalNoteExtension].valueCode = #origineAttente

* subject = Reference(tddui-patient-pa-example-pp)

* description.text = "- Garder la main sur l'organisation de ses journées 
- Participer à une chorale et à un club lecture
- Se sentir en sécurité lors des déplacements"

* extension[referenceProjetPerso].valueReference = Reference(tddui-careplan-projet-perso-pa-example)