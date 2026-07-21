# Description - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Extension: Description 

Description du contact PersonnePhysique.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-related-person-contact-description.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-related-person-contact-description.csv), [Excel](../StructureDefinition-tddui-related-person-contact-description.xlsx), [Schematron](../StructureDefinition-tddui-related-person-contact-description.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-related-person-contact-description",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact-description",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIRelatedPersonContactDescription",
  "title" : "Description",
  "status" : "active",
  "date" : "2026-07-21T08:38:17+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Description du contact PersonnePhysique.",
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
    "expression" : "RelatedPerson"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Description",
      "definition" : "Description du contact PersonnePhysique."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact-description"
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
