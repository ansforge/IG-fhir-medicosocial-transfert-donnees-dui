Instance: tddui-slot-presence-absence-example
InstanceOf: TDDUISlotPresenceAbsence
Title: "TDDUI Slot PresenceAbsence Example"
Description: "Exemple de la ressource TDDUISlotPresenceAbsence." 
Usage: #example

* identifier[idPA].value = "3480787529/1012-PA-0001"
* identifier[idPA].system = "https://identifiant-medicosocial-presenceabsence.esante.gouv.fr"

* status = #busy
* extension[TDDUIFacturation].valueBoolean = true
* extension[TDDUIPlannedAbsence].valueBoolean = true
* start = "2025-04-17T08:00:00+02:00"
* end = "2025-04-17T17:30:00+02:00"

* schedule = Reference(tddui-schedule-example)
* serviceType = https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r423-type-presence-absence#2
* appointmentType = https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r424-motif-absence#1
