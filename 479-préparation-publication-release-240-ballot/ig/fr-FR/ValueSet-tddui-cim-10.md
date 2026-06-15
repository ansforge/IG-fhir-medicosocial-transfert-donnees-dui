# TDDUI CIM10 - Médicosocial - Transfert de données DUI v2.3.0

## ValueSet: TDDUI CIM10 

 
ValueSet incluant les codes de la terminologie CIM-1O. 

 **References** 

* [TDDUI Observation Cause Mortalite](StructureDefinition-tddui-observation-cause-mortalite.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-cim-10",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-cim-10",
  "version" : "2.3.0",
  "name" : "TDDUICIM10",
  "title" : "TDDUI CIM10",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-15T09:02:12+00:00",
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
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-cim-10"
    }]
  }
}

```
