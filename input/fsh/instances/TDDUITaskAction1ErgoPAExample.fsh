Instance: tddui-task-action-1-ergo-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 1 réalisée par l'ergothérapeute dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-1235"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Évaluer et aménagr la chambre (éclairage, barres, tapis)"

* owner.display = "Ergothérapeute"

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action de l'ergothérapeute pour atteindre l'objectif 1"

* input[objectif].valueReference = Reference(tddui-goal-objectif-1-pa-example)
