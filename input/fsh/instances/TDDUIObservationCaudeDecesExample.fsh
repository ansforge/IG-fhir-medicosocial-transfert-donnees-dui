Instance: tddui-observation-cause-deces-example
InstanceOf: TDDUIObservationCauseDeces
Title: "TDDUI Observation CauseDeces Example"
Description: "Exemple de la ressource TDDUIObservationCauseDeces"
Usage: #example

* status = #registered

* subject = Reference(tddui-patient-ins-example)

* component.valueCodeableConcept = https://smt.esante.gouv.fr/terminologie-cim-10#J81 "Œdème pulmonaire"
