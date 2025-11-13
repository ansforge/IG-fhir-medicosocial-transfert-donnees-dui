Profile: TDDUIGoalAttente
Parent: Goal
Id: tddui-goal-attente
Title: "TDDUI Goal Attente"
Description: "Profil de la ressource TDDUIGoal permettant de représenter les attentes de l'usager." 

* extension contains
    TDDUICarePlanProjetPersoRef named referenceProjetPerso 1..1

* identifier 1..1
* identifier ^short = "Identifiant de l'attente"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPAttente-identifiantAttente"
//* identifier.value ^example[0].valueString = "3480787529/147720425367411-EVN-12548"

* expressedBy 1..1
* expressedBy only Reference(TDDUIPractitionerRole or TDDUIPractitioner or TDDUIPatient or TDDUIPatientINS or FRCoreRelatedPersonProfile)

* subject only Reference(TDDUIPatient or TDDUIPatientINS)