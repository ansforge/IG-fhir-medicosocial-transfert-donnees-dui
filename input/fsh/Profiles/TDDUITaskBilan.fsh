Profile: TDDUITaskBilan
Parent: Task
Id: tddui-task-bilan
Title: "TDDUI Task Bilan"
Description: "Profil de la ressource Task permettant de représenter le bilan du projet personnalisé."

* identifier 1..1
* identifier ^short = "Identifiant du bilan"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-BILA-numBilan"
* identifier.value ^example[0].valueString = "3480787529/123456789-BILA-1234"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-bilan.esante.gouv.fr"

* code from $JDV-J366-StatutBilanProjetPersonnaliseMs

* executionPeriod 1..1
* executionPeriod.start 1..1

* basedOn 1..1
* basedOn only Reference(TDDUICarePlanProjetPersonnalise)

* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open

* input contains
    perimetre 0..1 and
    problematique 0..1 and
    invite 0..1 and 
    pieceJointe 0..* and
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

* input[pieceJointe].type = InputTDDUITaskBilanCodeSystem#pieceJointe
* input[pieceJointe].value[x] only Reference(TDDUIDocumentReference)
* input[pieceJointe] ^short = "Pièce jointe du bilan"

* input[dateProchainBilan].type = InputTDDUITaskBilanCodeSystem#dateProchainBilan
* input[dateProchainBilan].value[x] only dateTime
* input[dateProchainBilan] ^short = "Date du prochain bilan"

* input[synthesePreparationBilan].type = InputTDDUITaskBilanCodeSystem#synthesePreparationBilan
* input[synthesePreparationBilan].value[x] only Annotation
* input[synthesePreparationBilan].valueAnnotation.text 1..1
* input[synthesePreparationBilan].valueAnnotation.authorReference 1..1
* input[synthesePreparationBilan].valueAnnotation.authorReference only Reference(TDDUIPractitioner)
* input[synthesePreparationBilan] ^short = "Préparation du bilan"

* output ^slicing.discriminator.type = #pattern
* output ^slicing.discriminator.path = "type"
* output ^slicing.rules = #open

* output contains
    syntheseBilan 0..1

* output[syntheseBilan].type = OutputTDDUITaskBilanCodeSystem#syntheseBilan
* output[syntheseBilan].value[x] only string
* output[syntheseBilan] ^short = "Synthèse du bilan"

Mapping:  ConceptMetier_TDDUITaskBilan
Source:   TDDUITaskBilan
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUITaskBilan
Title:    "Modèle de contenu DUI"
* -> "Bilan"

* identifier -> "idBilan"
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
* input[pieceJointe] -> "pieceJointeBilan"
