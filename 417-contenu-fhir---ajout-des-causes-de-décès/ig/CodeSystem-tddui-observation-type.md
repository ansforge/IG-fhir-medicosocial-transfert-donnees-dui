# TDDUI Observation Type - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Observation Type**

## CodeSystem: TDDUI Observation Type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type | *Version*:2.2.0-ballot |
| Active as of 2026-02-16 | *Computable Name*:TDDUIObservationType |

 
CodeSystem for the Observation types 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIObservationType](ValueSet-tddui-observation-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-observation-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type",
  "version" : "2.2.0-ballot",
  "name" : "TDDUIObservationType",
  "title" : "TDDUI Observation Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-16T09:17:35+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "CodeSystem for the Observation types",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "PERIODESCOL",
      "display" : "Période scolaire"
    }
  ]
}

```
