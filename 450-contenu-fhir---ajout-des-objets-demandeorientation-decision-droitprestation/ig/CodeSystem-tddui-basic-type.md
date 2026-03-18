# TDDUI Basic Type - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Basic Type**

## CodeSystem: TDDUI Basic Type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-type | *Version*:2.3.0-ballot |
| Active as of 2026-03-18 | *Computable Name*:TDDUIBasicType |

 
CodeSystem pour la définition de la ressource Basic 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIBasicType](ValueSet-tddui-basic-type.md)



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
  "date" : "2026-03-18T17:17:44+00:00",
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
      "display" : "France"
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
