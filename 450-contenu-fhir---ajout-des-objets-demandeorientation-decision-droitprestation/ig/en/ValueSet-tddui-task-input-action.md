# TDDUI Task Input Action - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI Task Input Action 

 
ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé. 

 **References** 

* [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-task-input-action",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-task-input-action",
  "version" : "2.3.0-ballot",
  "name" : "TDDUITaskInputAction",
  "title" : "TDDUI Task Input Action",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-08T15:24:46+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-action"
    }]
  }
}

```
