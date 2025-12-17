# OutputTDDUITaskBilanCodeSystem - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OutputTDDUITaskBilanCodeSystem**

## CodeSystem: OutputTDDUITaskBilanCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/output-tddui-task-bilan-codesystem | *Version*:2.1.0 |
| Active as of 2025-12-17 | *Computable Name*:OutputTDDUITaskBilanCodeSystem |

 
CodeSystem pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "output-tddui-task-bilan-codesystem",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/output-tddui-task-bilan-codesystem",
  "version" : "2.1.0",
  "name" : "OutputTDDUITaskBilanCodeSystem",
  "title" : "OutputTDDUITaskBilanCodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-17T09:35:57+00:00",
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
