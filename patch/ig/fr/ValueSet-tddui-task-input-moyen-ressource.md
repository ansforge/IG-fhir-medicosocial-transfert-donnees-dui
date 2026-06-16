# TDDUI Task Input Moyen Ressource - Médicosocial - Transfert de données DUI v2.3.0

## ValueSet: TDDUI Task Input Moyen Ressource 

 
ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. 

 **References** 

* [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-task-input-moyen-ressource",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-task-input-moyen-ressource",
  "version" : "2.3.0",
  "name" : "TDDUITaskInputMoyenRessource",
  "title" : "TDDUI Task Input Moyen Ressource",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T13:33:17+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet  pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-moyen-ressource"
    }]
  }
}

```
