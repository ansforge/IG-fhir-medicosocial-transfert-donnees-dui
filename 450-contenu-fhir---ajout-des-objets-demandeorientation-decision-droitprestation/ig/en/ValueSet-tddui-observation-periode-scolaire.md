# TDDUI Observation Periode Scolaire - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI Observation Periode Scolaire 

 
ValueSet pour l'Observation de la Période Scolaire. 

 **References** 

* [TDDUI Observation Periode Scolaire](StructureDefinition-tddui-observation-periode-scolaire.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-observation-periode-scolaire",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-observation-periode-scolaire",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIObservationPeriodeScolaire",
  "title" : "TDDUI Observation Periode Scolaire",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-09T07:55:39+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour l'Observation de la Période Scolaire.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-periode-scolaire"
    }]
  }
}

```
