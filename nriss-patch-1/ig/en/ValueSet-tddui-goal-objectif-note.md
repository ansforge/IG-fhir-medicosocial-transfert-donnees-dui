# TDDUI Goal Objectif Note - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Goal Objectif Note 

 
ValueSet définissant les types de notes pour l'élément Goal.note. 

 **References** 

* [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-goal-objectif-note",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-goal-objectif-note",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIGoalObjectifNote",
  "title" : "TDDUI Goal Objectif Note",
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
  "description" : "ValueSet définissant les types de notes pour l'élément Goal.note.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-discriminator|2.4.0-ballot"]
    }],
    "exclude" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
      "version" : "2.4.0-ballot",
      "concept" : [{
        "code" : "accordUsager"
      },
      {
        "code" : "accordStructure"
      },
      {
        "code" : "origineAttente"
      },
      {
        "code" : "commentaireAttente"
      }]
    }]
  }
}

```
