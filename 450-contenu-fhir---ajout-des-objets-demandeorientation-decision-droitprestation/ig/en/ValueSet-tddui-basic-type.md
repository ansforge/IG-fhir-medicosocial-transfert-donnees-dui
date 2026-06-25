# TDDUI Basic Type - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI Basic Type 

 
ValueSet pour le code de la ressource Basic. 

 **References** 

* [TDDUI Basic Decision](StructureDefinition-tddui-basic-decision.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-basic-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-basic-type",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIBasicType",
  "title" : "TDDUI Basic Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-25T09:43:13+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour le code de la ressource Basic.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-type"
    }]
  }
}

```
