# TDDUI Related Person Relashionship - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Related Person Relashionship**

## ValueSet: TDDUI Related Person Relashionship 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-related-person-relashionship | *Version*:2.2.0 |
| Active as of 2026-02-16 | *Computable Name*:TDDUIRelatedPersonRelashionship |

 
ValueSet définissant les slices de RelatedPerson.relationship. 

 **References** 

* [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "tddui-contact-related-person-relashionship",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-related-person-relashionship",
  "version" : "2.2.0",
  "name" : "TDDUIRelatedPersonRelashionship",
  "title" : "TDDUI Related Person Relashionship",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-16T10:17:49+00:00",
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
  "description" : "ValueSet définissant les slices de RelatedPerson.relationship.",
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
          "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j384-role-membre-famille-ms"
        ]
      },
      {
        "valueSet" : [
          "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-relation"
        ]
      },
      {
        "valueSet" : [
          "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-protection-juridique"
        ]
      }
    ]
  }
}

```
