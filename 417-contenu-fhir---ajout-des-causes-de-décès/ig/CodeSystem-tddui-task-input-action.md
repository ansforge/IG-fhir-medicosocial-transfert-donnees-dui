# TDDUI Task Input Action - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Input Action**

## CodeSystem: TDDUI Task Input Action 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-action | *Version*:2.2.0-ballot |
| Active as of 2026-02-16 | *Computable Name*:TDDUITaskInputAction |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUITaskInputAction](ValueSet-tddui-task-input-action.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-input-action",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-action",
  "version" : "2.2.0-ballot",
  "name" : "TDDUITaskInputAction",
  "title" : "TDDUI Task Input Action",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-16T09:17:35+00:00",
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
