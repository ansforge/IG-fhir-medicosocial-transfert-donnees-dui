Profile: TDDUIGoalObjectif
Parent: Goal
Id: tddui-goal-objectif
Title: "TDDUI Goal Objectif"
Description: "Profil de la ressource Goal permettant de représenter les résultats à atteindre dans le cadre du projet personnalisé." 

* extension contains
    TDDUIEvaluationRef named referenceEvaluation 0..* and
    TDDUICarePlanProjetPersoRef named referenceProjetPerso 1..1 and
    TDDUIAttachment named pieceJointeObjectif 0..*

* identifier 1..1
* identifier ^short = "Identifiant de l'objectif"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-OBJE-numObjectif"
* identifier.value ^example[0].valueString = "3480787529/123456789-OBJE-1234"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-objectif.esante.gouv.fr"

* lifecycleStatus ^short = "Correspondance des statuts métier avec les codes FHIR : ENPREPARATION → planned, ACTIF → active, TERMINE → completed, ANNULE → cancelled."

* lifecycleStatus.extension contains 
    TDDUIStatusAuthor named auteurStatut 0..1

* target.detailString 0..1

* expressedBy only Reference(TDDUIPractitionerRole or TDDUIPractitioner)

* addresses only Reference(TDDUIServiceRequestBesoin)

* subject only Reference(TDDUIPatient or TDDUIPatientINS)


* note ^slicing.discriminator.type = #pattern
* note ^slicing.discriminator.path = "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator').value"
* note ^slicing.rules = #open
* note contains
    titreObjectif 1..1 and
    avisUsagerObjectif 0..1 and
    strategieMiseEnOeuvreObjectif 0..1
* note.extension contains
    TDDUIDiscriminator named TDDUIDiscriminator 1..3
* note[titreObjectif] ^short = "Titre de l'objectif"
* note[titreObjectif].extension[TDDUIDiscriminator] 1..1
* note[titreObjectif].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUIGoalObjectifNoteVS (required)
* note[titreObjectif].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminatorCS#titreObjectif

* note[avisUsagerObjectif] ^short = "Avis de l'usager sur l'objectif"
* note[avisUsagerObjectif].extension[TDDUIDiscriminator] 1..1
* note[avisUsagerObjectif].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUIGoalObjectifNoteVS (required)
* note[avisUsagerObjectif].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminatorCS#avisUsagerObjectif

* note[strategieMiseEnOeuvreObjectif] ^short = "Stratégie de mise en œuvre de l'objectif"
* note[strategieMiseEnOeuvreObjectif].extension[TDDUIDiscriminator] 1..1
* note[strategieMiseEnOeuvreObjectif].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUIGoalObjectifNoteVS (required)
* note[strategieMiseEnOeuvreObjectif].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminatorCS#strategieMiseEnOeuvreObjectif

Mapping:  ConceptMetier_TDDUIGoalObjectif
Source:   TDDUIGoalObjectif
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIGoalObjectif
Title:    "Modèle de contenu DUI"
* -> "Objectif"

* identifier -> "idObjectif"
* lifecycleStatus -> "statutObjectif.statut"
* meta.lastUpdated -> "statutObjectif.dateStatut"
* lifecycleStatus.extension[auteurStatut] -> "statutObjectif.auteur"
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