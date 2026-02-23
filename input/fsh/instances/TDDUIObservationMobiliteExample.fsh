Instance: tddui-observation-mobilite-usager-example
InstanceOf: TDDUIObservationMobiliteUsager
Title: "TDDUI Observation Mobilite Usager Example"
Description: "Exemple de la ressource TDDUIObservationMobiliteUsager"
Usage: #example

* status = #registered

* subject = Reference(tddui-patient-ins-example)

* valueCodeableConcept =  https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#ORG-160 "VSL"
