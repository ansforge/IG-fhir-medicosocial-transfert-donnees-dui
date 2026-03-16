Profile: TDDUIGoalProjetVie
Parent: Goal
Id: tddui-goal-projet-vie
Title: "TDDUI Goal Projet Vie"
Description: "Profil de la ressource Goal permettant de représenter le projet de vie de l'usager."

* identifier 1..1
* identifier ^short = "Identifiant du projet de vie"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PDV-idLocalProjetVie"
* identifier.value ^example[0].valueString = "3480787529/123456789-PDV-1234"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-projetvie.esante.gouv.fr"

* status ^short = "Correspondance des statuts métier avec les codes FHIR : ENPREPARATION → planned, ENCOURS → active, TERMINE → completed."

* lifecycleStatus.extension contains TDDUIStatusAuthor named TDDUIStatusAuthor 0..1

* description.text 1..1

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* target.measure.extension contains DataAbsentReason named DataAbsentReason 1..1

Mapping:  ConceptMetier_TDDUIGoalProjetVie
Source:   TDDUIGoalProjetVie
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIGoalProjetVie
Title:    "Modèle de contenu DUI"
* -> "ProjetVie"

* identifier -> "idProjetVie"
* lifecycleStatus -> "Statut.statut"
* lifecycleStatus.extension[TDDUIStatusAuthor] -> "Statut.auteur"
* description.text -> "titreProjetVie"
* startDate -> "dateDebutProjetVie"
* target.dueDate -> "dateFinProjetVie"
* target.detailString -> "aspirationSouhait"
* subject -> "Usager"
* meta.lastUpdated -> "Statut.dateStatut"