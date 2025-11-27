Profile: TDDUITaskPrestation
Parent: Task
Id: tddui-task-prestation
Title: "TDDUI Task Prestation"
Description: "Profil de la ressource Task permettant de représenter les prestations du projet personnalisé."

* identifier 1..1
* identifier ^short = "Identifiant de l'action"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PRES-numPrestation"
* identifier.value ^example[0].valueString = "3480787529/123456789-PRES-1234"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-prestation.esante.gouv.fr"

* status.extension contains 
    TDDUIStatusAuthor named auteurStatut 0..1

* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open

* input contains
    titre 1..1 and
    typePrestation 0..* and
    evaluation 0..1 and
    pieceJointe 0..*

* input[titre].type = InputTDDUITaskPrestationCodeSystem#titre
* input[titre].value[x] only string
* input[titre] ^short = "Titre de l’action"

* input[typePrestation].type = InputTDDUITaskPrestationCodeSystem#typePrestation
* input[typePrestation].value[x] only CodeableConcept
* input[typePrestation].valueCodeableConcept from TDDUISerafinValueSet
* input[typePrestation] ^short = "Type de la prestation."

* input[evaluation].type = InputTDDUITaskPrestationCodeSystem#evaluation
* input[evaluation].value[x] only Reference(TDDUIQuestionnaireResponse)
* input[evaluation] ^short = "Évaluation"

* input[pieceJointe].type = InputTDDUITaskPrestationCodeSystem#pieceJointe
* input[pieceJointe].value[x] only Reference(TDDUIDocumentReference)
* input[pieceJointe] ^short = "Pièce jointe associée"

* partOf 0..1
* partOf only Reference(TDDUITaskAction)

* basedOn 1..1
* basedOn only Reference(TDDUICarePlanProjetPersonnalise)

Mapping:  ConceptMetier_TDDUITaskPrestation
Source:   TDDUITaskPrestation
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUITaskPrestation
Title:    "Modèle de contenu DUI"
* -> "PrestationProjetPersonnalise"

* status -> "statutPrestation.statut"
* meta.lastUpdated -> "statutPrestation.dateStatut"
* status.extension[auteurStatut] -> "statutPrestation.auteur"
* identifier -> "idPrestation"
* input[titre] -> "titrePrestation"
* description -> "descriptionPrestation"
* input[typePrestation] -> "typePrestation"
* executionPeriod.start -> "dateDebutPrestation"
* executionPeriod.end -> "dateFinPrestation"
* input[evaluation] -> "evaluationPrestation"
* input[pieceJointe] -> "pieceJointePrestation"
* partOf -> "Action"
* basedOn -> "ProjetPersonnalise"
