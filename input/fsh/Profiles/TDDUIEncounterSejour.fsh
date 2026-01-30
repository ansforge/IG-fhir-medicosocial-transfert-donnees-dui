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
    idStay 1..1 and
    idDossierAdministratif 0..1
* identifier[idStay].type from TDDUIEncounterIdentifierVs (required)
* identifier[idStay] ^short = "Identifiant métier unique du séjour"
* identifier[idStay].type = TDDUIEncounterIdentifierCs#SEJ "Identifiant du séjour"
* identifier[idStay].value 1..1
* identifier[idStay].value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-SEJOUR-numeroDossier"
* identifier[idStay].value ^example[0].valueString = "3480787529/147720425367411-SEJOUR-21564655"
* identifier[idStay].system 1..1
* identifier[idStay].system = "https://identifiant-medicosocial-sejour.esante.gouv.fr"

* identifier[idDossierAdministratif].type from TDDUIEncounterIdentifierVs (required)
* identifier[idDossierAdministratif] ^short = "Numéro de dossier administratif du séjour"
* identifier[idDossierAdministratif].type = TDDUIEncounterIdentifierCs#NUMDOSS "Numéro de dossier administratif du séjour"
* identifier[idDossierAdministratif].value 1..1
// * identifier[idDossierAdministratif].value ^example[0].label = "Numéro de dossier administratif du séjour"
// * identifier[idDossierAdministratif].value ^example[0].valueString = "DA-21564655"
* identifier[idDossierAdministratif].system 1..1
* identifier[idDossierAdministratif].system = "https://identifiant-medicosocial-sejour.esante.gouv.fr"

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

* serviceType from JDV-J226-ModaliteAccueil-ROR (required)

* hospitalization.extension contains
    TDDUIEntryDateOrigin named TDDUIEntryDateOrigin 0..1
    
* hospitalization.origin 1..1
* hospitalization.origin only Reference(TDDUIOrganization)
* hospitalization.admitSource from jdv-modalite-entree-cisis (required)
* hospitalization.dischargeDisposition from jdv-modalite-sortie-cisis (required)

Mapping:  ConceptMetier_TDDUIEncounterSejour
Source:   TDDUIEncounterSejour
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIEncounterSejour
Title:    "Modèle de contenu DUI"
* -> "Sejour"
 
* identifier[idStay] -> "idSejour"
* identifier[idDossierAdministratif] -> "numeroDossierAdministratifSejour"
* subject -> "Usager"
* serviceProvider -> "EntiteJuridique"
* extension[TDDUI-plannedStartDate-r5] -> "dateEntreePrevisionnelle"
* extension[TDDUI-plannedEndDate-r5] -> "dateSortiePrevisionnelle"
* extension[TDDUIAdmissionDate] -> "dateAdmission"
* extension[TDDUIEntryModelabel] -> "libelleModeEntree"
* extension[TDDUIExitModeLabel] -> "libelleModeSortie"
* extension[TDDUIComment] -> "commentaire"
* period.start -> "dateEntree"
* period.end -> "dateSortie"
* hospitalization.extension[TDDUIEntryDateOrigin] -> "dateEntreeESSMSProvenance"
* hospitalization.origin -> "ESSMSProvenance"
* hospitalization.preAdmissionIdentifier -> "numeroDossierESSMSProvenance"
* serviceType -> "modaliteAccueil"
* hospitalization.admitSource -> "provenance"
* hospitalization.dischargeDisposition -> "motifSortie"
* participant.individual.display -> "origineDemande"
