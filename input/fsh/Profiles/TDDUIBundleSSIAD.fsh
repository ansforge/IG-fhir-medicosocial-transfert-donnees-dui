Profile: TDDUIBundle
Parent: Bundle
Id: tddui-bundle
Title: "TDDUI Bundle"
Description: "Profil générique créé pour transmettre des données d'un logiciel DUI." 

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the entry"
* entry contains 
    DUIPatient 0..* and
    DUIPatientINS 0..* and 
    DUIOrganization 0..* and
    DUIEncounterSejour 0..*

* entry[DUIPatient].resource only TDDUIPatient
* entry[DUIPatient] ^short = "Patient conforming to the TDDUIPatient profile, used to convey patients without an INS identity."
* entry[DUIPatient].resource 1..1
* entry[DUIPatient].request 1..1
* entry[DUIPatient].request.method = #POST

* entry[DUIPatientINS].resource only TDDUIPatientINS
* entry[DUIPatientINS] ^short = "Patient conforming to the TDDUIPatientINS profile, used to convey patients identified by an INS identity."
* entry[DUIPatientINS].resource 1..1
* entry[DUIPatientINS].request 1..1
* entry[DUIPatientINS].request.method = #POST

* entry[DUIOrganization].resource only TDDUIOrganization
* entry[DUIOrganization] ^short = "Organization conforming to the TDDUIOrganization profile, used to convey the responsible organization."
* entry[DUIOrganization].resource 1..1
* entry[DUIOrganization].request 1..1
* entry[DUIOrganization].request.method = #POST

* entry[DUIEncounterSejour].resource only TDDUIEncounterSejour
* entry[DUIEncounterSejour] ^short = "Encounter conforming to the TDDUIEncounterSejour profile, used to convey the patient's stay."
* entry[DUIEncounterSejour].resource 1..1
* entry[DUIEncounterSejour].request 1..1
* entry[DUIEncounterSejour].request.method = #POST
