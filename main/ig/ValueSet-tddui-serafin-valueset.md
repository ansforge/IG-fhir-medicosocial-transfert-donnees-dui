# TDDUI SERAFIN ValueSet - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI SERAFIN ValueSet**

## ValueSet: TDDUI SERAFIN ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin-valueset | *Version*:2.0.0 |
| Active as of 2025-10-16 | *Computable Name*:TDDUISerafinValueSet |

 
ValueSet contenant les codes SERAFIN (prestations directes et indirectes) pour le profil TDDUI Encounter Evenement. 

 **References** 

* [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Importe tous les codes contenus dans lintersection de [JDV_J283_PrestationsIndirects_SERAFIN](https://interop.esante.gouv.fr/terminologies/1.2.0/ValueSet-JDV-J283-PrestationsIndirects-SERAFIN.html) and [JDV_J284_PrestationsDirects_SERAFIN](https://interop.esante.gouv.fr/terminologies/1.2.0/ValueSet-JDV-J284-PrestationsDirects-SERAFIN.html)

 

### Expansion

Ce jeu de valeur (ValueSet) contient 0 concepts

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
  "id" : "tddui-serafin-valueset",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin-valueset",
  "version" : "2.0.0",
  "name" : "TDDUISerafinValueSet",
  "title" : "TDDUI SERAFIN ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-16T12:41:56+00:00",
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
  "description" : "ValueSet contenant les codes SERAFIN (prestations directes et indirectes) pour le profil TDDUI Encounter Evenement.",
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
          "https://mos.esante.gouv.fr/NOS/JDV_J283-PrestationsIndirects_SERAFIN/FHIR/JDV-J283-PrestationsIndirects-SERAFIN",
          "https://mos.esante.gouv.fr/NOS/JDV_J284-PrestationsDirects_SERAFIN/FHIR/JDV-J284-PrestationsDirects-SERAFIN"
        ]
      }
    ]
  }
}

```
