# TDDUI Task Output Bilan - Médicosocial - Transfert de données DUI v2.3.0

## CodeSystem: TDDUI Task Output Bilan 

 
CodeSystem pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé. 

* [TDDUITaskOutputBilan](ValueSet-tddui-task-output-bilan.md)

-------

 . 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-output-bilan",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-output-bilan",
  "version" : "2.3.0",
  "name" : "TDDUITaskOutputBilan",
  "title" : "TDDUI Task Output Bilan",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T12:06:06+00:00",
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
