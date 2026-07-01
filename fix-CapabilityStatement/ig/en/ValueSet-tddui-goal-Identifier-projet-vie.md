# TDDUI Goal Identifier Projet Vie - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Goal Identifier Projet Vie 

 
ValueSet définissant les types de notes pour l'élément Goal.note. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-goal-Identifier-projet-vie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-goal-Identifier-projet-vie",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIGoalIdentifierProjetVie",
  "title" : "TDDUI Goal Identifier Projet Vie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T13:56:20+00:00",
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
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-goal-identifier",
      "concept" : [{
        "code" : "PDV"
      }]
    }]
  }
}

```
