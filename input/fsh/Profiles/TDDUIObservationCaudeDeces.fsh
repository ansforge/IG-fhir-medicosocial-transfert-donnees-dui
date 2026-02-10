Profile: TDDUIObservationCauseDeces
Parent: Observation
Id: tddui-observation-cause-deces
Title: "TDDUI Observation Cause Deces"
Description: "Profil de la ressource Observation permettant de représenter les causes de décès d'un usager." 

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* code from TDDUIObservationType (required)
* code = TDDUIObservationType#CAUSEDECES "Cause de décès"

* component.code from TDDUIObservationType (required)
* component.code = TDDUIObservationType#CAUSEDECES "Cause de décès"

* component.valueCodeableConcept from TDDUICausesDeces (required)

Mapping:  ConceptMetier_TDDUIObservationCauseDeces
Source:   TDDUIObservationCauseDeces
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIObservationCauseDeces
Title:    "Modèle de contenu DUI"
* -> "CauseDeces"
* component.valueCodeableConcept -> "causeMortalite"
