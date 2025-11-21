Instance: tddui-task-action-2-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple des actions de l'objectif 2 dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-ACTI-12345"
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"

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

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Actions pour atteindre l'objectif 2"

* input[objectif].valueReference = Reference(tddui-goal-objectif-2-pa-example)
