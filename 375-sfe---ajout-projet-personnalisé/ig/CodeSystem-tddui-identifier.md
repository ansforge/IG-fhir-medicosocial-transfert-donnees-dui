# TDDUI FR Core CodeSystem v2-0203 - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI FR Core CodeSystem v2-0203**

## CodeSystem: TDDUI FR Core CodeSystem v2-0203 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier | *Version*:2.0.0 |
| Active as of 2025-11-27 | *Computable Name*:TDDUIIdentifier |

 
TDDUI Patient's identifier 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-identifier",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier",
  "version" : "2.0.0",
  "name" : "TDDUIIdentifier",
  "title" : "TDDUI FR Core CodeSystem v2-0203",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-27T16:21:26+00:00",
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
  "description" : "TDDUI Patient's identifier",
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
      "code" : "PIN",
      "display" : "Patient initial number"
    }
  ]
}

```
