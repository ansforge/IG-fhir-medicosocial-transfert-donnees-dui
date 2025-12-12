# InputTDDUITaskBilanCodeSystem - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InputTDDUITaskBilanCodeSystem**

## CodeSystem: InputTDDUITaskBilanCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-bilan-codesystem | *Version*:2.1.0-ballot |
| Active as of 2025-12-12 | *Computable Name*:InputTDDUITaskBilanCodeSystem |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "input-tddui-task-bilan-codesystem",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-bilan-codesystem",
  "version" : "2.1.0-ballot",
  "name" : "InputTDDUITaskBilanCodeSystem",
  "title" : "InputTDDUITaskBilanCodeSystem",
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
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé.",
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
      "code" : "perimetre",
      "display" : "Périmètre du bilan."
    },
    {
      "code" : "problematique",
      "display" : "Problématique liée à l'usager."
    },
    {
      "code" : "invite",
      "display" : "Liste des personnes invitées à participer au bilan."
    },
    {
      "code" : "dateProchainBilan",
      "display" : "Date du prochain bilan."
    },
    {
      "code" : "pieceJointe",
      "display" : "Pièce jointe du moyen/ressource."
    },
    {
      "code" : "synthesePreparationBilan",
      "display" : "Préparation du bilan."
    }
  ]
}

```
