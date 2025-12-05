# InputTDDUITaskActionCodeSystem - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InputTDDUITaskActionCodeSystem**

## CodeSystem: InputTDDUITaskActionCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem | *Version*:2.1.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:InputTDDUITaskActionCodeSystem |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "input-tddui-task-action-codesystem",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
  "version" : "2.1.0-ballot",
  "name" : "InputTDDUITaskActionCodeSystem",
  "title" : "InputTDDUITaskActionCodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T09:54:12+00:00",
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
