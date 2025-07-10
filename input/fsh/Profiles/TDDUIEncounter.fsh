Profile: TDDUIEncounter
Parent: Encounter
Id: tddui-Encounter
Title: "TDDUI Encounter"
Description: "Profil générique créé dans le contexte du transfert de données DUI pour véhiculer un lot de documents au format CDA." 
// Identifiant
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
 
* identifier contains
    idStay 1..1 and
    idAdminStay 0..1 and
    idProvenanceStay 0..1
 
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
