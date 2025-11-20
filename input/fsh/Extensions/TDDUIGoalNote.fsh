Extension: 		TDDUIGoalNote
Id: 			tddui-goal-note
Title:			"TDDUI Goal Note"
Description: 	"Extension pour discriminer l'élément Goal.note."

* ^context.type = #element
* ^context.expression = "Goal.note"

* value[x] only code
* valueCode from TDDUIGoalNoteVS

ValueSet: TDDUIGoalNoteVS
Id: tddui-goal-note-vs
Title: "TDDUI Goal Note ValueSet"
Description: "ValueSet définissant les types de notes pour l'élément Goal.note."
* include codes from system tddui-goal-note-cs

CodeSystem: TDDUIGoalNoteCS
Id: tddui-goal-note-cs
Title: "TDDUI Goal Note CodeSystem"
Description: "CodeSystem définissant les types de notes pour l'élément Goal.note"
* #titreObjectif "Titre de l'objectif"
* #avisUsagerObjectif "Avis de l'usager sur l'objectif"
* #strategieMiseEnOeuvreObjectif "Stratégie de mise en œuvre de l'objectif"

* #origineAttente "Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente."
* #commentaireAttente "Permet de compléter ou éclairer la description de l'attente."