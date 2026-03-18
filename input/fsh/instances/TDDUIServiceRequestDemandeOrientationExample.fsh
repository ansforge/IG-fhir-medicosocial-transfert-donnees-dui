Instance: tddui-service-request-demande-orientation-example
InstanceOf: TDDUIServiceRequestDemandeOrientation
Title: "TDDUI ServiceRequest DemandeOrientation Example"
Description: "Exemple d'une demande d'orientation." 
Usage: #example

* identifier.value = "1234"
* identifier.system = "2.16.840.1.113883.2.8.3.75.1"

* status = #active
* intent = #plan

* occurrencePeriod.start = "2020-01-01"
* occurrencePeriod.end = "2020-01-31"

* subject = Reference(tddui-pp-pa-patient-example-pp)