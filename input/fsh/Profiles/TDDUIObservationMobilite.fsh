Profile: TDDUIObservationMobilite
Parent: Observation
Id: tddui-observation-mobilite
Title: "TDDUI Obervation Mobilite"
Description: "Profil de la ressource Observation permettant de représenter la mobilité de l'usager."

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* code from TDDUIObservationType (required)
* code = TDDUIObservationType#MOBILITE "Mobilité"

* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-ModeDeTransport-CISIS (required)

* component.code from TDDUIObservationType (required)
* component.code = TDDUIObservationType#MOBILITE "Mobilité"

* component.value[x] only string

Mapping:  ConceptMetier_TDDUIObservationMobilite
Source:   TDDUIObservationMobilite
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIObservationMobilite
Title:    "Modèle de contenu DUI"
* -> "Mobilite"
* valueCodeableConcept -> "type"
* component.valueString -> "observationAmenagement"
