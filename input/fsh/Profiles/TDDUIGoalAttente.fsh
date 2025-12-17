Profile: TDDUIGoalAttente
Parent: Goal
Id: tddui-goal-attente
Title: "TDDUI Goal Attente"
Description: "Profil de la ressource Goal permettant de représenter les attentes pour un usager."

* extension contains
    TDDUICarePlanProjetPersoRef named referenceProjetPerso 1..1 and
    TDDUIAttachment named pieceJointeAttente 0..*

* identifier 1..1
* identifier ^short = "Identifiant de l'attente"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-ATTE-numAttente"
* identifier.value ^example[0].valueString = "3480787529/123456789-ATTE-1234"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-attente.esante.gouv.fr"

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* note ^slicing.discriminator.type = #pattern
* note ^slicing.discriminator.path = "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator').value"
* note ^slicing.rules = #open
* note contains
    origineAttente 1..1 and
    commentaireAttente 0..*
* note.extension contains
    TDDUIDiscriminator named TDDUIDiscriminator 1..2
* note[origineAttente] ^short = "Originie de l'attente"
* note[origineAttente].extension[TDDUIDiscriminator] 1..1
* note[origineAttente].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUIGoalAttenteNoteVS (required)
* note[origineAttente].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminatorCS#origineAttente

* note[commentaireAttente] ^short = "Commentaire de l'attente"
* note[commentaireAttente].extension[TDDUIDiscriminator] 1..1
* note[commentaireAttente].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUIGoalAttenteNoteVS (required)
* note[commentaireAttente].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminatorCS#commentaireAttente

Mapping:  ConceptMetier_TDDUIGoalAttente
Source:   TDDUIGoalAttente
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIGoalAttente
Title:    "Modèle de contenu DUI"
* -> "Attente"

* identifier -> "idAttente"
* description.text -> "descriptionAttente"
* note[origineAttente] -> "origineAttente"
* note[commentaireAttente] -> "commentaireAttente"
* extension[referenceProjetPerso] -> "ProjetPersonnalise"