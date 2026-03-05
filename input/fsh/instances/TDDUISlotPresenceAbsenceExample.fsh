Instance: tddui-slot-presence-absences-example
InstanceOf: TDDUISlotPresenceAbsence
Title: "TDDUI Slot PresenceAbsence Example"
Description: "Exemple de la ressource TDDUISlotPresenceAbsence." 
Usage: #example

* identifier.value = "3480787529/1012-PA-0001"
* identifier.system = "https://identifiant-medicosocial-presenceabsence.esante.gouv.fr"

* status = #busy

* start = "2025-04-17T08:00:00+02:00"
* end = "2025-04-17T17:30:00+02:00"

* schedule = Reference(tddui-schedule-example)