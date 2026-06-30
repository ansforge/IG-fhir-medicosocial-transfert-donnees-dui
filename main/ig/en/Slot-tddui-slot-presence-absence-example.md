# TDDUI Slot PresenceAbsence Example - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Example Slot: TDDUI Slot PresenceAbsence Example

-------

**English**

-------

Profile: [TDDUI Slot Presence Absence](StructureDefinition-tddui-slot-presence-absence.md)

**TDDUI Facturation**: true

**TDDUI Planned Absence**: true

**identifier**: Patient identifier/3480787529/1012-PA-0001

**serviceType**: Absent

**appointmentType**: Hospitalisation de l'usager

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
  "extension" : [{
    "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-facturation",
    "valueBoolean" : true
  },
  {
    "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-planned-absence",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-slot-identifier",
        "code" : "PA"
      }]
    },
    "system" : "https://identifiant-medicosocial-presenceabsence.esante.gouv.fr",
    "value" : "3480787529/1012-PA-0001"
  }],
  "serviceType" : [{
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r423-type-presence-absence",
      "code" : "2"
    }]
  }],
  "appointmentType" : {
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r424-motif-absence",
      "code" : "1"
    }]
  },
  "schedule" : {
    "reference" : "Schedule/tddui-schedule-example"
  },
  "status" : "busy",
  "start" : "2025-04-17T08:00:00+02:00",
  "end" : "2025-04-17T17:30:00+02:00"
}

```
