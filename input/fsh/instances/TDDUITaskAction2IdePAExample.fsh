Instance: tddui-task-action-2-ide-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 1 réalisée par l'IDE dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-12342"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Réévaluer les traitements avec médecin coord"

* owner = Reference(tddui-practitioner-ide-pp-example)

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action de l'IDE pour atteindre l'objectif 1"

* input[objectif].valueReference = Reference(tddui-goal-objectif-1-pa-example)
