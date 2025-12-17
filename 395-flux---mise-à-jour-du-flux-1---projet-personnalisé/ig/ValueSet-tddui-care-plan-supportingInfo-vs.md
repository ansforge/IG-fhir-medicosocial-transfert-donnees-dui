# TDDUI CarePlan supportingInfo ValueSet - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI CarePlan supportingInfo ValueSet**

## ValueSet: TDDUI CarePlan supportingInfo ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-care-plan-supportingInfo-vs | *Version*:2.1.0 |
| Active as of 2025-12-17 | *Computable Name*:TDDUICarePlanSupportingInfoVS |

 
ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo. 

 **References** 

* [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)

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
  "id" : "tddui-care-plan-supportingInfo-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-care-plan-supportingInfo-vs",
  "version" : "2.1.0",
  "name" : "TDDUICarePlanSupportingInfoVS",
  "title" : "TDDUI CarePlan supportingInfo ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-17T09:35:57+00:00",
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
        "valueSet" : [
          "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-discriminator-vs"
        ]
      }
    ],
    "exclude" : [
      {
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
        "concept" : [
          {
            "code" : "titreObjectif"
          },
          {
            "code" : "avisUsagerObjectif"
          },
          {
            "code" : "strategieMiseEnOeuvreObjectif"
          },
          {
            "code" : "origineAttente"
          },
          {
            "code" : "commentaireAttente"
          }
        ]
      }
    ]
  }
}

```
