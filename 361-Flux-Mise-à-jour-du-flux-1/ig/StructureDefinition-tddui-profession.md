# TDDUI Profession - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Profession**

## Extension: TDDUI Profession 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-profession | *Version*:2.0.0 |
| Active as of 2025-10-22 | *Computable Name*:TDDUIProfession |

Extension permettant de représenter la profession du professionnel.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md)
* Examples for this Extension: [Bundle/ExampleTDDUIBundle](Bundle-ExampleTDDUIBundle.md) and [PractitionerRole/tddui-practitioner-role-example](PractitionerRole-tddui-practitioner-role-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-profession)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-profession.csv), [Excel](StructureDefinition-tddui-profession.xlsx), [Schematron](StructureDefinition-tddui-profession.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-profession",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-profession",
  "version" : "2.0.0",
  "name" : "TDDUIProfession",
  "title" : "TDDUI Profession",
  "status" : "active",
  "date" : "2025-10-22T14:35:45+00:00",
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
  "description" : "Extension permettant de représenter la profession du professionnel.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "PractitionerRole.code"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "TDDUI Profession",
        "definition" : "Extension permettant de représenter la profession du professionnel."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-profession"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Profession / Spécialité du professionnel.",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.value[x].coding",
        "path" : "Extension.value[x].coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS"
        }
      }
    ]
  }
}

```
