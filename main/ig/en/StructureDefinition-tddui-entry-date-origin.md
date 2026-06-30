# TDDUI Entry Date Origin - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Extension: TDDUI Entry Date Origin 

Extension permettant de véhiculer la date d'entrée dans l'ESSMS de provenance.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-entry-date-origin.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-entry-date-origin.csv), [Excel](../StructureDefinition-tddui-entry-date-origin.xlsx), [Schematron](../StructureDefinition-tddui-entry-date-origin.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-entry-date-origin",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-entry-date-origin",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIEntryDateOrigin",
  "title" : "TDDUI Entry Date Origin",
  "status" : "active",
  "date" : "2026-06-30T14:01:12+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension permettant de véhiculer la date d'entrée dans l'ESSMS de provenance.",
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
    "expression" : "Encounter.hospitalization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Entry Date Origin",
      "definition" : "Extension permettant de véhiculer la date d'entrée dans l'ESSMS de provenance."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-entry-date-origin"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
