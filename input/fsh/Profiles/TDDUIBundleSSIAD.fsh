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
    DUIEncounterSejour 0..* and
    DUIEncounterEvenement 0..* and
    DUIPractitioner 0..* and
    DUIPractitionerRole 0..* and
    DUITransportProfessionnel 0..* and
    DUITransportUsager 0..* and
    DUIDocumentReference 0..* and
    DUIQuestionnaireResponse 0..*

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

* entry[DUIEncounterEvenement].resource only TDDUIEncounterEvenement
* entry[DUIEncounterEvenement] ^short = "Encounter conforming to the TDDUIEncounterEvenement profile, used to convey event linked to the patient patient's stay."
* entry[DUIEncounterEvenement].resource 1..1
* entry[DUIEncounterEvenement].request 1..1
* entry[DUIEncounterEvenement].request.method = #POST

* entry[DUIPractitioner].resource only TDDUIPractitioner
* entry[DUIPractitioner] ^short = "Practitioner conforming to the TDDUIPractitioner profile, used to convey the practitioner."
* entry[DUIPractitioner].resource 1..1
* entry[DUIPractitioner].request 1..1
* entry[DUIPractitioner].request.method = #POST

* entry[DUIPractitionerRole].resource only TDDUIPractitionerRole
* entry[DUIPractitionerRole] ^short = "PractitionerRole conforming to the TDDUIPractitionerRole profile, used to convey the practitioner."
* entry[DUIPractitionerRole].resource 1..1
* entry[DUIPractitionerRole].request 1..1
* entry[DUIPractitionerRole].request.method = #POST

* entry[DUITransportProfessionnel].resource only TDDUITaskTransportProfessionnel
* entry[DUITransportProfessionnel] ^short = "Task conforming to the TDDUITaskTransportProfessionnel profile, used to convey the practitioner transportation."
* entry[DUITransportProfessionnel].resource 1..1
* entry[DUITransportProfessionnel].request 1..1
* entry[DUITransportProfessionnel].request.method = #POST

* entry[DUITransportUsager].resource only TDDUITaskTransportUsager
* entry[DUITransportUsager] ^short = "Task conforming to the TDDUITaskTransportUsager profile, used to convey the patient transportation."
* entry[DUITransportUsager].resource 1..1
* entry[DUITransportUsager].request 1..1
* entry[DUITransportUsager].request.method = #POST

* entry[DUIDocumentReference].resource only TDDUIDocumentReference
* entry[DUIDocumentReference]. ^short = "DocumentReference conforming to the TDDUIDocumentReference profile, used to convey evaluation attachement"
* entry[DUIDocumentReference].resource 1..1
* entry[DUIDocumentReference].request 1..1
* entry[DUIDocumentReference].request.method = #POST
