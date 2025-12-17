Instance: tddui-pp-pa-task-action-1-kine-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 1 réalisée par le kinésithérapeute dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-1237"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Programme équilibre/marche 2×/semaine 12 semaines"

* owner.display = "Kinésithérapeute"

* basedOn = Reference(tddui-pp-ime-careplan-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action du kinésithérapeute pour atteindre l'objectif 1"

* input[objectif].valueReference = Reference(tddui-pp-pa-goal-objectif-1-example)
