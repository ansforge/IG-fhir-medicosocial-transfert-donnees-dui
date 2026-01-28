# InputTDDUITaskMoyenRessource - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InputTDDUITaskMoyenRessource**

## CodeSystem: InputTDDUITaskMoyenRessource 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-moyen-ressource | *Version*:2.2.0-ballot |
| Active as of 2026-01-28 | *Computable Name*:InputTDDUITaskMoyenRessource |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [InputTDDUITaskMoyenRessource](ValueSet-input-tddui-task-moyen-ressource.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "input-tddui-task-moyen-ressource",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-moyen-ressource",
  "version" : "2.2.0-ballot",
  "name" : "InputTDDUITaskMoyenRessource",
  "title" : "InputTDDUITaskMoyenRessource",
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
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé.",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "titre",
      "display" : "Titre du moyen ou de la ressource à utiliser."
    },
    {
      "code" : "evaluation",
      "display" : "Evaluation du moyen ou de la ressource."
    },
    {
      "code" : "pieceJointe",
      "display" : "Pièce jointe du moyen/ressource."
    }
  ]
}

```
