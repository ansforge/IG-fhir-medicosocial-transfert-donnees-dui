# TDDUI Schedule - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Schedule**

## Resource Profile: TDDUI Schedule 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-schedule | *Version*:2.3.0-ballot |
| Active as of 2026-03-04 | *Computable Name*:TDDUISchedule |

 
Profil de la ressource FRCoreScheduleProfile permettant de contenir l'ensemble des présences et absences de l'usager. 

**Utilisations:**

* Référence ce Profil: [TDDUI Slot Presence Absence](StructureDefinition-tddui-slot-presence-absence.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-schedule)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-schedule.csv), [Excel](StructureDefinition-tddui-schedule.xlsx), [Schematron](StructureDefinition-tddui-schedule.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-schedule",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-schedule",
  "version" : "2.3.0-ballot",
  "name" : "TDDUISchedule",
  "title" : "TDDUI Schedule",
  "status" : "active",
  "date" : "2026-03-04T09:38:55+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource FRCoreScheduleProfile permettant de contenir l'ensemble des présences et absences de l'usager.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "Schedule",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Schedule",
      "path" : "Schedule"
    },
    {
      "id" : "Schedule.actor",
      "path" : "Schedule.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"]
      }]
    }]
  }
}

```
