# TDDUI Patient Identifier ValueSet - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Patient Identifier ValueSet**

## ValueSet: TDDUI Patient Identifier ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-patient-identifier-vs | *Version*:2.1.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:TDDUIPatientIdentifierVs |

 
ValueSet for TDDUI Patient's identifier types 

 **References** 

* [TDDUI Patient](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier`](CodeSystem-tddui-identifier.md)version 📦2.1.0-ballot
* Importe tous les codes contenu dans [IdentifierType](http://hl7.org/fhir/R4/valueset-identifier-type.html)
* Inclut tous les codes définis dans [`http://terminology.hl7.org/CodeSystem/v2-0203`](http://terminology.hl7.org/7.0.0/CodeSystem-v2-0203.html)version 📦5.0.0
* Inclut tous les codes définis dans [`https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203`](https://hl7.fr/ig/fhir/core/2.1.0/CodeSystem-fr-core-cs-v2-0203.html)version 📦2.1.0

 

### Expansion

Expansion effectuée en interne basée sur :

* [codesystem identifierType v5.0.0 (CodeSystem)](http://terminology.hl7.org/7.0.0/CodeSystem-v2-0203.html)
* [codesystem FR Core CodeSystem v2-0203 v2.1.0 (CodeSystem)](https://hl7.fr/ig/fhir/core/2.1.0/CodeSystem-fr-core-cs-v2-0203.html)
* [codesystem TDDUI FR Core CodeSystem v2-0203 v2.1.0-ballot (CodeSystem)](CodeSystem-tddui-identifier.md)
* [valueset IdentifierType v4.0.1 (ValueSet)](http://hl7.org/fhir/R4/valueset-identifier-type.html)

Ce jeu de valeur (ValueSet) contient 165 concepts

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
  "id" : "tddui-patient-identifier-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-patient-identifier-vs",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIPatientIdentifierVs",
  "title" : "TDDUI Patient Identifier ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T08:38:20+00:00",
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
  "description" : "ValueSet for TDDUI Patient's identifier types",
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
      }
    ]
  }
}

```
