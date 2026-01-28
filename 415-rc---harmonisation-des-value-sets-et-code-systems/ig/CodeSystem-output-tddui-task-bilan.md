# OutputTDDUITaskBilan - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OutputTDDUITaskBilan**

## CodeSystem: OutputTDDUITaskBilan 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/output-tddui-task-bilan | *Version*:2.2.0-ballot |
| Active as of 2026-01-28 | *Computable Name*:OutputTDDUITaskBilan |

 
CodeSystem pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [OutputTDDUITaskBilan](ValueSet-output-tddui-task-bilan.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "output-tddui-task-bilan",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/output-tddui-task-bilan",
  "version" : "2.2.0-ballot",
  "name" : "OutputTDDUITaskBilan",
  "title" : "OutputTDDUITaskBilan",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-28T15:51:30+00:00",
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
  "description" : "CodeSystem pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé.",
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
  "compositional" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "syntheseBilan",
      "display" : "Synthèse du bilan."
    }
  ]
}

```
