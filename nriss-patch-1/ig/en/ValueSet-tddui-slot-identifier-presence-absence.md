# TDDUI Slot Identifier Presence Absence - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Slot Identifier Presence Absence 

 
ValueSet définissant les types d'identifiants pour la ressource SlotPresenceAbsence. 

 **References** 

* [TDDUI Slot Presence Absence](StructureDefinition-tddui-slot-presence-absence.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-slot-identifier-presence-absence",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-slot-identifier-presence-absence",
  "version" : "2.4.0-ballot",
  "name" : "TDDUISlotIdentifierPresenceAbsence",
  "title" : "TDDUI Slot Identifier Presence Absence",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-22T09:09:11+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet définissant les types d'identifiants pour la ressource SlotPresenceAbsence.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-slot-identifier",
      "version" : "2.4.0-ballot",
      "concept" : [{
        "code" : "PA"
      }]
    }]
  }
}

```
