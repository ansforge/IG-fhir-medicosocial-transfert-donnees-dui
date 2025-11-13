Profile: TDDUICarePlanProjetPerso
Parent: CarePlan
Id: tddui-careplan-projet-perso
Title: "TDDUI CarePlan Projet Perso"
Description: "Profil de la ressource TDDUICarePlan permettant de représenter le projet personnel de l'usager." 

* extension contains
    TDDUIAttachment named entrantProjetPerso 0..*

* identifier 1..1
* identifier ^short = "Identifiant du projet personnel"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPER-numProjetPersonnalise"
//* identifier.value ^example[0].valueString = "3480787529/147720425367411-EVN-12548"

* title 1..1

* category 0..1
* category from $JDV-J367-TypeProjetPersonnaliseMs

* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "display"
* supportingInfo ^slicing.rules = #open

* supportingInfo contains
    usager 0..1 and
    structure 1..*

* supportingInfo[usager] only Reference(TDDUIConsent)
* supportingInfo[usager].display = "Consentement de l'usager"
* supportingInfo[usager] ^short = "Référence à l'accord de l'usager."
* supportingInfo[structure] only Reference(TDDUIConsent)
* supportingInfo[structure] ^short = "Référence à l'accord de la structure."
* supportingInfo[structure].display = "Consentement de la structure"

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* note 0..1