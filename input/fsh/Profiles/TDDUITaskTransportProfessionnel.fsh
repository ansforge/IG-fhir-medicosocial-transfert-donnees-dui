Profile: TDDUITaskTransportProfessionnel
Parent: TDDUITaskTransport
Id: tddui-task-transport-professionnel
Title: "Transport Professionnel"
Description: "Profil de la ressource TDDUITaskTransport permettant de représenter le transport du professionnel."

// Professionnel
* for 1..1
* for only Reference(TDDUIPractitioner)

Mapping:  ConceptMetier_TDDUITaskTransportProfessionnel
Source:   TDDUITaskTransportProfessionnel
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUITaskTransportProfessionnel
Title:    "Transport du professionnel"
* -> "TransportProfessionnel"

* insert TDDUITaskTransportMapping
* for -> "Professionnel"
