Profile: TDDUIObservationCauseDeces
Parent: Observation
Id: tddui-observation-cause-deces
Title: "TDDUI Observation Cause Deces"
Description: "Profil de la ressource Observation permettant de représenter les causes de décès d'un usager." 

* subject 1..1

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* code from TDDUIObservationType (required)
* code = #CAUSEDECES "Cause de décès"

* component.code from TDDUIObservationType (required)
* component.code = #CAUSEDECES "Cause de décès"

* component.valueCodeableConcept from TDDUICausesDeces (required)