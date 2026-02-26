Profile: TDDUIPatientINS
Parent: FRCorePatientINSProfile
Id: tddui-patient-ins
Title: "TDDUI Patient INS"
Description: "Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis."

* insert TDDUIPatientCommonConstraints
* identifier[INS-NIR] 0..1
* identifier[INS-NIR-TEST] 0..1
* identifier[INS-NIR-DEMO] 0..1
* identifier[INS-NIA] 0..1

Mapping:  ConceptMetier_TDDUIPatientINS
Source:   TDDUIPatientINS
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIPatientINS
Title:    "Modèle de contenu DUI"
* -> "UsagerINS"
 
* identifier[INS-NIR] -> "matriculeINS"
* identifier[INS-NIA] -> "matriculeINS"

* insert TDDUIPatientCommonMapping