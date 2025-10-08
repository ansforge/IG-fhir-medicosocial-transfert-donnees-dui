Profile: TDDUITaskTransportProfessionnel
Parent: TDDUITaskTransport
Id: tddui-task-transport-professionnel
Title: "TDDUI Task Transport Professionnel"
Description: "Profil de la ressource TDDUITaskTransport permettant de représenter le transport du professionnel."

* identifier.value ^short = "Format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-TPPro-idTransport."

// Professionnel
* for 1..1
* for only Reference(TDDUIPractitioner)

Mapping:  ConceptMetier_TDDUITaskTransportProfessionnel
Source:   TDDUITaskTransportProfessionnel
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUITaskTransportProfessionnel
Title:    "Modèle de contenu DUI"
* -> "TransportProfessionnel"

* insert TDDUITaskTransportMapping
* for -> "Professionnel"
