# TDDUI Task Input Bilan - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Input Bilan**

## CodeSystem: TDDUI Task Input Bilan 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-bilan | *Version*:2.3.0-ballot |
| Active as of 2026-03-09 | *Computable Name*:TDDUITaskInputBilan |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUITaskInputBilan](ValueSet-tddui-task-input-bilan.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-input-bilan",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-bilan",
  "version" : "2.3.0-ballot",
  "name" : "TDDUITaskInputBilan",
  "title" : "TDDUI Task Input Bilan",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-09T10:54:50+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
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
  }]
}

```
