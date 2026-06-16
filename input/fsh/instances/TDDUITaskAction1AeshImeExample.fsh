Instance: tddui-pp-ime-task-action-1-aesh-example
InstanceOf: TDDUITaskAction
Title: "TDDUI PP IME Task Action 1 AESH Example"
Description: "Exemple d'une action de l'objectif 1 réalisée par l'AESH dans le cadre du projet personnalisé en IME." 
Usage: #example

* identifier.value = "3480787529/123456-ACTI-1234"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

* description  = "Vérification port du casque"

* owner.display = "AESH"

* basedOn = Reference(tddui-pp-ime-careplan-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Action de l'AS pour atteindre l'objectif 1"
