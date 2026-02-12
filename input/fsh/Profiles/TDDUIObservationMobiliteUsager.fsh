Profile: TDDUIObservationMobiliteUsager
Parent: Observation
Id: tddui-observation-mobilite-usager
Title: "TDDUI Obervation Mobilite Usager"
Description: "Profil de la ressource Observation permettant de représenter la mobilité de l'usager."

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* code from TDDUIObservationType (required)
* code = $loinc#LP73551-1  "Transport mode"

* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-ModeDeTransport-CISIS (required)

* component.code from TDDUIObservationType (required)
* component.code.coding 1..1
* code = $loinc#LP73551-1  "Transport mode"

* component.value[x] only string
* component.valueString 1..1

Mapping:  ConceptMetier_TDDUIObservationMobiliteUsager
Source:   TDDUIObservationMobiliteUsager
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIObservationMobiliteUsager
Title:    "Modèle de contenu DUI"
* -> "MobiliteUsager"
* valueCodeableConcept -> "type"
* component.valueString -> "observationAmenagement"
