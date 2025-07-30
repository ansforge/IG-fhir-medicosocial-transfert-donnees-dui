Profile: TDDUIEncounterSejour
Parent: Encounter
Id: tddui-encounter-sejour
Title: "TDDUI Encounter Sejour"
Description: "Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS" 
// Identifiant
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
 
* identifier contains
    idStay 1..1
* identifier[idStay] ^short = "Identifiant métier unique du séjour"
* identifier[idStay].type = TDDUIEncounterIdentifier#SEJ "Identifiant du séjour"
// Usager
* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)
 
// ESSMS
* serviceProvider 1..1
* serviceProvider only Reference(TDDUIOrganization)

* extension contains
    $plannedStartDate-r5 named TDDUI-plannedStartDate-r5 0..1 and
    $plannedEndDate-r5 named TDDUI-plannedEndDate-r5 0..1 and
    TDDUIAdmissionDate named TDDUIAdmissionDate 0..1 and
    TDDUIEntryModelabel named TDDUIEntryModelabel 0..1  and
    TDDUIExitModeLabel named TDDUIExitModeLabel 0..1  and
    TDDUIComment named TDDUIComment 0..1

* extension[TDDUI-plannedStartDate-r5].valueDateTime 0..1
* extension[TDDUI-plannedStartDate-r5] ^short = "La date/heure de début prévue (ou la date d'admission) de la rencontre | The planned start date/time (or admission date) of the encounter"
* extension[TDDUI-plannedStartDate-r5] ^definition = "Cette extension implemente l'élément plannedStartDate de R5. elle permet l'ajout de la date d'entrée prévisionnelle dans le séjour"
 
* extension[TDDUI-plannedEndDate-r5].valueDateTime 0..1
* extension[TDDUI-plannedEndDate-r5] ^short = "La date/heure de fin prévue (ou la date de sortie) de la rencontre | The planned end date/time (or discharge date) of the encounter"
* extension[TDDUI-plannedEndDate-r5] ^definition = "Cette extension implemente l'élément plannedEndDate de R5. elle permet l'ajout de la date de sortie prévisionnelle du séjour"

* extension[TDDUIAdmissionDate] ^short = "Date d’admission dans la structure ESSMS"
* extension[TDDUIEntryModelabel] ^short = "Libellé du mode d’entée du séjour"
* extension[TDDUIExitModeLabel] ^short = "Libellé du mode de sortie du séjour"
* extension[TDDUIComment] ^short = "Commentaire relatif au séjour"
