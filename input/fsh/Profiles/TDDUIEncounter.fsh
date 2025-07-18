Profile: TDDUIEncounter
Parent: Encounter
Id: tddui-Encounter
Title: "TDDUI Encounter"
Description: "Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS" 
// Identifiant
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
 
* identifier contains
    idStay 1..1 and
    idAdminStay 0..1 and
    idProvenanceStay 0..1
* identifier[idStay] ^short = "Identifiant métier unique du séjour"
* identifier[idAdminStay] ^short = "Numéro de dossier administratif du séjour"
* identifier[idProvenanceStay] ^short = "Numéro de dossier administratif dans l'ESSMS de provenance"
// Usager
* subject 1..1
* subject only Reference(FRCorePatientProfile or FRCorePatientINSProfile)
 
// ESSMS
* serviceProvider 1..1
* serviceProvider only Reference(FRCoreOrganizationProfile)

* extension contains
    $plannedStartDate-r5 named TDDUI-plannedStartDate-r5 0..1 and
    $plannedEndDate-r5 named TDDUI-plannedEndDate-r5 0..1 and
    TDDUIAdmissionDate named TDDUIAdmissionDate 0..1 and
    TDDUIEntryModelabel named TDDUIEntryModelabel 0..1  and
    TDDUIExitModeLabel named TDDUIExitModeLabel 0..1  and
    TDDUIComment named TDDUIComment 0..1

* extension[TDDUI-plannedStartDate-r5].valueDateTime 0..1
* extension[TDDUI-plannedStartDate-r5] ^short = ""
* extension[TDDUI-plannedStartDate-r5] ^definition = ""

* extension[TDDUI-plannedEndDate-r5].valueDateTime 0..1
* extension[TDDUI-plannedEndDate-r5] ^short = ""
* extension[TDDUI-plannedEndDate-r5] ^definition = ""

* extension[TDDUIAdmissionDate] ^short = ""
* extension[TDDUIEntryModelabel] ^short = ""
* extension[TDDUIExitModeLabel] ^short = ""
* extension[TDDUIComment] ^short = ""
