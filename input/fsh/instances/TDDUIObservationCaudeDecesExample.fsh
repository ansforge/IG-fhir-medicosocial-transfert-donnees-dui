Instance: tddui-observation-cause-mortalite-example
InstanceOf: TDDUIObservationCauseMortalite
Title: "TDDUI Observation Cause Mortalite Example"
Description: "Exemple de la ressource TDDUIObservationMortalite"
Usage: #example

* status = #registered

* subject = Reference(tddui-patient-ins-example)

* component.valueCodeableConcept = https://smt.esante.gouv.fr/terminologie-cim-10#J81 "Œdème pulmonaire"
