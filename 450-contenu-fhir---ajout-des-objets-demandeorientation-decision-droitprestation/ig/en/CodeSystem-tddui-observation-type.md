# TDDUI Observation Type - Médicosocial - Transfert de données DUI v2.3.0-ballot

## CodeSystem: TDDUI Observation Type 

 
CodeSystem pour la défintion des types d'Observation 

This Code system is referenced in the definition of the following value sets:

* [TDDUIObservationType](ValueSet-tddui-observation-type.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-observation-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIObservationType",
  "title" : "TDDUI Observation Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-25T14:41:02+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la défintion des types d'Observation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "PERIODESCOL",
    "display" : "Période scolaire"
  },
  {
    "code" : "OBSAMENAGEMENT",
    "display" : "Observation sur l’aménagement du moyen de transport"
  }]
}

```
