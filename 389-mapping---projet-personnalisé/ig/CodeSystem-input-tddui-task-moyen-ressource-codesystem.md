# InputTDDUITaskMoyenRessourceCodeSystem - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InputTDDUITaskMoyenRessourceCodeSystem**

## CodeSystem: InputTDDUITaskMoyenRessourceCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-moyen-ressource-codesystem | *Version*:2.1.0-ballot |
| Active as of 2025-12-12 | *Computable Name*:InputTDDUITaskMoyenRessourceCodeSystem |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "input-tddui-task-moyen-ressource-codesystem",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-moyen-ressource-codesystem",
  "version" : "2.1.0-ballot",
  "name" : "InputTDDUITaskMoyenRessourceCodeSystem",
  "title" : "InputTDDUITaskMoyenRessourceCodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-12T09:34:59+00:00",
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
