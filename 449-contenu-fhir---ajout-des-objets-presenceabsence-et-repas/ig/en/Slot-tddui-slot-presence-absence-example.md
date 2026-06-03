# TDDUI Slot PresenceAbsence Example - Médicosocial - Transfert de données DUI v2.3.0-ballot

## Example Slot: TDDUI Slot PresenceAbsence Example

Profile: [TDDUI Slot Presence Absence](StructureDefinition-tddui-slot-presence-absence.md)

**identifier**: `https://identifiant-medicosocial-presenceabsence.esante.gouv.fr`/3480787529/1012-PA-0001

**serviceType**: Présent

**schedule**: [Schedule](Schedule-tddui-schedule-example.md)

**status**: Busy

**start**: 2025-04-17 08:00:00+0200

**end**: 2025-04-17 17:30:00+0200



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "tddui-slot-presence-absence-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-slot-presence-absence"]
  },
  "identifier" : [{
    "system" : "https://identifiant-medicosocial-presenceabsence.esante.gouv.fr",
    "value" : "3480787529/1012-PA-0001"
  }],
  "serviceType" : [{
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r423-type-presence-absence",
      "code" : "1"
    }]
  }],
  "schedule" : {
    "reference" : "Schedule/tddui-schedule-example"
  },
  "status" : "busy",
  "start" : "2025-04-17T08:00:00+02:00",
  "end" : "2025-04-17T17:30:00+02:00"
}

```
