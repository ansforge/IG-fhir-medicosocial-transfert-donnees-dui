# TDDUI CarePlan supportingInfo CodeSystem - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI CarePlan supportingInfo CodeSystem**

## CodeSystem: TDDUI CarePlan supportingInfo CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-care-plan-supportingInfo-cs | *Version*:2.1.0-ballot |
| Active as of 2025-11-18 | *Computable Name*:TDDUICarePlanSupportingInfoCS |

 
CodeSystem définissant les types de notes pour l'élément CarePlan.supportingInfo. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUICarePlanSupportingInfoVS](ValueSet-tddui-care-plan-supportingInfo-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-care-plan-supportingInfo-cs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-care-plan-supportingInfo-cs",
  "version" : "2.1.0-ballot",
  "name" : "TDDUICarePlanSupportingInfoCS",
  "title" : "TDDUI CarePlan supportingInfo CodeSystem",
  "status" : "active",
  "date" : "2025-11-18T15:24:05+00:00",
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
  "description" : "CodeSystem définissant les types de notes pour l'élément CarePlan.supportingInfo.",
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
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "accordUsager",
      "display" : "Accord de l'usager"
    },
    {
      "code" : "accordStructure",
      "display" : "Accord de la structure"
    }
  ]
}

```
