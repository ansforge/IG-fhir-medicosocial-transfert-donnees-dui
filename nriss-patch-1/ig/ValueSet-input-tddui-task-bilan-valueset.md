# InputTDDUITaskBilanValueSet - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InputTDDUITaskBilanValueSet**

## ValueSet: InputTDDUITaskBilanValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/input-tddui-task-bilan-valueset | *Version*:2.1.0 |
| Active as of 2025-12-19 | *Computable Name*:InputTDDUITaskBilanValueSet |

 
ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé. 

 **References** 

* [TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md)

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
  "id" : "input-tddui-task-bilan-valueset",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/input-tddui-task-bilan-valueset",
  "version" : "2.1.0",
  "name" : "InputTDDUITaskBilanValueSet",
  "title" : "InputTDDUITaskBilanValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-19T08:22:07+00:00",
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
  "description" : "ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé.",
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
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-bilan-codesystem"
      }
    ]
  }
}

```
