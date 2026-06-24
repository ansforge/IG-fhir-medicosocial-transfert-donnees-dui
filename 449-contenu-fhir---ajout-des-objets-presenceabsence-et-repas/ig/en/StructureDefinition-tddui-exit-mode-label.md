# TDDUI Exit Mode Label - Médicosocial - Transfert de données DUI v2.3.0-ballot

## Extension: TDDUI Exit Mode Label 

Libellé du mode de sortie du séjour.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)
* Examples for this Extension: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md) and [Encounter/tddui-encounter-sejour-example](Encounter-tddui-encounter-sejour-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-exit-mode-label.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-exit-mode-label.csv), [Excel](../StructureDefinition-tddui-exit-mode-label.xlsx), [Schematron](../StructureDefinition-tddui-exit-mode-label.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-exit-mode-label",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exit-mode-label",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIExitModeLabel",
  "title" : "TDDUI Exit Mode Label",
  "status" : "active",
  "date" : "2026-06-24T07:42:34+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Libellé du mode de sortie du séjour.",
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
      "short" : "TDDUI Exit Mode Label",
      "definition" : "Libellé du mode de sortie du séjour."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exit-mode-label"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
