Profile: TDDUIObservationCauseMortalite
Parent: Observation
Id: tddui-observation-cause-mortalite
Title: "TDDUI Observation Cause Mortalite"
Description: "Profil de la ressource Observation permettant de représenter les causes de mortalité d'un usager." 

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* code from TDDUIObservationType (required)
* code = $loinc#79378-6 "Causes du décès"

* component 1..*

* component.code from TDDUIObservationType (required)
* component.code = $loinc#79378-6 "Causes du décès"
* component.code.coding 1..1

* component.valueCodeableConcept 1..1
* component.valueCodeableConcept from TDDUICIM10 (required)

Mapping:  ConceptMetier_TDDUIObservationCauseMortalite
Source:   TDDUIObservationCauseMortalite
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIObservationCauseMortalite
Title:    "Modèle de contenu DUI"
* -> "causeMortalite"
* component.valueCodeableConcept -> "causeMortalite"
