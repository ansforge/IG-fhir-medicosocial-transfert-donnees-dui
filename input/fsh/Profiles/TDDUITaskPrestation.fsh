Profile: TDDUITaskPrestation
Parent: Task
Id: tddui-task-prestation
Title: "TDDUI Task Prestation"
Description: "Profil de la ressource Task permettant de représenter les prestations du projet personnalisé."

* identifier 1..1
* identifier ^short = "Identifiant de l'action"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-ACTI-numAction"
// * identifier.value ^example[0].valueString = "3480787529/147720425367411-ACTI-25"

* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open

* input contains
    titre 1..1 and
    typePrestation 0..* and
    evaluation 0..1 and
    pieceJointe 0..* and 
    evaluationNonStructuree 0..1

* input[titre].type = InputTDDUITaskPrestationCodeSystem#titre
* input[titre].value[x] only string
* input[titre] ^short = "Titre de l’action"

* input[typePrestation].type = InputTDDUITaskPrestationCodeSystem#typePrestation
* input[typePrestation].value[x] only CodeableConcept
* input[typePrestation].valueCodeableConcept from TDDUISerafinValueSet
* input[typePrestation] ^short = "Type de la prestation."

* input[pieceJointe].type = InputTDDUITaskPrestationCodeSystem#pieceJointe
* input[pieceJointe].value[x] only Reference(TDDUIDocumentReference)
* input[pieceJointe] ^short = "Pièce jointe associée"

* input[evaluationNonStructuree].type = InputTDDUITaskPrestationCodeSystem#evaluationNonStructuree
* input[evaluationNonStructuree].value[x] only Reference(TDDUIDocumentReference)
* input[evaluationNonStructuree] ^short = "EValuation non structurée"

* partOf 0..1
* partOf only Reference(TDDUITaskAction)

* basedOn 1..1
* basedOn only Reference(TDDUICarePlanProjetPerso)

Mapping:  ConceptMetier_TDDUITaskPrestation
Source:   TDDUITaskPrestation
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUITaskPrestation
Title:    "Modèle de contenu DUI"
* -> "PrestationProjetPersonnalise"

* status -> "statutPrestation"
* identifier -> "identifiantPrestation"
* input[titre] -> "titrePrestation"
* description -> "descriptionPrestation"
* input[typePrestation] -> "typePrestation"
* executionPeriod.start -> "dateDebutPrestation"
* executionPeriod.end -> "dateFinPrestation"
* input[evaluation] -> "evaluationPrestation"
* input[pieceJointe] -> "pieceJointePrestation"
* input[evaluationNonStructuree] -> "evaluationNonStructureePrestation"
* partOf -> "Action"
* basedOn -> "ProjetPersonnalise"
