Profile: TDDUIObservationRepas
Parent: Observation
Id: tddui-observation-repas
Title: "TDDUI Observation Repas"
Description: "Profil de la ressource Observation permettant de représenter si l'usager bénéficie ou non des repas."

* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open 
* identifier contains 
    idRepas 1..1

* identifier[idRepas] ^short = "Identifiant du repas"
* identifier[idRepas].type = TDDUIObservationIdentifier#REP
* identifier[idRepas] obeys ObservationRepasIdentifierFormat
* identifier[idRepas].value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-REPAS-numRepas"
* identifier[idRepas].value ^example[0].valueString = "3480787529/147720425367411-REPAS-12548"
* identifier[idRepas].system 1..1
* identifier[idRepas].system = "https://identifiant-medicosocial-repas.esante.gouv.fr"

* code = TDDUIObservationType#REPAS "Repas"

* category 1..1
* category from jdv-j407-type-repas-ms

* effectiveDateTime 1..1

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* extension contains TDDUIParticipantPresent named TDDUIParticipantPresent 1..1
* extension[TDDUIParticipantPresent] ^short = "Présence de l'usager au repas."

Mapping:  ConceptMetier_TDDUIObservationRepas
Source:   TDDUIObservationRepas
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIObservationRepas
Title:    "Modèle de contenu DUI"
* -> "Repas"

* identifier[idRepas] -> "idRepas"
* category -> "typeRepas"
* effectiveDateTime -> "dateRepas"
* extension[TDDUIParticipantPresent] -> "usagerPresent"
* subject -> "Usager"

Invariant: ObservationRepasIdentifierFormat
Description: "l'identifiant du repas doit respecter le format : 3+FINESS/identifiantLocalUsagerESSMS-REPAS-numRepas"
Severity: #error
Expression: "value.matches('^3[0-9]{9}/[A-Za-z0-9]+-REPAS-[A-Za-z0-9]+$')"