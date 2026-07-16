# TDDUI Task Output Bilan - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CodeSystem: TDDUI Task Output Bilan 

 
CodeSystem pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé. 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [TDDUITaskOutputBilan](ValueSet-tddui-task-output-bilan.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-output-bilan",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-output-bilan",
  "version" : "2.4.0-ballot",
  "name" : "TDDUITaskOutputBilan",
  "title" : "TDDUI Task Output Bilan",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-16T14:55:44+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "syntheseBilan",
    "display" : "Synthèse du bilan."
  }]
}

```
