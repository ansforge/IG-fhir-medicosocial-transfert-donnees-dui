# TDDUI Task Input Bilan - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CodeSystem: TDDUI Task Input Bilan 

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé. 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [TDDUITaskInputBilan](ValueSet-tddui-task-input-bilan.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-input-bilan",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-bilan",
  "version" : "2.4.0-ballot",
  "name" : "TDDUITaskInputBilan",
  "title" : "TDDUI Task Input Bilan",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T13:17:54+00:00",
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
      "display" : "France (la)"
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
