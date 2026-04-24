# TDDUI Observation Type - Médicosocial - Transfert de données DUI v2.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Observation Type**

## CodeSystem: TDDUI Observation Type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type | *Version*:2.3.0 |
| Active as of 2026-04-24 | *Computable Name*:TDDUIObservationType |

 
CodeSystem pour la défintion des types d'Observation 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIObservationType](ValueSet-tddui-observation-type.md)



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
  "date" : "2026-04-24T09:04:46+00:00",
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
      "display" : "France"
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
