Profile: TDDUIObservationRepas
Parent: Observation
Id: tddui-observation-repas
Title: "TDDUI Observation Repas"
Description: "Profil de la ressource Observation permettant de représenter si l'usager bénéficie ou non des repas."

* identifier 1..1
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-REPAS-numRepas"
* identifier.value ^example[0].valueString = "3480787529/147720425367411-REPAS-12548"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-repas.esante.gouv.fr"

* code = TDDUIObservationType#REPAS "Repas"

* effectiveDateTime 1..1

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* extension contains TDDUIPatientPresent named TDDUIPatientPresent 1..1

Mapping:  ConceptMetier_TDDUIObservationRepas
Source:   TDDUIObservationRepas
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIObservationRepas
Title:    "Modèle de contenu DUI"
* -> "Repas"

* identifier -> "idRepas"
* effectiveDateTime -> "dateRepas"
* extension[TDDUIPatientPresent] -> "usagerPresent"
* subject -> "Usager"