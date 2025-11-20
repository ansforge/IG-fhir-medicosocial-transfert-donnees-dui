# TDDUI CarePlan SupportingInfo - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI CarePlan SupportingInfo**

## Extension: TDDUI CarePlan SupportingInfo 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-care-plan-supportinginfo | *Version*:2.1.0-ballot |
| Active as of 2025-11-20 | *Computable Name*:TDDUICarePlanSupportingInfo |

Extension pour discriminer l'élément CarePlan.supportingInfo.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-care-plan-supportinginfo)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-care-plan-supportinginfo.csv), [Excel](StructureDefinition-tddui-care-plan-supportinginfo.xlsx), [Schematron](StructureDefinition-tddui-care-plan-supportinginfo.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-care-plan-supportinginfo",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-care-plan-supportinginfo",
  "version" : "2.1.0-ballot",
  "name" : "TDDUICarePlanSupportingInfo",
  "title" : "TDDUI CarePlan SupportingInfo",
  "status" : "active",
  "date" : "2025-11-20T16:06:37+00:00",
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
  "description" : "Extension pour discriminer l'élément CarePlan.supportingInfo.",
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
      "expression" : "CarePlan.supportingInfo"
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
        "short" : "TDDUI CarePlan SupportingInfo",
        "definition" : "Extension pour discriminer l'élément CarePlan.supportingInfo."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-care-plan-supportinginfo"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-care-plan-supportingInfo-vs"
        }
      }
    ]
  }
}

```
