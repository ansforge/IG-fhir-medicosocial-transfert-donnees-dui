Profile: TDDUIServiceRequestBesoin
Parent: ServiceRequest
Id: tddui-service-request-besoin
Title: "TDDUI ServiceRequest Besoin"
Description: "Profil de la ressource TDDUIServiceRequestBesoin permettant de représenter les besoins de l'usager." 

* identifier 1..1
* identifier ^short = "Identifiant du besoin"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPBesoin-identifiantBesoin"
//* identifier.value ^example[0].valueString = "3480787529/147720425367411-EVN-12548"

* extension contains
    TDDUIAttachment named pieceJointeBesoin 0..*

* category 0..1
* category from $JDV-J285-Besoins-Serafin (required)

* code 1..1

* basedOn 1..1
* basedOn only Reference(TDDUICarePlanProjetPerso)

* subject only Reference(TDDUIPatient or TDDUIPatientINS)