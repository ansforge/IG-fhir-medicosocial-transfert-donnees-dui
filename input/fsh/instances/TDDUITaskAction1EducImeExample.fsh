Instance: tddui-task-action-1-educ-ime-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 1 réalisée par l'éducateur spécialisé dans le cadre du projet personnalisé en IME." 

* identifier.value = "3480787529/123456-ACTI-1235"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Lecture guidée sur tablette 15 min/jour"

* owner.display = "AESH"

* basedOn = Reference(tddui-careplan-projet-personnalise-ime-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action de l'éducateur spécialisé pour atteindre l'objectif 2"
