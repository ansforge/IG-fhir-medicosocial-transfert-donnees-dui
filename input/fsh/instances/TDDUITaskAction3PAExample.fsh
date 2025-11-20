Instance: tddui-task-action-3-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple des actions de l'objectif 3 dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-PPAction-123456"

* description  = "
•Animateur·trice (Interne)
- Inscription chorale et club lecture
- Organisation planning activités
AS / Référent·e projet (Interne)
- Mise en place visios hebdomadaires (tablette)
- Accompagnement ponctuel si fatigue
Psychologue (Interne)
- Entretien de satisfaction semestriel
"

* basedOn = Reference(tddui-careplan-projet-perso-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Actions pour atteindre l'objectif 3"

* input[objectif].valueReference = Reference(tddui-goal-objectif-3-pa-example)
