Profile: TDDUITaskAction
Parent: Task
Id: tddui-task-action
Title: "TDDUI Task Action"
Description: "Profil de la ressource Task permettant de représenter les actions réalisées dans le cadre du projet personnalisé."

* identifier 1..1
* identifier ^short = "Identifiant de l'action"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-ACTI-numAction"
* identifier.value ^example[0].valueString = "3480787529/123456789-ACTI-1234"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-action.esante.gouv.fr"
 
* status ^short = "Correspondance des statuts métier avec les codes FHIR : ENPREPARATION → draft, ACTIF → in-progress, TERMINE → completed, ANNULE → cancelled."

* status.extension contains 
    TDDUIStatusAuthor named auteurStatut 0..1

* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open

* input contains
    titre 1..1 and
    evaluation 0..* and
    avisUsager 0..1 and
    resultatAttendu 0..1 and
    pieceJointe 0..* and
    objectif 0..*

* input[titre].type = InputTDDUITaskActionCodeSystem#titre
* input[titre].value[x] only string
* input[titre] ^short = "Titre de l’action"

* input[evaluation].type = InputTDDUITaskActionCodeSystem#evaluation
* input[evaluation].value[x] only Reference(TDDUIQuestionnaireResponse)
* input[evaluation] ^short = "Évaluation"

* input[avisUsager].type = InputTDDUITaskActionCodeSystem#avisUsager
* input[avisUsager].value[x] only string
* input[avisUsager] ^short = "Avis de l'usager"

* input[resultatAttendu].type = InputTDDUITaskActionCodeSystem#resultatAttendu
* input[resultatAttendu].value[x] only string
* input[resultatAttendu] ^short = "Résultat attendu"

* input[pieceJointe].type = InputTDDUITaskActionCodeSystem#pieceJointe
* input[pieceJointe].value[x] only Reference(TDDUIDocumentReference)
* input[pieceJointe] ^short = "Pièce jointe associée"

* input[objectif].type = InputTDDUITaskActionCodeSystem#objectif
* input[objectif].value[x] only Reference(TDDUIGoalObjectif)
* input[objectif] ^short = "Objectif"

* basedOn 1..1
* basedOn only Reference(TDDUICarePlanProjetPersonnalise)

* owner only Reference(TDDUIPractitioner or TDDUIPractitionerRole)

Mapping:  ConceptMetier_TDDUITaskAction
Source:   TDDUITaskAction
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUITaskAction
Title:    "Modèle de contenu DUI"
* -> "Action"

* status -> "statutAction.statut"
* meta.lastUpdated -> "statutAction.dateStatut"
* status.extension[auteurStatut] -> "statutAction.auteur"
* identifier -> "idAction"
* owner -> "referentAction"
* input[titre] -> "titreAction"
* description -> "descriptionAction"
* executionPeriod.start -> "dateDebutAction"
* executionPeriod.end -> "dateFinAction"
* input[evaluation] -> "evaluationAction"
* input[pieceJointe] -> "pieceJointeAction"
* input[avisUsager] -> "avisUsagerAction"
* input[resultatAttendu] -> "resultatAttenduAction"
* input[objectif] -> "Objectif"
* basedOn -> "ProjetPersonnalise"