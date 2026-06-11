# TDDUI Task Input Bilan - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI Task Input Bilan 

 
ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé. 

 **References** 

* [TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-task-input-bilan",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-task-input-bilan",
  "version" : "2.3.0-ballot",
  "name" : "TDDUITaskInputBilan",
  "title" : "TDDUI Task Input Bilan",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T13:38:26+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-bilan"
    }]
  }
}

```
