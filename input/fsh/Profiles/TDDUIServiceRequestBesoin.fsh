Profile: TDDUIServiceRequestBesoin
Parent: ServiceRequest
Id: tddui-service-request-besoin
Title: "TDDUI ServiceRequest Besoin"
Description: "Profil de la ressource ServiceRequest permettant de représenter les besoins de l'usager." 

* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open 
* identifier contains 
    idBesoin 1..1

* identifier[idBesoin] ^short = "Identifiant du besoin"
* identifier[idBesoin].value 1..1
* identifier[idBesoin].type = TDDUIServiceRequestIdentifier#BES
* identifier[idBesoin].value obeys ServiceRequestBesoinIdentifierFormat
* identifier[idBesoin].value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-BESO-numBesoin"
* identifier[idBesoin].value ^example[0].valueString = "3480787529/123456789-BESO-1234"
* identifier[idBesoin].system 1..1
* identifier[idBesoin].system = "https://identifiant-medicosocial-besoin.esante.gouv.fr"

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

Invariant: ServiceRequestBesoinIdentifierFormat
Description: "l'identifiant du besoin doit respecter le format : 3+FINESS/identifiantLocalUsagerESSMS-BESO-numBesoin"
Severity: #error
Expression: "value.matches('^3[0-9]{9}/[A-Za-z0-9]+-BESO-[A-Za-z0-9]+$')"