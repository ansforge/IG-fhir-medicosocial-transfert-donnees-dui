# TDDUI Encounter FR Core CodeSystem v2-0203 - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter FR Core CodeSystem v2-0203**

## CodeSystem: TDDUI Encounter FR Core CodeSystem v2-0203 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier | *Version*:2.1.0-ballot |
| Active as of 2025-11-18 | *Computable Name*:TDDUIEncounterIdentifier |

 
TDDUI Encounter's identifier 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

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
  "version" : "2.1.0-ballot",
  "name" : "TDDUIEncounterIdentifier",
  "title" : "TDDUI Encounter FR Core CodeSystem v2-0203",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-18T10:31:28+00:00",
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
