# TDDUI Slot Presence Absence - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Slot Presence Absence**

## Resource Profile: TDDUI Slot Presence Absence 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-slot-presence-absence | *Version*:2.3.0-ballot |
| Active as of 2026-03-06 | *Computable Name*:TDDUISlotPresenceAbsence |

 
Profil de la ressource FRCoreSlotProfile permettant de représenter les présences et absences de l'usager. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Exemples pour ce/t/te Profil: [Slot/tddui-slot-presence-absences-example](Slot-tddui-slot-presence-absences-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-slot-presence-absence)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-slot-presence-absence.csv), [Excel](StructureDefinition-tddui-slot-presence-absence.xlsx), [Schematron](StructureDefinition-tddui-slot-presence-absence.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-slot-presence-absence",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-slot-presence-absence",
  "version" : "2.3.0-ballot",
  "name" : "TDDUISlotPresenceAbsence",
  "title" : "TDDUI Slot Presence Absence",
  "status" : "active",
  "date" : "2026-03-06T08:12:50+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource FRCoreSlotProfile permettant de représenter les présences et absences de l'usager.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
    "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
    "name" : "Modèle de contenu DUI"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Slot",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Slot",
      "path" : "Slot",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "PresenceAbsence"
      }]
    },
    {
      "id" : "Slot.extension",
      "path" : "Slot.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Slot.extension:TDDUIPlannedAbsence",
      "path" : "Slot.extension",
      "sliceName" : "TDDUIPlannedAbsence",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-planned-absence"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "absencePrevue"
      }]
    },
    {
      "id" : "Slot.identifier",
      "path" : "Slot.identifier",
      "min" : 1,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "idPresenceAbsenceUsager"
      }]
    },
    {
      "id" : "Slot.identifier.system",
      "path" : "Slot.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-presenceabsence.esante.gouv.fr"
    },
    {
      "id" : "Slot.identifier.value",
      "path" : "Slot.identifier.value",
      "min" : 1,
      "example" : [{
        "label" : "du format d'identifiant à respecter : 'Format : 3+FINESS/identifiantLocalUsagerESSMS-PA-identifiantPresenceAbsence",
        "valueString" : "3480787529/147720425367411-PA-21564655"
      }]
    },
    {
      "id" : "Slot.serviceType",
      "path" : "Slot.serviceType",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "typePresenceAbsence"
      }]
    },
    {
      "id" : "Slot.appointmentType",
      "path" : "Slot.appointmentType",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "motifAbsence"
      }]
    },
    {
      "id" : "Slot.schedule",
      "path" : "Slot.schedule",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-schedule"]
      }]
    },
    {
      "id" : "Slot.status",
      "path" : "Slot.status",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "Statut.statut"
      }]
    },
    {
      "id" : "Slot.status.extension",
      "path" : "Slot.status.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Slot.status.extension:TDDUIStatusAuthor",
      "path" : "Slot.status.extension",
      "sliceName" : "TDDUIStatusAuthor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "Statut.auteur"
      }]
    },
    {
      "id" : "Slot.start",
      "path" : "Slot.start",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "dateDebutPresenceAbsence"
      }]
    },
    {
      "id" : "Slot.end",
      "path" : "Slot.end",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "dateFinPresenceAbsence"
      }]
    }]
  }
}

```
