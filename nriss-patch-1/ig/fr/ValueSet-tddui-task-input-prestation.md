# TDDUI Task Input Prestation - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Task Input Prestation 

 
ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé. 

 **References** 

* [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-task-input-prestation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-task-input-prestation",
  "version" : "2.4.0-ballot",
  "name" : "TDDUITaskInputPrestation",
  "title" : "TDDUI Task Input Prestation",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-22T09:09:11+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-prestation",
      "version" : "2.4.0-ballot"
    }]
  }
}

```
