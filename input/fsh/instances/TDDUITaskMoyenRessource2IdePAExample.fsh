Instance: tddui-task-moyen-ressource-ide-2-pa-example
InstanceOf: TDDUITaskMoyenRessource
Usage: #example
Description: "Exemple des moyens et ressources de l'objectif 2 dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-MORE-1236"
* identifier.system = "https://identifiant-medicosocial-moyenressource.esante.gouv.fr"

* description  = "Carnet de suivi poids"

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* partOf = Reference(tddui-task-action-2-ide-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Moyens mis en œuvre pour l'objectif 2(avec rattachement SERAFIN‑PH)"
