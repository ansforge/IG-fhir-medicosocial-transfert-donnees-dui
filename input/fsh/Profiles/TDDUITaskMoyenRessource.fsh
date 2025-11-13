Profile: TDDUITaskMoyenRessource
Parent: Task
Id: tddui-task-moyen-ressource
Title: "TDDUI Task MoyenRessource"
Description: "Profil de la ressource Task permettant de représenter les moyens ou ressources utilisées dans le cadre du projet personnalisé."

* identifier 1..1
* identifier ^short = "Identifiant du moyen ou de la ressource"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPMoyenRessource-identifiantMoyenRessource"
//* identifier.value ^example[0].valueString = "3480787529/147720425367411-EVN-12548"

* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open

* input contains
    titre 1..1 and
    evaluation 0..1 and
    pieceJointe 0..* and 
    evaluationNonStructuree 0..1

* input[titre].type = InputTDDUITaskMoyenRessourceCodeSystem#type
* input[titre].value[x] only string
* input[titre] ^short = "Titre du moyen ou de la ressource"

* input[evaluation].type = InputTDDUITaskMoyenRessourceCodeSystem#evaluation
* input[evaluation].value[x] only Reference(TDDUIQuestionnaireResponse)
* input[evaluation] ^short = "Evaluation structurée"

* input[pieceJointe].type = InputTDDUITaskMoyenRessourceCodeSystem#pieceJointe
* input[pieceJointe].value[x] only Reference(TDDUIDocumentReference)
* input[pieceJointe] ^short = "Pièce jointe associée"

* input[evaluationNonStructuree].type = InputTDDUITaskMoyenRessourceCodeSystem#evaluationNonStructuree
* input[evaluationNonStructuree].value[x] only Reference(TDDUIDocumentReference)
* input[evaluationNonStructuree] ^short = "EValuation non structurée"

* basedOn 1..1
* basedOn only Reference(TDDUICarePlanProjetPerso)

* partOf 0..1
* partOf only Reference(TDDUITaskAction)
