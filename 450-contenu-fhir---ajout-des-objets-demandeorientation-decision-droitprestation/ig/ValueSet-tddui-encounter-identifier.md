# TDDUI Encounter Identifier - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Identifier**

## ValueSet: TDDUI Encounter Identifier 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-identifier | *Version*:2.3.0-ballot |
| Active as of 2026-03-18 | *Computable Name*:TDDUIEncounterIdentifier |

 
ValueSet pour la définition des codes d'identifiant de séjour 

 **References** 

* [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)
* [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)

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
  "id" : "tddui-encounter-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-identifier",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIEncounterIdentifier",
  "title" : "TDDUI Encounter Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-18T17:17:44+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des codes d'identifiant de séjour",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier"
    },
    {
      "valueSet" : ["http://hl7.org/fhir/ValueSet/identifier-type"]
    }]
  }
}

```
