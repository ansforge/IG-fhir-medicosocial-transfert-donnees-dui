# TDDUI SERAFIN ValueSet - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI SERAFIN ValueSet**

## ValueSet: TDDUI SERAFIN ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin-valueset | *Version*:2.2.0-ballot |
| Active as of 2025-12-19 | *Computable Name*:TDDUISerafinValueSet |

 
ValueSet contenant les codes SERAFIN (prestations directes et indirectes) pour le profil TDDUI Encounter Evenement. 

 **References** 

* Inclus dans [TDDUIEncounterTypeVs](ValueSet-tddui-encounter-type-vs.md)
* [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)
* [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)

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
  "id" : "tddui-serafin-valueset",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin-valueset",
  "version" : "2.2.0-ballot",
  "name" : "TDDUISerafinValueSet",
  "title" : "TDDUI SERAFIN ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-19T09:47:21+00:00",
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
          "https://mos.esante.gouv.fr/NOS/JDV_J283-PrestationsIndirects_SERAFIN/FHIR/JDV-J283-PrestationsIndirects-SERAFIN|20241025120000",
          "https://mos.esante.gouv.fr/NOS/JDV_J284-PrestationsDirects_SERAFIN/FHIR/JDV-J284-PrestationsDirects-SERAFIN|20241025120000"
        ]
      }
    ]
  }
}

```
