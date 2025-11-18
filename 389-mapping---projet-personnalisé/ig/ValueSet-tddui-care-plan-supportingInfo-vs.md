# TDDUI CarePlan supportingInfo ValueSet - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI CarePlan supportingInfo ValueSet**

## ValueSet: TDDUI CarePlan supportingInfo ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-care-plan-supportingInfo-vs | *Version*:2.1.0-ballot |
| Active as of 2025-11-18 | *Computable Name*:TDDUICarePlanSupportingInfoVS |

 
ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo. 

 **References** 

* [TDDUI CarePlan SupportingInfo](StructureDefinition-tddui-care-plan-supportinginfo.md)

### Logical Definition (CLD)

* Include tous les codes définis dans [`https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-care-plan-supportingInfo-cs`](CodeSystem-tddui-care-plan-supportingInfo-cs.md)version 📦2.1.0-ballot

 

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
  "id" : "tddui-care-plan-supportingInfo-vs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-care-plan-supportingInfo-vs",
  "version" : "2.1.0-ballot",
  "name" : "TDDUICarePlanSupportingInfoVS",
  "title" : "TDDUI CarePlan supportingInfo ValueSet",
  "status" : "active",
  "date" : "2025-11-18T15:24:05+00:00",
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
  "description" : "ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo.",
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
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-care-plan-supportingInfo-cs"
      }
    ]
  }
}

```
