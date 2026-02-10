Instance: tddui-observation-mobilite-example
InstanceOf: TDDUIObservationMobilite
Title: "TDDUI Obsrvation Mobilite Example"
Description: "Exemple de la ressource TDDUIObservationMobilite"
Usage: #example

* status = #registered

* subject = Reference(tddui-patient-ins-example)

* valueCodeableConcept =  https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#ORG-160 "VSL"
