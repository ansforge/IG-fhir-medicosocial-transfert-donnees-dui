# TDDUI Nationality Extension - Médicosocial - Transfert de données DUI v2.3.0-ballot

## Extension: TDDUI Nationality Extension 

The nationality of the patient or a related person.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-nationality.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-nationality.csv), [Excel](../StructureDefinition-tddui-nationality.xlsx), [Schematron](../StructureDefinition-tddui-nationality.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-nationality",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "pa"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-nationality",
  "version" : "2.3.0-ballot",
  "name" : "TDDUINationalityExtension",
  "title" : "TDDUI Nationality Extension",
  "status" : "active",
  "date" : "2026-06-15T13:25:13+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "The nationality of the patient or a related person.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Nationality",
      "definition" : "The nationality of the patient or a related person."
    },
    {
      "id" : "Extension.extension:code",
      "path" : "Extension.extension",
      "sliceName" : "code",
      "short" : "Nationality Code",
      "definition" : "Code representing nationality of patient.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:code.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:code.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "code"
    },
    {
      "id" : "Extension.extension:code.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-Country"
      }
    },
    {
      "id" : "Extension.extension:period",
      "path" : "Extension.extension",
      "sliceName" : "period",
      "short" : "Nationality Period",
      "definition" : "Period when nationality was effective.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:period.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:period.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "period"
    },
    {
      "id" : "Extension.extension:period.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-nationality"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
