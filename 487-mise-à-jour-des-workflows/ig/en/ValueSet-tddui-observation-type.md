# TDDUI Observation Type - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Observation Type 

 
ValueSet pour les types d'Observation. 

 **References** 

* [TDDUI Observation Cause Mortalite](StructureDefinition-tddui-observation-cause-mortalite.md)
* [TDDUI Observation Mobilite Usager](StructureDefinition-tddui-observation-mobilite-usager.md)
* [TDDUI Observation Periode Scolaire](StructureDefinition-tddui-observation-periode-scolaire.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-observation-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-observation-type",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIObservationType",
  "title" : "TDDUI Observation Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-30T14:16:03+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour les types d'Observation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type"
    },
    {
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "79378-6",
        "display" : "Cause of death"
      },
      {
        "code" : "LP73551-1",
        "display" : "Transport mode"
      }]
    }]
  }
}

```
