# TDDUI Slot Identifier Presence Absence - Médicosocial - Transfert de données DUI v2.3.0

## ValueSet: TDDUI Slot Identifier Presence Absence 

 
ValueSet définissant les types d'identifiants pour la ressource SlotPresenceAbsence. 

 **References** 

* [TDDUI Slot Presence Absence](StructureDefinition-tddui-slot-presence-absence.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-slot-identifier-presence-absence",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-slot-identifier-presence-absence",
  "version" : "2.3.0",
  "name" : "TDDUISlotIdentifierPresenceAbsence",
  "title" : "TDDUI Slot Identifier Presence Absence",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-30T07:08:27+00:00",
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
      "concept" : [{
        "code" : "PA"
      }]
    }]
  }
}

```
