Profile: TDDUIEncounterSejour
Parent: Encounter
Id: tddui-Encounter-sejour
Title: "TDDUI Encounter"
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
* extension[TDDUI-plannedStartDate-r5] ^short = "The planned start date/time (or admission date) of the encounter"
* extension[TDDUI-plannedStartDate-r5] ^definition = ""

* extension[TDDUI-plannedEndDate-r5].valueDateTime 0..1
* extension[TDDUI-plannedEndDate-r5] ^short = "The planned end date/time (or admission date) of the encounter"
* extension[TDDUI-plannedEndDate-r5] ^definition = ""

* extension[TDDUIAdmissionDate] ^short = ""
* extension[TDDUIEntryModelabel] ^short = ""
* extension[TDDUIExitModeLabel] ^short = ""
* extension[TDDUIComment] ^short = ""
