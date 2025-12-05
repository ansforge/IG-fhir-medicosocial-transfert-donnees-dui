# TDDUI Encounter Identifier Type ValueSet - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Identifier Type ValueSet**

## ValueSet: TDDUI Encounter Identifier Type ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-identifier-vs | *Version*:2.1.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:TDDUIEncounterIdentifierVs |

 
ValueSet for TDDUI Encounter's identifier types 

 **References** 

* [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier-cs`](CodeSystem-tddui-encounter-identifier-cs.md)version 📦2.1.0-ballot
* Importe tous les codes contenu dans [IdentifierType](http://hl7.org/fhir/R4/valueset-identifier-type.html)

 

### Expansion

Expansion effectuée en interne basée sur :

* [codesystem identifierType v5.0.0 (CodeSystem)](http://terminology.hl7.org/7.0.0/CodeSystem-v2-0203.html)
* [codesystem TDDUI Encounter FR Core CodeSystem v2-0203 v2.1.0-ballot (CodeSystem)](CodeSystem-tddui-encounter-identifier-cs.md)
* [valueset IdentifierType v4.0.1 (ValueSet)](http://hl7.org/fhir/R4/valueset-identifier-type.html)

Ce jeu de valeur (ValueSet) contient 19 concepts

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
  "id" : "tddui-encounter-identifier-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-identifier-vs",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIEncounterIdentifierVs",
  "title" : "TDDUI Encounter Identifier Type ValueSet",
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
  "description" : "ValueSet for TDDUI Encounter's identifier types",
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
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier-cs"
      },
      {
        "valueSet" : ["http://hl7.org/fhir/ValueSet/identifier-type"]
      }
    ]
  }
}

```
