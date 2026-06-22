# TDDUI Patient Validation - Médicosocial - Transfert de données DUI v2.3.0-ballot

## Extension: TDDUI Patient Validation 

Validation par l'usager que l'événement a eu lieu.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)
* Examples for this Extension: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md) and [Encounter/tddui-encounter-evenement-example](Encounter-tddui-encounter-evenement-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-patient-validation.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-patient-validation.csv), [Excel](../StructureDefinition-tddui-patient-validation.xlsx), [Schematron](../StructureDefinition-tddui-patient-validation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-patient-validation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-validation",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIPatientValidation",
  "title" : "TDDUI Patient Validation",
  "status" : "active",
  "date" : "2026-06-22T08:40:39+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Validation par l'usager que l'événement a eu lieu.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Patient Validation",
      "definition" : "Validation par l'usager que l'événement a eu lieu."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-validation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
