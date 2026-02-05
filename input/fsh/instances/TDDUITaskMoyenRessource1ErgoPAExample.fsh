Instance: tddui-pp-pa-task-moyen-ressource-ergo-1-example
InstanceOf: TDDUITaskMoyenRessource
Title: "TDDUI PP PA Task Moyen Ressource Ergo 1 Example"
Description: "Exemple des moyens et ressources de l'objectif 1 dans le cadre du projet personnalisé PA." 
Usage: #example

* identifier.value = "3480787529/123456789-MORE-1234"
* identifier.system = "https://identifiant-medicosocial-moyenressource.esante.gouv.fr"

* description  = "Barres d'appui et balisage lumineux (budget EHPAD)"

* basedOn = Reference(tddui-pp-pa-careplan-example)

* partOf = Reference(tddui-pp-pa-task-action-1-ergo-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Moyens mis en œuvre pour l'objectif 1 (avec rattachement SERAFIN‑PH)"
