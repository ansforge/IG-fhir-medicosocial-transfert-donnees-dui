# TDDUI Task Input Transport - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI Task Input Transport 

 
ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI. 

 **References** 

* [TDDUI Task Transport](StructureDefinition-tddui-task-transport.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-task-input-transport",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-task-input-transport",
  "version" : "2.3.0-ballot",
  "name" : "TDDUITaskInputTransport",
  "title" : "TDDUI Task Input Transport",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T13:52:17+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-transport"
    }]
  }
}

```
