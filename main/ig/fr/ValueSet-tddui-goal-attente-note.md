# TDDUI Goal Attente Note - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Goal Attente Note 

 
ValueSet définissant les types de notes pour l'élément Goal.note. 

 **References** 

* [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-goal-attente-note",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-goal-attente-note",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIGoalAttenteNote",
  "title" : "TDDUI Goal Attente Note",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-30T14:01:12+00:00",
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
      "valueSet" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-discriminator"]
    }],
    "exclude" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
      "concept" : [{
        "code" : "accordUsager"
      },
      {
        "code" : "accordStructure"
      },
      {
        "code" : "titreObjectif"
      },
      {
        "code" : "avisUsagerObjectif"
      },
      {
        "code" : "strategieMiseEnOeuvreObjectif"
      }]
    }]
  }
}

```
