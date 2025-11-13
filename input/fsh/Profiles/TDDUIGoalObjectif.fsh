Profile: TDDUIGoalObjectif
Parent: Goal
Id: tddui-goal-objectif
Title: "TDDUI Goal Objectif"
Description: "Profil de la ressource TDDUIGoalObjectif permettant de représenter les résultats à atteindre dans le cadre du projet personnalisé." 

* extension contains
    TDDUIEvaluationRef named referenceEvaluation 0..* and
    TDDUICarePlanProjetPersoRef named referenceProjetPerso 1..1

* identifier 1..1
* identifier ^short = "Identifiant de l'objectif"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPObjectif-identifiantObjectif"
//* identifier.value ^example[0].valueString = "3480787529/147720425367411-EVN-12548"

* target.detailString 0..1

* expressedBy only Reference(TDDUIPractitionerRole or TDDUIPractitioner or TDDUIPatient or TDDUIPatientINS or FRCoreRelatedPersonProfile)

* addresses 1..1
* addresses only Reference(TDDUIServiceRequestBesoin)

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* note ^slicing.discriminator.type = #pattern
* note ^slicing.discriminator.path = "$this"
* note ^slicing.rules = #open

* note contains
    titreObjectif 1..1 and
    avisUsagerObjectif 0..1 and
    strategieMiseEnOeuvreObjectif 0..1
* note[titreObjectif] ^short = "Titre de l'objectif"
* note[titreObjectif].extension contains TDDUIGoalNote named TDDUIGoalNoteExtension 1..1
* note[titreObjectif].extension[TDDUIGoalNote].valueCode = #titreObjectif

* note[avisUsagerObjectif] ^short = "Avis de l'usager sur l'objectif"
* note[avisUsagerObjectif].extension contains TDDUIGoalNote named TDDUIGoalNoteExtension 1..1
* note[avisUsagerObjectif].extension[TDDUIGoalNote].valueCode = #avisUsagerObjectif

* note[strategieMiseEnOeuvreObjectif] ^short = "Stratégie de mise en œuvre de l'objectif"
* note[strategieMiseEnOeuvreObjectif].extension contains TDDUIGoalNote named TDDUIGoalNoteExtension 1..1
* note[strategieMiseEnOeuvreObjectif].extension[TDDUIGoalNote].valueCode = #strategieMiseEnOeuvreObjectif
