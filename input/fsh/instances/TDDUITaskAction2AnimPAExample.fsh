Instance: tddui-task-action-2-anim-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 1 réalisée par l'animatrice dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-12341"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Atelier cuisine mensuel co‑animé avec résidents"

* owner.display = "Animatrice"

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action de l'animatrice pour atteindre l'objectif 2"

* input[objectif].valueReference = Reference(tddui-goal-objectif-2-pa-example)
