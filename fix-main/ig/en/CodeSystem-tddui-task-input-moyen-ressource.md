# TDDUI Task Input Moyen Ressource - Médicosocial - Transfert de données DUI v2.3.0

## CodeSystem: TDDUI Task Input Moyen Ressource 

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. 

This Code system is referenced in the definition of the following value sets:

* [TDDUITaskInputMoyenRessource](ValueSet-tddui-task-input-moyen-ressource.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-input-moyen-ressource",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-moyen-ressource",
  "version" : "2.3.0",
  "name" : "TDDUITaskInputMoyenRessource",
  "title" : "TDDUI Task Input Moyen Ressource",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-24T12:28:11+00:00",
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
      "display" : "France (la)"
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
