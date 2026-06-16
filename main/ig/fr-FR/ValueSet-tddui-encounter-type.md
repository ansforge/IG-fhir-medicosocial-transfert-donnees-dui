# TDDUI Encounter Type - Médicosocial - Transfert de données DUI v2.3.0

## ValueSet: TDDUI Encounter Type 

 
ValueSet pour la définition des codes de type de séjour 

 **References** 

* [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-encounter-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-type",
  "version" : "2.3.0",
  "name" : "TDDUIEncounterType",
  "title" : "TDDUI Encounter Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T08:06:32+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des codes de type de séjour",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-type"]
    },
    {
      "valueSet" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin"]
    },
    {
      "valueSet" : ["https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-ssiad-cisis"]
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "version" : "1.0.0"
    }]
  }
}

```
