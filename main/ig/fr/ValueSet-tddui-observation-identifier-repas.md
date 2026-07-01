# TDDUI Observation Repas Identifier - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Observation Repas Identifier 

 
ValueSet pour la définition des codes d'identifiant du repas 

 **References** 

* [TDDUI Observation Repas](StructureDefinition-tddui-observation-repas.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-observation-identifier-repas",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-observation-identifier-repas",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIObservationIdentifierRepas",
  "title" : "TDDUI Observation Repas Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T13:17:54+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des codes d'identifiant du repas",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-identifier",
      "concept" : [{
        "code" : "REP"
      }]
    },
    {
      "valueSet" : ["http://hl7.org/fhir/ValueSet/identifier-type"]
    }]
  }
}

```
