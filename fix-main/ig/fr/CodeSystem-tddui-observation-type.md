# TDDUI Observation Type - Médicosocial - Transfert de données DUI v2.3.0

## CodeSystem: TDDUI Observation Type 

 
CodeSystem pour la défintion des types d'Observation 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [TDDUIObservationType](ValueSet-tddui-observation-type.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-observation-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type",
  "version" : "2.3.0",
  "name" : "TDDUIObservationType",
  "title" : "TDDUI Observation Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T13:00:14+00:00",
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
  "count" : 3,
  "concept" : [{
    "code" : "PERIODESCOL",
    "display" : "Période scolaire"
  },
  {
    "code" : "OBSAMENAGEMENT",
    "display" : "Observation sur l’aménagement du moyen de transport"
  },
  {
    "code" : "REPAS",
    "display" : "Repas"
  }]
}

```
