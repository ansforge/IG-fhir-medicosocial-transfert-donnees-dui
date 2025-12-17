ValueSet: TDDUIGoalAttenteNoteVS
Id: tddui-goal-attente-note-vs
Title: "TDDUI Goal Attente Note ValueSet"
Description: "ValueSet définissant les types de notes pour l'élément Goal.note."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from valueset TDDUIDiscriminatorVS

* exclude TDDUIDiscriminatorCS#accordUsager
* exclude TDDUIDiscriminatorCS#accordStructure

* exclude TDDUIDiscriminatorCS#titreObjectif
* exclude TDDUIDiscriminatorCS#avisUsagerObjectif
* exclude TDDUIDiscriminatorCS#strategieMiseEnOeuvreObjectif
