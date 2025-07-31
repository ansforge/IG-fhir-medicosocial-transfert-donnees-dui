Instance: ExampleTDDUIBundle
InstanceOf: TDDUIBundle
Title: "TDDUIBundleExample"
Description: "Exemple de bundle conforme au profil TDDUIBundle"
Usage: #example
* type = #transaction

* entry[DUIPatientINS].fullUrl = "https://test-server.fr/Patient/tddui-patient-ins-example"
* entry[DUIPatientINS].resource = tddui-patient-ins-example
* entry[DUIPatientINS].request.method = #POST
* entry[DUIPatientINS].request.url = "TDDUIPatientINS"


* entry[DUIOrganization].fullUrl = "https://test-server.fr/Organization/tddui-organization-example"
* entry[DUIOrganization].resource = tddui-organization-example
* entry[DUIOrganization].request.method = #POST
* entry[DUIOrganization].request.url = "TDDUIOrganization"


* entry[DUIEncounterSejour].fullUrl = "https://test-server.fr/Encounter/tddui-encounter-sejour-example"
* entry[DUIEncounterSejour].resource = tddui-encounter-sejour-example
* entry[DUIEncounterSejour].request.method = #POST
* entry[DUIEncounterSejour].request.url = "TDDUIEncounterSejour"
