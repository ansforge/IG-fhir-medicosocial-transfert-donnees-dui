# TDDUI Slot Identifier Presence Absence - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI Slot Identifier Presence Absence 

 
ValueSet définissant les types d'identifiants pour la ressource SlotPresenceAbsence. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-slot-identifier-presence-absence",
  "version" : "2.3.0-ballot",
  "name" : "TDDUISlotIdentifierPresenceAbsence",
  "title" : "TDDUI Slot Identifier Presence Absence",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T07:33:45+00:00",
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
      "display" : "France"
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
