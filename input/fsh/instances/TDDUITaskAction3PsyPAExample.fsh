Instance: tddui-pp-pa-task-action-3-psy-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 3 réalisée par le psychologue dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-1238"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Entretien de satisfaction semestriel"

* owner.display = "Psychologue"

* basedOn = Reference(tddui-pp-ime-careplan-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action du psychologue pour atteindre l'objectif 3"

* input[objectif].valueReference = Reference(tddui-pp-pa-goal-objectif-3-example)
