Profile: TDDUIPatientINS
Parent: FRCorePatientINSProfile
Id: tddui-patient-ins
Title: "TDDUI Patient INS"
Description: "Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis."

* extension contains
    $imposeProfile named impose-profile 0..1
* extension[impose-profile].valueCanonical = Canonical(tddui-patient)

* meta.profile contains tddui-patient-canonical 0..1
* meta.profile[tddui-patient-canonical] = Canonical(tddui-patient)

* insert TDDUIPatientIdSlices
* identifier[INS-NIR] 0..1
* identifier[INS-NIR-TEST] 0..1
* identifier[INS-NIR-DEMO] 0..1
* identifier[INS-NIA] 0..1

* name[usualName] 0..1
* name only tddui-humanname
