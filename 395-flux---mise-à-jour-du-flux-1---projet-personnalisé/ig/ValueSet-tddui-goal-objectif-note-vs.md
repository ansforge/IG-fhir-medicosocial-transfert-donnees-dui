# TDDUI Goal Objectif Note ValueSet - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Goal Objectif Note ValueSet**

## ValueSet: TDDUI Goal Objectif Note ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-goal-objectif-note-vs | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*:TDDUIGoalObjectifNoteVS |

 
ValueSet définissant les types de notes pour l'élément Goal.note. 

 **References** 

* [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

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
  "id" : "tddui-goal-objectif-note-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-goal-objectif-note-vs",
  "version" : "2.1.0",
  "name" : "TDDUIGoalObjectifNoteVS",
  "title" : "TDDUI Goal Objectif Note ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-18T16:46:13+00:00",
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
  "description" : "ValueSet définissant les types de notes pour l'élément Goal.note.",
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
            "code" : "accordUsager"
          },
          {
            "code" : "accordStructure"
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
