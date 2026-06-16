# TDDUI CIM10 - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI CIM10 

 
ValueSet incluant les codes de la terminologie CIM-1O. 

 **References** 

* [TDDUI Observation Cause Mortalite](StructureDefinition-tddui-observation-cause-mortalite.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-cim-10",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-cim-10",
  "version" : "2.3.0-ballot",
  "name" : "TDDUICIM10",
  "title" : "TDDUI CIM10",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T10:03:26+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet incluant les codes de la terminologie CIM-1O.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-cim-10"
    }]
  }
}

```
