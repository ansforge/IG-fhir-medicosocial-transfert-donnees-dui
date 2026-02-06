ValueSet: TDDUIGoalObjectifNote
Id: tddui-goal-objectif-note
Title: "TDDUI Goal Objectif Note"
Description: "ValueSet définissant les types de notes pour l'élément Goal.note."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from valueset TDDUIDiscriminator

* exclude TDDUIDiscriminator#accordUsager
* exclude TDDUIDiscriminator#accordStructure

* exclude TDDUIDiscriminator#origineAttente
* exclude TDDUIDiscriminator#commentaireAttente
