# TDDUI Slot Identifier - Médicosocial - Transfert de données DUI v2.3.0

## CodeSystem: TDDUI Slot Identifier 

 
CodeSystem pour la définition des codes d'identifiant de la ressource Slot 

This Code system is referenced in the definition of the following value sets:

* [TDDUISlotIdentifierPresenceAbsence](ValueSet-tddui-slot-identifier-presence-absence.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-slot-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-slot-identifier",
  "version" : "2.3.0",
  "name" : "TDDUISlotIdentifier",
  "title" : "TDDUI Slot Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-24T12:28:11+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des codes d'identifiant de la ressource Slot",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "PA",
    "display" : "Patient identifier"
  }]
}

```
