# TDDUI Observation Repas Identifier - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI Observation Repas Identifier 

 
ValueSet pour la définition des codes d'identifiant du repas 

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
  "id" : "tddui-observation-identifier-repas",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-observation-identifier-repas",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIObservationIdentifierRepas",
  "title" : "TDDUI Observation Repas Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-15T09:04:15+00:00",
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
      "display" : "France"
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
