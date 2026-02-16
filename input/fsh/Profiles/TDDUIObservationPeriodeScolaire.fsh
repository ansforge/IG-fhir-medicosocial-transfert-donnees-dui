Profile: TDDUIObservationPeriodeScolaire
Parent: Observation
Id: tddui-observation-periode-scolaire
Title: "TDDUI Obervation Periode Scolaire"
Description: "Profil de la ressource Observation permettant de représenter la période scolaire de l'usager."

* identifier 1..1
* identifier ^short = "Identifiant de la période scolaire"
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PSCO-numPeriodeScolaire"
* identifier.value ^example[0].valueString = "3480787529/147720425367411-PSCO-12548"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-periodescolaire.esante.gouv.fr"

* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open

* performer contains 
    referentScolaire 1..1 and
    ecole 0..1

* performer[referentScolaire] only Reference(TDDUIRelatedPersonContact)
* performer[ecole] only Reference(TDDUIOrganization)

* code from TDDUIObservationType (required)
* code = TDDUIObservationType#PERIODESCOL "Période scolaire"

* component.code from TDDUIObservationPeriodeScolaire (required)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component.code.coding 1..1
* component.value[x] 1..1

* component contains 
    typeEnseignementSpecialise 0..* and
    diplome 0..* and
    volumeScolarisation 0..1

* component[typeEnseignementSpecialise].code = TDDUIObservationPeriodeScolaire#typeEnseignementSpecialise "Type enseignement spécialisé"
* component[typeEnseignementSpecialise].valueCodeableConcept from $JDV-J386-Type-Enseignement-Specialise-MS (required)

* component[diplome].code = TDDUIObservationPeriodeScolaire#diplome "Diplôme"
* component[diplome].valueCodeableConcept 1..1
* component[diplome].valueCodeableConcept from $JDV-J81-TypeDiplome-RASS (required)

* component[volumeScolarisation].code = TDDUIObservationPeriodeScolaire#volumeScolarisation "Volume de scolarisation"
* component[volumeScolarisation].valueQuantity 1..1
* component[volumeScolarisation].value[x] only Quantity

Mapping:  ConceptMetier_TDDUIObservationPeriodeScolaire
Source:   TDDUIObservationPeriodeScolaire
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIObservationPeriodeScolaire
Title:    "Modèle de contenu DUI"
* -> "PeriodeScolaire"

* identifier -> "idPeriodeScolaire"
* performer[referentScolaire] -> "ReferentScolaire"
* performer[ecole] -> "Ecole"
* effectivePeriod.start -> "dateDebutPeriodeScolaire"
* effectivePeriod.end -> "dateFinPeriodeScolaire"
* component[typeEnseignementSpecialise] -> "typeEnseignementSpecialise"
* component[diplome] -> "diplome"
* component[volumeScolarisation] -> "volumeScolarisation"
* note -> "commentaireAnneeScolaire"