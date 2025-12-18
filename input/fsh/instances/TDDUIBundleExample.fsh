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

* entry[DUIEncounterEvenement].fullUrl = "https://test-server.fr/Encounter/tddui-encounter-evenement-example"
* entry[DUIEncounterEvenement].resource = tddui-encounter-evenement-example
* entry[DUIEncounterEvenement].request.method = #POST
* entry[DUIEncounterEvenement].request.url = "TDDUIEncounterEvenement"

* entry[DUIPractitioner].fullUrl = "https://test-server.fr/Practitioner/tddui-practitioner-example"
* entry[DUIPractitioner].resource = tddui-practitioner-example
* entry[DUIPractitioner].request.method = #POST
* entry[DUIPractitioner].request.url = "TDDUIPractitioner"

* entry[DUIPractitionerRole].fullUrl = "https://test-server.fr/PractitionerRole/tddui-practitioner-role-example"
* entry[DUIPractitionerRole].resource = tddui-practitioner-role-example
* entry[DUIPractitionerRole].request.method = #POST
* entry[DUIPractitionerRole].request.url = "TDDUIPractitionerRole"

* entry[DUITransportProfessionnel].fullUrl = "https://test-server.fr/Task/tddui-task-transport-professionel-example"
* entry[DUITransportProfessionnel].resource = tddui-task-transport-professionel-example
* entry[DUITransportProfessionnel].request.method = #POST
* entry[DUITransportProfessionnel].request.url = "TDDUITaskTransportProfessionnel"

* entry[DUITransportUsager].fullUrl = "https://test-server.fr/Task/tddui-task-transport-usager-example"
* entry[DUITransportUsager].resource = tddui-task-transport-usager-example
* entry[DUITransportUsager].request.method = #POST
* entry[DUITransportUsager].request.url = "TDDUITaskTransportUsager"
