Instance: tddui-service-request-demande-orientation-example
InstanceOf: TDDUIServiceRequestDemandeOrientation
Title: "TDDUI ServiceRequest DemandeOrientation Example"
Description: "Exemple d'une demande d'orientation." 
Usage: #example

* identifier[idDemandeOrientation].value = "1234"
* identifier[idDemandeOrientation].system = "urn:uuid:53fefa32-fcbb-4ff8-8a92-55ee120877b7"

* status = #active
* intent = #plan

* occurrencePeriod.start = "2020-01-01"
* occurrencePeriod.end = "2020-01-31"

* subject = Reference(tddui-pp-pa-patient-example-pp)