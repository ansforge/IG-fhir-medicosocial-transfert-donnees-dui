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

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* note ^slicing.discriminator.type = #pattern
* note ^slicing.discriminator.path = "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note').value"
* note ^slicing.rules = #open
* note contains
    origineAttente 1..1 and
    commentaireAttente 0..*
* note.extension contains
    TDDUIGoalNote named TDDUIGoalNoteExtension 1..2
* note[origineAttente] ^short = "Originie de l'attente"
* note[origineAttente].extension[TDDUIGoalNoteExtension] 1..1
* note[origineAttente].extension[TDDUIGoalNoteExtension].valueCode = #origineAttente

* note[commentaireAttente] ^short = "Commentaire de l'attente"
* note[commentaireAttente].extension[TDDUIGoalNoteExtension] 1..1
* note[commentaireAttente].extension[TDDUIGoalNoteExtension].valueCode = #commentaireAttente

Mapping:  ConceptMetier_TDDUIGoalAttente
Source:   TDDUIGoalAttente
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIGoalAttente
Title:    "Modèle de contenu DUI"
* -> "Attente"

* identifier -> "identifiantAttente"
* description.text -> "descriptionAttente"
* note[origineAttente] -> "origineAttente"
* note[commentaireAttente] -> "commentaireAttente"
* extension[referenceProjetPerso] -> "ProjetPersonnalise"