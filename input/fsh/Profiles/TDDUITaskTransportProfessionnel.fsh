Profile: TDDUITaskTransportProfessionnel
Parent: TDDUITaskTransport
Id: tddui-task-transport-professionnel
Title: "TDDUI Task Transport Professionnel"
Description: "Profil de la ressource TDDUITaskTransport permettant de représenter le transport du professionnel."

* identifier ^short = "Identifiant du transport du professionnel"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-TPPro-idTransport"
* identifier.value ^example[0].valueString = "3480787529/147720425367411-TPPro-21564655"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-transportprofessionnel.esante.gouv.fr"

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
