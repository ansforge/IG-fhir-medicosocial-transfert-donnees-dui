# TDDUI Task Input Action - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CodeSystem: TDDUI Task Input Action 

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé. 

This Code system is referenced in the definition of the following value sets:

* [TDDUITaskInputAction](ValueSet-tddui-task-input-action.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-input-action",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-action",
  "version" : "2.4.0-ballot",
  "name" : "TDDUITaskInputAction",
  "title" : "TDDUI Task Input Action",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-30T14:12:11+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé.",
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
  }]
}

```
