Profile: TDDUIServiceRequestBesoin
Parent: ServiceRequest
Id: tddui-service-request-besoin
Title: "TDDUI ServiceRequest Besoin"
Description: "Profil de la ressource ServiceRequest permettant de représenter les besoins de l'usager." 

* identifier 1..1
* identifier ^short = "Identifiant du besoin"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-BESO-numBesoin"
* identifier.value ^example[0].valueString = "3480787529/123456789-BESO-1234"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-besoin.esante.gouv.fr"

* extension contains
    TDDUIAttachment named pieceJointeBesoin 0..*

* category 0..1
* category from $JDV-J285-Besoins-Serafin (required)

* code 1..1
* code.text 1..1

* basedOn 1..1
* basedOn only Reference(TDDUICarePlanProjetPersonnalise)

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

Mapping:  ConceptMetier_TDDUIServiceRequestBesoin
Source:   TDDUIServiceRequestBesoin
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIServiceRequestBesoin
Title:    "Modèle de contenu DUI"
* -> "Besoin"

* identifier -> "idBesoin"
* category -> "typeBesoin"
* code.text -> "descriptionBesoin"
* orderDetail.text -> "analyseProfessionnelBesoin"
* note.text -> "commentaireBesoin"
* extension[pieceJointeBesoin] -> "pieceJointeBesoin"
* basedOn -> "ProjetPersonnalise"