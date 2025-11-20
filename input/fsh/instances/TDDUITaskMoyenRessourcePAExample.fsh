Instance: tddui-task-moyen-ressource-pa-example
InstanceOf: TDDUITaskMoyenRessource
Usage: #example
Description: "Exemple des moyens et ressources dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-PPMoyenRessource-1234"

* description  = "
Objectif 1 :
- Barres d'appui et balisage lumineux (budget EHPAD)
- 30 h de kinésithérapie/6 mois
- Temps de coordination IDE/médecin coordonnateur

Obejctif 2 :
- Approvisionnement adapté (cuisine)
- Matériel d'atelier (budget animation)
- Carnet de suivi poids

Objectif 3 :
- Tablette + Wi‑Fi EHPAD
- Créneaux animation
- Convocations CVS, salle d'activité
"

* basedOn = Reference(tddui-careplan-projet-perso-pa-example)

* status = #in-progress

* intent = #plan

* input[titre].valueString = "Moyens mis en œuvre (avec rattachement SERAFIN‑PH)"
