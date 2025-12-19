# TDDUI Encounter FR Core CodeSystem v2-0203 - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter FR Core CodeSystem v2-0203**

## CodeSystem: TDDUI Encounter FR Core CodeSystem v2-0203 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier-cs | *Version*:2.2.0-ballot |
| Active as of 2025-12-19 | *Computable Name*:TDDUIEncounterIdentifierCs |

 
TDDUI Encounter's identifier 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIEncounterIdentifierVs](ValueSet-tddui-encounter-identifier-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-encounter-identifier-cs",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier-cs",
  "version" : "2.2.0-ballot",
  "name" : "TDDUIEncounterIdentifierCs",
  "title" : "TDDUI Encounter FR Core CodeSystem v2-0203",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-19T09:58:03+00:00",
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
