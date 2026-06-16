Profile: TDDUISlotPresenceAbsence
Parent: FRCoreSlotProfile
Id: tddui-slot-presence-absence
Title: "TDDUI Slot Presence Absence"
Description: "Profil de la ressource FRCoreSlotProfile permettant de représenter les présences et absences de l'usager."
* obeys motifAbsenceCardinality
* obeys absencePrevueCardinality
* identifier 1..*

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

* identifier contains
    idPA 1..1 
* identifier[idPA].value 1..1
* identifier[idPA] obeys SlotPresenceAbsenceIdentifierFormat
* identifier[idPA] ^short = "Identifiant de présence/absence"
* identifier[idPA].value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PA-numPresenceAbsenceUsager"
* identifier[idPA].value ^example[0].valueString = "3480787529/147720425367411-PA-21564655"
* identifier[idPA].system 1..1
* identifier[idPA].system = "https://identifiant-medicosocial-presenceabsence.esante.gouv.fr"
* identifier[idPA].type = TDDUISlotIdentifier#PA

* schedule only Reference(TDDUISchedule)

* status ^short = "Correspondance des statuts métier avec les codes FHIR : PLANIFIE → busy-tentative, VALIDE → busy. Le statut FACTURE est couvert par l'extension TDDUIFacturation."
* status.extension contains 
    TDDUIStatusAuthor named TDDUIStatusAuthor 0..1 
* status.extension[TDDUIStatusAuthor] ^short = "Auteur du statut."

* extension contains
 TDDUIPlannedAbsence named TDDUIPlannedAbsence 0..1 and
 TDDUIFacturation named TDDUIFacturation 0..1

* extension[TDDUIPlannedAbsence] ^short = "Indique si l'absence est prévue ou non."
* extension[TDDUIFacturation] ^short = "Indique si une facture a été établie."


* serviceType 1..1
* serviceType from jdv-j405-type-presence-absence-ms
* appointmentType from jdv-j406-motif-absence-ms

Invariant: motifAbsenceCardinality
Description: "Cet attribut est obligatoire pour les typePresenceAbsence=Absence"
Severity: #error
Expression: "(serviceType.coding.code='2') implies (appointmentType.exists())"

Invariant: absencePrevueCardinality
Description: "Cet attribut est obligatoire pour les typePresenceAbsence=Absence"
Severity: #error
Expression: "(serviceType.coding.code='2') implies (extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-planned-absence').exists())"


Mapping:  ConceptMetier_TDDUISlotPresenceAbsence
Source:   TDDUISlotPresenceAbsence
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUISlotPresenceAbsence
Title:    "Modèle de contenu DUI"
* -> "PresenceAbsence"

* identifier[idPA] -> "idPresenceAbsenceUsager"
* start -> "dateDebutPresenceAbsence"
* end -> "dateFinPresenceAbsence"
* status -> "Statut.statut (pour les statuts PLANIFIE et VALIDE)"
* extension[TDDUIFacturation] -> "Statut.statut (pour le statut FACTURE)"
* status.extension[TDDUIStatusAuthor] -> "Statut.auteur"
* meta.lastUpdated -> "Statut.dateStatut"
* extension[TDDUIPlannedAbsence] -> "absencePrevue"
* serviceType -> "typePresenceAbsence"
* appointmentType -> "motifAbsence"

Invariant: SlotPresenceAbsenceIdentifierFormat
Description: "l'identifiant de la présence/absence doit respecter le format : 3+FINESS/identifiantLocalUsagerESSMS-PA-numPresenceAbsenceUsager"
Severity: #error
Expression: "value.matches('^3[0-9]{9}/[A-Za-z0-9]+-PA-[A-Za-z0-9]+$')"