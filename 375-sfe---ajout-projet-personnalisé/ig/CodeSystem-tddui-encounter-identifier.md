# TDDUI Encounter FR Core CodeSystem v2-0203 - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter FR Core CodeSystem v2-0203**

## CodeSystem: TDDUI Encounter FR Core CodeSystem v2-0203 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier | *Version*:2.0.0 |
| Active as of 2025-10-10 | *Computable Name*:TDDUIEncounterIdentifier |

 
TDDUI Encounter's identifier 

 This Code system is referenced in the content logical definition of the following value sets: 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-encounter-identifier",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier",
  "version" : "2.0.0",
  "name" : "TDDUIEncounterIdentifier",
  "title" : "TDDUI Encounter FR Core CodeSystem v2-0203",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-10T15:37:12+00:00",
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
  "description" : "TDDUI Encounter's identifier",
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
      "code" : "SEJ",
      "display" : "Identifiant du séjour"
    }
  ]
}

```
