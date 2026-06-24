# TDDUI Basic Type - Médicosocial - Transfert de données DUI v2.3.0-ballot

## CodeSystem: TDDUI Basic Type 

 
CodeSystem pour la définition de la ressource Basic 

This Code system is referenced in the definition of the following value sets:

* [TDDUIBasicType](ValueSet-tddui-basic-type.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-basic-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-type",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIBasicType",
  "title" : "TDDUI Basic Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-24T08:54:25+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition de la ressource Basic",
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
    "code" : "DECISION",
    "display" : "Décision"
  }]
}

```
