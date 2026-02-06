# TDDUI Task Input Prestation - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Input Prestation**

## CodeSystem: TDDUI Task Input Prestation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-prestation | *Version*:2.2.0 |
| Active as of 2026-02-06 | *Computable Name*:TDDUITaskInputPrestation |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUITaskInputPrestation](ValueSet-tddui-task-input-prestation.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-input-prestation",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-prestation",
  "version" : "2.2.0",
  "name" : "TDDUITaskInputPrestation",
  "title" : "TDDUI Task Input Prestation",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-06T10:05:36+00:00",
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
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé.",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "titre",
      "display" : "Titre de l'action à mener."
    },
    {
      "code" : "typePrestation",
      "display" : "Type de la prestation."
    },
    {
      "code" : "evaluation",
      "display" : "Evaluation de l'action."
    },
    {
      "code" : "pieceJointe",
      "display" : "Pièce(s) jointe(s) de l'action."
    }
  ]
}

```
