# TDDUI Task Input Moyen Ressource - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Task Input Moyen Ressource 

 
ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. 

 **References** 

* [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-task-input-moyen-ressource",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-task-input-moyen-ressource",
  "version" : "2.4.0-ballot",
  "name" : "TDDUITaskInputMoyenRessource",
  "title" : "TDDUI Task Input Moyen Ressource",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T10:22:46+00:00",
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
