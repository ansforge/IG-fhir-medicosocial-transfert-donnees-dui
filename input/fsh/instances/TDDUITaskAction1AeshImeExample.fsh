Instance: tddui-task-action-1-aesh-ime-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple d'une action de l'objectif 1 réalisée par l'AESH dans le cadre du projet personnalisé en IME." 

* identifier.value = "3480787529/123456-ACTI-1234"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Vérification port du casque"

* owner.display = "AESH"

* basedOn = Reference(tddui-careplan-projet-personnalise-ime-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action de l'AS pour atteindre l'objectif 1"
