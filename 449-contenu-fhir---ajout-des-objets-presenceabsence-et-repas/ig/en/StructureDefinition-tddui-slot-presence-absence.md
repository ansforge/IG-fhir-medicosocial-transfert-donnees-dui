# TDDUI Slot Presence Absence - Médicosocial - Transfert de données DUI v2.3.0-ballot

## Resource Profile: TDDUI Slot Presence Absence 

 
Profil de la ressource FRCoreSlotProfile permettant de représenter les présences et absences de l'usager. 

**Usages:**

* Use this Profile: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Examples for this Profile: [Slot/tddui-slot-presence-absence-example](Slot-tddui-slot-presence-absence-example.md)
* CapabilityStatements using this Profile: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-slot-presence-absence.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-slot-presence-absence.csv), [Excel](../StructureDefinition-tddui-slot-presence-absence.xlsx), [Schematron](../StructureDefinition-tddui-slot-presence-absence.sch) 



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
  "date" : "2026-06-12T13:52:17+00:00",
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
      "id" : "Slot.meta.lastUpdated",
      "path" : "Slot.meta.lastUpdated",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "Statut.dateStatut"
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
      "short" : "Indique si l'absence est prévue ou non.",
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
      "id" : "Slot.extension:TDDUIFacturation",
      "path" : "Slot.extension",
      "sliceName" : "TDDUIFacturation",
      "short" : "Indique si une facture a été établie.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-facturation"]
      }]
    },
    {
      "id" : "Slot.identifier",
      "path" : "Slot.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Slot.identifier:idPA",
      "path" : "Slot.identifier",
      "sliceName" : "idPA",
      "short" : "Identifiant de présence/absence",
      "min" : 1,
      "max" : "1",
      "constraint" : [{
        "key" : "SlotPresenceAbsenceIdentifierFormat",
        "severity" : "error",
        "human" : "l'identifiant de la présence/absence doit respecter le format : 3+FINESS/identifiantLocalUsagerESSMS-PA-numPresenceAbsenceUsager",
        "expression" : "value.matches('^3[0-9]{9}/[A-Za-z0-9]+-PA-[A-Za-z0-9]+$')",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-slot-presence-absence"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "idPresenceAbsenceUsager"
      }]
    },
    {
      "id" : "Slot.identifier:idPA.type",
      "path" : "Slot.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-slot-identifier",
          "code" : "PA"
        }]
      }
    },
    {
      "id" : "Slot.identifier:idPA.system",
      "path" : "Slot.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-presenceabsence.esante.gouv.fr"
    },
    {
      "id" : "Slot.identifier:idPA.value",
      "path" : "Slot.identifier.value",
      "min" : 1,
      "example" : [{
        "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PA-numPresenceAbsenceUsager",
        "valueString" : "3480787529/147720425367411-PA-21564655"
      }]
    },
    {
      "id" : "Slot.serviceType",
      "path" : "Slot.serviceType",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j405-type-presence-absence-ms"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUISlotPresenceAbsence",
        "map" : "typePresenceAbsence"
      }]
    },
    {
      "id" : "Slot.appointmentType",
      "path" : "Slot.appointmentType",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j406-motif-absence-ms"
      },
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
      "short" : "Auteur du statut.",
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
