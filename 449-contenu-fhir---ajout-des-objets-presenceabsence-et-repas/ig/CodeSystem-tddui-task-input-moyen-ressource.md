# TDDUI Task Input Moyen Ressource - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Input Moyen Ressource**

## CodeSystem: TDDUI Task Input Moyen Ressource 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-moyen-ressource | *Version*:2.3.0-ballot |
| Active as of 2026-03-06 | *Computable Name*:TDDUITaskInputMoyenRessource |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUITaskInputMoyenRessource](ValueSet-tddui-task-input-moyen-ressource.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-input-moyen-ressource",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-moyen-ressource",
  "version" : "2.3.0-ballot",
  "name" : "TDDUITaskInputMoyenRessource",
  "title" : "TDDUI Task Input Moyen Ressource",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-06T08:12:50+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé.",
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
  "count" : 3,
  "concept" : [{
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
  }]
}

```
