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
* note ^slicing.discriminator.path = "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note').value"
* note ^slicing.rules = #open
* note contains
    titreObjectif 1..1 and
    avisUsagerObjectif 0..1 and
    strategieMiseEnOeuvreObjectif 0..1
* note.extension contains
    TDDUIGoalNote named TDDUIGoalNoteExtension 1..3
* note[titreObjectif] ^short = "Titre de l'objectif"
* note[titreObjectif].extension[TDDUIGoalNoteExtension] 1..1
* note[titreObjectif].extension[TDDUIGoalNoteExtension].valueCode = #titreObjectif

* note[avisUsagerObjectif] ^short = "Avis de l'usager sur l'objectif"
* note[avisUsagerObjectif].extension[TDDUIGoalNoteExtension] 1..1
* note[avisUsagerObjectif].extension[TDDUIGoalNoteExtension].valueCode = #avisUsagerObjectif

* note[strategieMiseEnOeuvreObjectif] ^short = "Stratégie de mise en œuvre de l'objectif"
* note[strategieMiseEnOeuvreObjectif].extension[TDDUIGoalNoteExtension] 1..1
* note[strategieMiseEnOeuvreObjectif].extension[TDDUIGoalNoteExtension].valueCode = #strategieMiseEnOeuvreObjectif
 
Mapping:  ConceptMetier_TDDUIGoalObjectif
Source:   TDDUIGoalObjectif
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIGoalObjectif
Title:    "Modèle de contenu DUI"
* -> "Objectif"

* identifier -> "identifiantObjectif"
* lifecycleStatus -> "statutObjectif"
* addresses -> "Besoin"
* expressedBy -> "referentObjectif"
* note[titreObjectif].text -> "titreObjectif"
* description.text -> "descriptionObjectif"
* category -> "domaineObjectif"
* startDate -> "dateDebutObjectif"
* target.dueDate -> "dateFinObjectif"
* extension[referenceEvaluation] -> "evaluationObjectif"
* extension[referenceProjetPerso] -> "ProjetPersonnalise"
* note[avisUsagerObjectif].text -> "avisUsagerObjectif"
* target.detailString -> "resultatAttenduObjectif"
* note[strategieMiseEnOeuvreObjectif].text -> "strategieMiseEnOeuvreObjectif"