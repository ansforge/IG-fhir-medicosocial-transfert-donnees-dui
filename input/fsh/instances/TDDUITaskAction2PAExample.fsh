Instance: tddui-task-action-2-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple des actions de l'objectif 2 dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-PPAction-12345"

* description  = "
IDE (Interne)
- Pesée mensuelle et dépistage dénutrition
- Surveillance hydratation/appétit (transmissions)
Animateur·trice (Interne)
- Atelier cuisine mensuel co‑animé avec résidents
- Recueil préférences culinaires
Cuisine/économe (Interne)
- Menus enrichis adaptés aux goûts (textures, portions)
"

* basedOn = Reference(tddui-careplan-projet-perso-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Actions pour atteindre l'objectif 2"

* input[objectif].valueReference = Reference(tddui-goal-objectif-2-pa-example)
