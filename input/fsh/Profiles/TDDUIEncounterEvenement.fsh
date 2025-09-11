Profile: TDDUIEncounterEvenement
Parent: Encounter
Id: tddui-encounter-evenement
Title: "TDDUI Encounter Evenement"
Description: "Profil de la ressource Encounter permettant de regrouper les évènements liés à la prise en charge de l’usager dans une structure ESSMS."

* insert FRCoreEncounterProfile

* identifier 1..1

// Types d'évènement
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open

* type contains
    ssiad 0..* and
    serafin 0..* and
    text 0..*

* type[ssiad].coding.code from $JDV-TypeEvenement-SSIAD-CISIS
* type[ssiad].coding.system 1..1
* type[ssiad].coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
* type[ssiad] ^short = "Codes SSIAD"

* type[serafin].coding.code from TDDUISerafinValueSet
* type[serafin].coding.system 1..1
* type[serafin].coding.system = "https://smt.esante.gouv.fr/terminologie-SERAFINPH"
* type[serafin] ^short = "Codes SERAFIN - Prestations directes et indirectes."

* type[text].coding.code 0..1
* type[text].coding.code = #not-permitted
* type[text].coding.display = "Not Permitted"
* type[text].coding.system 1..1
* type[text].coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason"
* type[text].text 1..1
* type[text] ^short = "Texte non structuré véhiculant les autres types d’évènements."

// Usager
* subject 1..1
* subject only Reference(TDDUIPatient or TDDUIPatientINS)

// ESSMS
* serviceProvider only Reference(TDDUIOrganization)

// Professionnel
* participant.individual only Reference(TDDUIPractitioner or TDDUIPractitionerRole or RelatedPerson)

* location 0..1

* extension contains
    TDDUIRessourcesUsed named TDDUIRessourcesUsed 0..* and
    TDDUIEventLabel named TDDUIEventLabel 0..1 and
    TDDUIComment named TDDUIComment 0..* and
    TDDUIEventReport named TDDUIEventReport 0..1 and
    TDDUIAttachment named TDDUIAttachment 0..* and
    TDDUIEventOutsideService named TDDUIEventOutsideService 0..1  and
    TDDUIEventReason named TDDUIEventReason 0..1  and
    TDDUIPatientPresent named TDDUIPatientPresent 0..1  and
    TDDUIMeal named TDDUIMeal 0..1

* extension[TDDUIRessourcesUsed] ^short = "Ressources utilisées lors de l’évènement."
* extension[TDDUIEventLabel] ^short = "Titre donné à l’évènement par la structure."
* extension[TDDUIComment] ^short = "Commentaires sur le déroulé de l'évènement."
* extension[TDDUIEventReport] ^short = "Zone de texte liée à l’événement pour compte rendu des actions réalisées."
* extension[TDDUIAttachment] ^short = "Pièces jointes liées à l’événement."
* extension[TDDUIEventOutsideService] ^short = "Evénement hors prestation prévue dans le projet personnalisé de l’usager."
* extension[TDDUIEventReason] ^short = "Contexte justifiant la réalisation de l’évènement."
* extension[TDDUIPatientPresent] ^short = "Evènement nécessitant ou non la présence physique de l’usager."
* extension[TDDUIMeal] ^short = "Repas du professionnel prévu dans le cadre de l'événement."

* partOf only Reference(TDDUIEncounterSejour)

Mapping:  ConceptMetier_TDDUIEncounterEvenement
Source:   TDDUIEncounterEvenement
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIEncounterEvenement
Title:    "Évènement"
* -> "Événement"

* identifier -> "idEvenement"
* type -> "typeEvenement"
* subject -> "Usager"
* serviceProvider -> "structureEnCharge"
* participant.individual -> "Professionnel"
* location -> "lieuEvenement"
* extension[TDDUIRessourcesUsed] -> "typeRessourceUtilisee"
* extension[TDDUIRessourcesUsed].extension[TDDUIRessourceType] -> "typeRessourceUtilisee"
* extension[TDDUIRessourcesUsed].extension[TDDUIMaterialDetail] -> "detailTypeRessourceUtilisee"
* extension[TDDUIRessourcesUsed].extension[TDDUIFacilityResource] -> "detailTypeRessourceUtilisee"
* extension[TDDUIEventLabel] -> "libelleEvenement"
* extension[TDDUIComment] -> "commentaireEvenement"
* extension[TDDUIEventReport] -> "compteRenduEvenement"
* extension[TDDUIAttachment] -> "pieceJointeEvenement"
* extension[TDDUIEventOutsideService] -> "evenementHorsPrestation"
* extension[TDDUIEventReason] -> "motifEvenement"
* extension[TDDUIPatientPresent] -> "usagerPresent"
* extension[TDDUIMeal] -> "repas"
* partOf -> "sejour"
* period.start -> "dateDebutEvenement"
* period.end -> "dateFinEvenement"
* meta.lastUpdated -> "dateModificationEvenement"
