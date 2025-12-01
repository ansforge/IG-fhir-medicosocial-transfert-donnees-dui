# Evénement hors prestation - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Evénement hors prestation**

## Extension: Evénement hors prestation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-outside-service | *Version*:2.1.0-ballot |
| Active as of 2025-12-01 | *Computable Name*:TDDUIEventOutsideService |

Evénement hors prestation prévue dans le projet personnalisé de l’usager.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-outside-service)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-outside-service.csv), [Excel](StructureDefinition-tddui-outside-service.xlsx), [Schematron](StructureDefinition-tddui-outside-service.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-outside-service",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-outside-service",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIEventOutsideService",
  "title" : "Evénement hors prestation",
  "status" : "active",
  "date" : "2025-12-01T08:11:14+00:00",
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
  "description" : "Evénement hors prestation prévue dans le projet personnalisé de l’usager.",
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
      "expression" : "Encounter"
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
        "short" : "Evénement hors prestation",
        "definition" : "Evénement hors prestation prévue dans le projet personnalisé de l’usager."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-outside-service"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
