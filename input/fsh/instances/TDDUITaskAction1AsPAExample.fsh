Instance: tddui-task-action-1-as-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 1 réalisée par l'AS dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-1234"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Vérifier les chaussures/aides techniques"

* owner.display = "AS"

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action de l'AS pour atteindre l'objectif 1"

* input[objectif].valueReference = Reference(tddui-goal-objectif-1-pa-example)
