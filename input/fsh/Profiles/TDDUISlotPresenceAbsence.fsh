Profile: TDDUISlotPresenceAbsence
Parent: FRCoreSlotProfile
Id: tddui-slot-presence-absence
Title: "TDDUI Slot Presence Absence"
Description: "Profil de la ressource FRCoreSlotProfile permettant de représenter les présences et absences de l'usager."

* identifier 1..1
* identifier.value 1..1
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 'Format : 3+FINESS/identifiantLocalUsagerESSMS-PA-identifiantPresenceAbsence"
* identifier.value ^example[0].valueString = "3480787529/147720425367411-PA-21564655"
* identifier.system 1..1
* identifier.system = "https://identifiant-medicosocial-presenceabsence.esante.gouv.fr"

* schedule only Reference(TDDUISchedule)

* status.extension contains TDDUIStatusAuthor named TDDUIStatusAuthor 0..1

* extension contains TDDUIPlannedAbsence named TDDUIPlannedAbsence 0..1

* serviceType 1..1

* appointmentType 0..1

Mapping:  ConceptMetier_TDDUISlotPresenceAbsence
Source:   TDDUISlotPresenceAbsence
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUISlotPresenceAbsence
Title:    "Modèle de contenu DUI"
* -> "PresenceAbsence"

* identifier -> "idPresenceAbsenceUsager"
* start -> "dateDebutPresenceAbsence"
* end -> "dateFinPresenceAbsence"
* status -> "Statut.statut"
* status.extension[TDDUIStatusAuthor] -> "Statut.auteur"
* extension[TDDUIPlannedAbsence] -> "absencePrevue"
* serviceType -> "typePresenceAbsence"
* appointmentType -> "motifAbsence"