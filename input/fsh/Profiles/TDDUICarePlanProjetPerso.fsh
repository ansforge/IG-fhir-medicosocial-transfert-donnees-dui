Profile: TDDUICarePlanProjetPersonnalise
Parent: CarePlan
Id: tddui-careplan-projet-personnalise
Title: "TDDUI CarePlan Projet Personalise"
Description: "Profil de la ressource CarePlan représentant le projet personnalisé d'un usager." 

* extension contains
    TDDUIAttachment named entrantProjetPerso 0..*

* identifier 1..1
* identifier ^short = "Identifiant du projet personnalisé"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPER-numProjetPersonnalise"
* identifier.value ^example[0].valueString = "3480787529/123456789-PPER-1234"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr"

* title 1..1

* status ^short = "Correspondance des statuts métier avec les codes FHIR : ENPREPARATION → draft, ENCOURS → active, ENPAUSE → on-hold, TERMINE → completed."

* status.extension contains 
    TDDUIStatusAuthor named auteurStatut 0..1

* category 0..1
* category from $JDV-J367-TypeProjetPersonnaliseMs (required)

* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator').value"
* supportingInfo ^slicing.rules = #open

* supportingInfo contains
    accordUsager 0..* and
    accordStructure 1..*
* note.extension contains
    TDDUIDiscriminator named TDDUIDiscriminator 1..2

* supportingInfo[accordUsager] only Reference(TDDUIConsentAccord)
* supportingInfo[accordUsager].extension[TDDUIDiscriminator] 1..1
* supportingInfo[accordUsager].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUICarePlanSupportingInfoVS (required)
* supportingInfo[accordUsager].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminatorCS#accordUsager
* supportingInfo[accordUsager] ^short = "Référence à l'accord de l'usager et/ou de son entourage."

* supportingInfo[accordStructure] only Reference(TDDUIConsentAccord)
* supportingInfo[accordStructure].extension[TDDUIDiscriminator] 1..1
* supportingInfo[accordStructure].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUICarePlanSupportingInfoVS (required)
* supportingInfo[accordStructure].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminatorCS#accordStructure
* supportingInfo[accordStructure] ^short = "Référence à l'accord de la structure."

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* note 0..1

Mapping:  ConceptMetier_TDDUICarePlanProjetPersonnalise
Source:   TDDUICarePlanProjetPersonnalise
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUICarePlanProjetPersonnalise
Title:    "Modèle de contenu DUI"
* -> "ProjetPersonnalise"

* identifier -> "idProjetPersonnalise"
* meta.lastUpdated -> "statutProjetPersonnalise.dateStatut"
* status.extension[auteurStatut] -> "statutProjetPersonnalise.auteur"
* title -> "titreProjetPersonnalise"
* description -> "descriptionProjetPersonnalise"
* status -> "statutProjetPersonnalise.statut"
* category -> "typeProjetPersonnalise"
* note -> "modaliteCommunicationProjetPersonnalise"
* supportingInfo[accordUsager] -> "accordUsagerProjetPersonnalise"
* supportingInfo[accordStructure] -> "accordStructureProjetPersonnalise"
* period.start -> "dateDebutMiseEnOeuvreProjetPersonnalise"
* period.end -> "dateFinMiseEnOeuvreProjetPersonnalise"
* extension[entrantProjetPerso] -> "entrantProjetPersonnalise"
* subject -> "Usager"