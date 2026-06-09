Instance: tddui-observation-repas-example
InstanceOf: TDDUIObservationRepas
Title: "TDDUI Observation Repas Example"
Description: "Exemple de la ressource TDDUIObservationRepas"
Usage: #example

* status = #registered

* extension[TDDUIPatientPresent].valueBoolean = true

* subject = Reference(tddui-patient-ins-example)

* identifier[idRepas].system = "https://identifiant-medicosocial-repas.esante.gouv.fr"
* identifier[idRepas].value = "3480787529/1012-REPAS-0002"

* effectiveDateTime = "2025-04-17T12:00:00+02:00"
* category = https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r425-type-repas#1