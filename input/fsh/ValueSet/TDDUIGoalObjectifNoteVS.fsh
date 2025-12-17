ValueSet: TDDUIGoalObjectifNoteVS
Id: tddui-goal-objectif-note-vs
Title: "TDDUI Goal Objectif Note ValueSet"
Description: "ValueSet définissant les types de notes pour l'élément Goal.note."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from valueset TDDUIDiscriminatorVS

* exclude TDDUIDiscriminatorCS#accordUsager
* exclude TDDUIDiscriminatorCS#accordStructure

* exclude TDDUIDiscriminatorCS#origineAttente
* exclude TDDUIDiscriminatorCS#commentaireAttente
