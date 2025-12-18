# TDDUI Encounter Type ValueSet - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Type ValueSet**

## ValueSet: TDDUI Encounter Type ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-type-vs | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*:TDDUIEncounterTypeVs |

 
ValueSet for TDDUI Encounter's types 

 **References** 

* [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-encounter-type-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-type-vs",
  "version" : "2.1.0",
  "name" : "TDDUIEncounterTypeVs",
  "title" : "TDDUI Encounter Type ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-18T17:22:25+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "ValueSet for TDDUI Encounter's types",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "valueSet" : [
          "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-type"
        ]
      },
      {
        "valueSet" : [
          "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin-valueset"
        ]
      },
      {
        "valueSet" : [
          "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-ssiad-cisis"
        ]
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason"
      }
    ]
  }
}

```
