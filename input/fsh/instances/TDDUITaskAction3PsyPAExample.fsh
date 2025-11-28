Instance: tddui-task-action-3-psy-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 3 réalisée par le psychologue dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-1238"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Entretien de satisfaction semestriel"

* owner.display = "Psychologue"

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action du psychologue pour atteindre l'objectif 3"

* input[objectif].valueReference = Reference(tddui-goal-objectif-3-pa-example)
