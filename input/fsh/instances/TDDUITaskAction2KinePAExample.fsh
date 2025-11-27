Instance: tddui-task-action-2-kine-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 1 réalisée par le kinésithérapeute dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-12343"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Exercices matinaux (fiche)"

* owner.display = "Kinésithérapeute"

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action du kinésithérapeute pour atteindre l'objectif 1"

* input[objectif].valueReference = Reference(tddui-goal-objectif-1-pa-example)
