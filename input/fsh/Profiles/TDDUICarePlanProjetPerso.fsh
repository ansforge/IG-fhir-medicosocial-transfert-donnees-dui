Profile: TDDUICarePlanProjetPersonalise
Parent: CarePlan
Id: tddui-careplan-projet-personalise
Title: "TDDUI CarePlan Projet Personalisé"
Description: "Profil de la ressource TDDUICarePlan permettant de représenter le projet personalisé de l'usager." 

* extension contains
    TDDUIAttachment named entrantProjetPerso 0..*

* identifier 1..1
* identifier ^short = "Identifiant du projet personnel"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPER-numProjetPersonnalise"
//* identifier.value ^example[0].valueString = "3480787529/147720425367411-EVN-12548"

* title 1..1

* category 0..1
* category from $JDV-J367-TypeProjetPersonnaliseMs (required)

* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "display"
* supportingInfo ^slicing.rules = #open

* supportingInfo contains
    usager 0..1 and
    structure 1..*

* supportingInfo[usager] only Reference(TDDUIConsentAccord)
* supportingInfo[usager].display = "Consentement usager"
* supportingInfo[usager] ^short = "Référence à l'accord de l'usager."
* supportingInfo[structure] only Reference(TDDUIConsentAccord)
* supportingInfo[structure] ^short = "Référence à l'accord de la structure."
* supportingInfo[structure].display = "Consentement structure"

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* note 0..1

Mapping:  ConceptMetier_TDDUICarePlanProjetPersonalise
Source:   TDDUICarePlanProjetPersonalise
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUICarePlanProjetPersonalise
Title:    "Modèle de contenu DUI"
* -> "ProjetPersonnalise"

* identifier -> "identifiantProjetPersonnalise"
* title -> "titreProjetPersonnalise"
* description -> "descriptionProjetPersonnalise"
* status -> "statutProjetPersonnalise"
* category -> "typeProjetPersonnalise"
* note -> "modaliteCommunicationProjetPersonnalise"
* supportingInfo[usager] -> "accordUsagerProjetPersonnalise"
* supportingInfo[structure] -> "accordStructureProjetPersonnalise"
* period.start -> "dateDebutMiseEnOeuvreProjetPersonnalise"
* period.end -> "dateFinMiseEnOeuvreProjetPersonnalise"
* extension[entrantProjetPerso] -> "entrantProjetPersonnalisee" //Pourquoi Personnalisee ?
* subject -> "Usager"