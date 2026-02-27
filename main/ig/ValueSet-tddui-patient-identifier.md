# TDDUI Patient Identifier - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Patient Identifier**

## ValueSet: TDDUI Patient Identifier 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-patient-identifier | *Version*:2.2.0 |
| Active as of 2026-02-27 | *Computable Name*:TDDUIPatientIdentifier |

 
ValueSet pour la définition des codes d'identifiant de l'usager 

 **References** 

* [TDDUI Patient](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md)

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
  "id" : "tddui-patient-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-patient-identifier",
  "version" : "2.2.0",
  "name" : "TDDUIPatientIdentifier",
  "title" : "TDDUI Patient Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-27T17:34:14+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des codes d'identifiant de l'usager",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier"
    },
    {
      "valueSet" : ["http://hl7.org/fhir/ValueSet/identifier-type"]
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
    }]
  }
}

```
