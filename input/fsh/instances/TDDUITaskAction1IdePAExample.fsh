Instance: tddui-pp-pa-task-action-1-ide-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 1 réalisée par l'IDE dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-1236"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Atelier éducation risque de chute"

* owner = Reference(tddui-pp-pa-practitioner-ide-example)

* basedOn = Reference(tddui-pp-ime-careplan-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action de l'IDE pour atteindre l'objectif 1"

* input[objectif].valueReference = Reference(tddui-pp-pa-goal-objectif-1-example)
