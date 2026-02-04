Profile: TDDUIObservationPeriodeScolaire
Parent: Observation
Id: tddui-observation-periode-scolaire
Title: "TDDUI Obervation Periode Scolaire"
Description: "Profil de la ressource Organization permettant de représenter la période scolaire de l'usager."

* identifier 1..1
* identifier ^short = "Identifiant de la période scolaire"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PSCO-numPeriodeScolaire"
* identifier.value ^example[0].valueString = "3480787529/147720425367411-SCOL-12548"
* identifier.system = "https://identifiant-medicosocial-periodescolaire.esante.gouv.fr"

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* code from TDDUIObservationType (required)
* code = #PERIODESCOL "Période scolaire"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains 
    niveauScolaireReel 0..1 and
    niveauScolaireSuivi 0..1 and
    typeEnseignementSpecialise 0..* and
    diplome 0..* and
    volumeScolarisation 0..1

* component[niveauScolaireReel].code = #niveauScolaireReel "Niveau scolaire réel"

* component[niveauScolaireSuivi].code = #niveauScolaireSuivi "Niveau scolaire suivi"

* component[typeEnseignementSpecialise].code = #typeEnseignementSpecialise "Type d'enseignement spécialisé"
* component[typeEnseignementSpecialise].valueCodeableConcept from $JDV-J386-Type-Enseignement-Specialise-MS (required)

* component[diplome].code = #diplome "Diplôme"
* component[diplome].valueCodeableConcept from $JDV-J81-TypeDiplome-RASS (required)

* component[volumeScolarisation].code = #volumeScolarisation "Volume de scolarisation"
* component[volumeScolarisation].value[x] only Quantity
