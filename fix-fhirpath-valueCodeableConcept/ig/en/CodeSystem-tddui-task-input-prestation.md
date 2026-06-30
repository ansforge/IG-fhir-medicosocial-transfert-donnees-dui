# TDDUI Task Input Prestation - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CodeSystem: TDDUI Task Input Prestation 

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé. 

This Code system is referenced in the definition of the following value sets:

* [TDDUITaskInputPrestation](ValueSet-tddui-task-input-prestation.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-input-prestation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-prestation",
  "version" : "2.4.0-ballot",
  "name" : "TDDUITaskInputPrestation",
  "title" : "TDDUI Task Input Prestation",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-30T14:42:47+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé.",
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
  "count" : 4,
  "concept" : [{
    "code" : "titre",
    "display" : "Titre de l'action à mener."
  },
  {
    "code" : "typePrestation",
    "display" : "Type de la prestation."
  },
  {
    "code" : "evaluation",
    "display" : "Evaluation de l'action."
  },
  {
    "code" : "pieceJointe",
    "display" : "Pièce(s) jointe(s) de l'action."
  }]
}

```
