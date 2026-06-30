# TDDUI Facturation - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Extension: TDDUI Facturation 

Indique si une facture a été établie.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Slot Presence Absence](StructureDefinition-tddui-slot-presence-absence.md)
* Examples for this Extension: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md) and [Slot/tddui-slot-presence-absence-example](Slot-tddui-slot-presence-absence-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-facturation.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-facturation.csv), [Excel](../StructureDefinition-tddui-facturation.xlsx), [Schematron](../StructureDefinition-tddui-facturation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-facturation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-facturation",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIFacturation",
  "title" : "TDDUI Facturation",
  "status" : "active",
  "date" : "2026-06-30T14:42:47+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Indique si une facture a été établie.",
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
    "expression" : "Slot"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Facturation",
      "definition" : "Indique si une facture a été établie."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-facturation"
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
