Instance: tddui-pp-pa-task-moyen-ressource-kine-1-example
InstanceOf: TDDUITaskMoyenRessource
Usage: #example
Description: "Exemple des moyens et ressources de l'objectif 1 dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-MORE-1235"
* identifier.system = "https://identifiant-medicosocial-moyenressource.esante.gouv.fr"

* description  = "30 h de kinésithérapie/6 mois"

* basedOn = Reference(tddui-pp-pa-careplan-example)

* partOf = Reference(tddui-pp-pa-task-action-1-kine-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Moyens mis en œuvre pour l'objectif 1(avec rattachement SERAFIN‑PH)"
