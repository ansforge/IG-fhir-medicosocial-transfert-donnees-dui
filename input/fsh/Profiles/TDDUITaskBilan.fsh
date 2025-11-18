Profile: TDDUITaskBilan
Parent: Task
Id: tddui-task-bilan
Title: "TDDUI Task Bilan"
Description: "Profil de la ressource Task permettant de représenter le bilan du projet personnalisé."

* identifier 1..1

* executionPeriod.start 1..1

* basedOn 1..1
* basedOn only Reference(TDDUICarePlanProjetPerso)

* extension contains
    TDDUICarePlanProjetPersoRef named referenceProjetPerso 1..1 and
    TDDUIAttachment named pieceJointeBilan 1..1

* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open

* input contains
    perimetre 0..1 and
    problematique 0..1 and
    invite 0..* and
    dateProchainBilan 0..1 and 
    synthesePreparationBilan 0..*

* input[perimetre].type = InputTDDUITaskBilanCodeSystem#perimetre
* input[perimetre].value[x] only string
* input[perimetre] ^short = "Périmètre du bilan"

* input[problematique].type = InputTDDUITaskBilanCodeSystem#problematique
* input[problematique].value[x] only string
* input[problematique] ^short = "Problématique liée à l'usager"

* input[invite].type = InputTDDUITaskBilanCodeSystem#invite
* input[invite].value[x] only string
* input[invite] ^short = "Liste des personnes invitées à participer au bilan"

* input[dateProchainBilan].type = InputTDDUITaskBilanCodeSystem#dateProchainBilan
* input[dateProchainBilan].value[x] only date
* input[dateProchainBilan] ^short = "Date du prochain bilan"

* input[synthesePreparationBilan].type = InputTDDUITaskBilanCodeSystem#synthesePreparationBilan
* input[synthesePreparationBilan].value[x] only Annotation
* input[synthesePreparationBilan] ^short = "Préparation du bilan"

* output ^slicing.discriminator.type = #pattern
* output ^slicing.discriminator.path = "type"
* output ^slicing.rules = #open

* output contains
    syntheseBilan 0..1

* output[syntheseBilan].type = OutputTDDUITaskBilanCodeSystem#syntheseBilan
* output[syntheseBilan].value[x] only Annotation
* output[syntheseBilan].valueAnnotation.text 1..1
* output[syntheseBilan].valueAnnotation.authorReference 1..1
* output[syntheseBilan].valueAnnotation.authorReference only Reference(TDDUIPractitioner or TDDUIPatient or TDDUIPatientINS or FRCoreRelatedPersonProfile or TDDUIOrganization)
* output[syntheseBilan] ^short = "Synthèse du bilan"

Mapping:  ConceptMetier_TDDUITaskBilan
Source:   TDDUITaskBilan
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUITaskBilan
Title:    "Modèle de contenu DUI"
* -> "Bilan"

* identifier -> "identifiantBilan"
* executionPeriod.start -> "dateBilan"
* code -> "categorieBilan"
* input[perimetre] -> "perimetreBilan"
* input[problematique] -> "problematiqueGlobaleUsager"
* input[invite] -> "inviteBilan"
* input[dateProchainBilan] -> "dateProchainBilan"
* input[synthesePreparationBilan] -> "synthesePreparationBilan"
* input[synthesePreparationBilan].valueAnnotation.text -> "synthesePreparationBilan.corps"
* input[synthesePreparationBilan].valueAnnotation.authorReference -> "synthesePreparationBilan.auteur"
* output[syntheseBilan] -> "syntheseBilan"
* basedOn -> "ProjetPersonnalise"
* extension[pieceJointeBilan] -> "pieceJointeBilan"
