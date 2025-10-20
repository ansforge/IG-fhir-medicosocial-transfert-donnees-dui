Extension: TDDUIExerciseMode
Id: tddui-exercise-mode
Title: "Mode d'exercice"
Description: "Extension permettant de représenter le mode d'exercice du professionnel."
Context: PractitionerRole

* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Mode d'exercice du professionnel. Décrit selon quelle modalité est exercée l'activité du professionnel par rapport à son établissement de rattachement."
* valueCodeableConcept.coding from $JDV-J117-ModeExercice-ENREG
