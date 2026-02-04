Instance: tddui-pp-pa-goal-attente-usager-example
InstanceOf: TDDUIGoalAttente
Title: "TDDUI PP PA Goal Attente Usager Example"
Description: "Exemple des attentes de l'usager dans le cadre du projet personnalisé PA."
Usage: #example

* identifier.value = "3480787529/123456789-ATTE-1235"
* identifier.system = "https://identifiant-medicosocial-attente.esante.gouv.fr"

* lifecycleStatus = #active

* note[origineAttente].text = "Usager"
* note[origineAttente].extension[TDDUIDiscriminator].valueCodeableConcept.coding.code = #origineAttente

* subject = Reference(tddui-pp-pa-patient-example-pp)

* description.text = "- Garder la main sur l'organisation de ses journées 
- Participer à une chorale et à un club lecture
- Se sentir en sécurité lors des déplacements"

* extension[referenceProjetPerso].valueReference = Reference(tddui-pp-pa-careplan-example)