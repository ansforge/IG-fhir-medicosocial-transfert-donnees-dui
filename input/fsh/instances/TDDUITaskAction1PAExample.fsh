Instance: tddui-task-action-1-pa-example
InstanceOf: TDDUITaskAction
Usage: #example
Description: "Exemple des actions de l'objectif 1 dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-PPAction-1234"

* description  = "
Ergothérapeute (Externe)
- Évaluation et aménagement chambre (éclairage, barres, tapis)
- Formation à l'utilisation des aides techniques

Kinésithérapeute (Externe)
- Programme équilibre/marche 2×/semaine 12 semaines
- Exercices matinaux (fiche)

IDE (Interne)
- Atelier éducation risque de chute
- Réévaluation traitements avec médecin coord.

AS (Interne)
- Vérification chaussures/aides techniques
- Accompagnement premiers déplacements

Psychologue (Interne) 
- Soutien à la gestion de l'appréhension  
"

* basedOn = Reference(tddui-careplan-projet-perso-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Actions pour atteindre l'objectif 1"

* input[objectif].valueReference = Reference(tddui-goal-objectif-1-pa-example)
