# InputTDDUITaskAction - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InputTDDUITaskAction**

## CodeSystem: InputTDDUITaskAction 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action | *Version*:2.2.0-ballot |
| Active as of 2026-01-28 | *Computable Name*:InputTDDUITaskAction |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [InputTDDUITaskAction](ValueSet-input-tddui-task-action.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "input-tddui-task-action",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action",
  "version" : "2.2.0-ballot",
  "name" : "InputTDDUITaskAction",
  "title" : "InputTDDUITaskAction",
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
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé.",
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
  "count" : 6,
  "concept" : [
    {
      "code" : "titre",
      "display" : "Titre de l'action à mener."
    },
    {
      "code" : "evaluation",
      "display" : "Evaluation de l'action."
    },
    {
      "code" : "avisUsager",
      "display" : "Avis de l'usager sur l'action."
    },
    {
      "code" : "resultatAttendu",
      "display" : "Résultat attendu de l'action."
    },
    {
      "code" : "pieceJointe",
      "display" : "Pièce(s) jointe(s) de l'action."
    },
    {
      "code" : "objectif",
      "display" : "Objectif(s)."
    }
  ]
}

```
