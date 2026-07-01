# TDDUI Schedule - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Profil de ressource: TDDUI Schedule 

 
Profil de la ressource FRCoreScheduleProfile permettant de contenir l'ensemble des présences et absences de l'usager. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référence ce Profil: [TDDUI Slot Presence Absence](StructureDefinition-tddui-slot-presence-absence.md)
* Exemples pour ce/t/te Profil: [Schedule/tddui-schedule-example](Schedule-tddui-schedule-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-schedule)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreScheduleProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-schedule.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreScheduleProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-schedule.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreScheduleProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-schedule.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreScheduleProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-schedule.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-schedule.csv), [Excel](../StructureDefinition-tddui-schedule.xlsx), [Schematron](../StructureDefinition-tddui-schedule.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-schedule",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-schedule",
  "version" : "2.4.0-ballot",
  "name" : "TDDUISchedule",
  "title" : "TDDUI Schedule",
  "status" : "active",
  "date" : "2026-07-01T13:17:54+00:00",
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
      "display" : "France (la)"
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
