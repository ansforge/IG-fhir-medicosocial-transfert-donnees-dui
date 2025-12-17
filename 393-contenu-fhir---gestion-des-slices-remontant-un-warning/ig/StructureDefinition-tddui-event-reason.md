# Motif de l’évènement - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motif de l’évènement**

## Extension: Motif de l’évènement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-reason | *Version*:2.1.0 |
| Active as of 2025-12-17 | *Computable Name*:TDDUIEventReason |

Contexte justifiant la réalisation de l’évènement.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)
* Exemples pour ce Extension: [Bundle/ExampleTDDUIBundle](Bundle-ExampleTDDUIBundle.md) and [Encounter/tddui-encounter-evenement-example](Encounter-tddui-encounter-evenement-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-event-reason)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-event-reason.csv), [Excel](StructureDefinition-tddui-event-reason.xlsx), [Schematron](StructureDefinition-tddui-event-reason.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-event-reason",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-reason",
  "version" : "2.1.0",
  "name" : "TDDUIEventReason",
  "title" : "Motif de l’évènement",
  "status" : "active",
  "date" : "2025-12-17T09:55:45+00:00",
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
  "description" : "Contexte justifiant la réalisation de l’évènement.",
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
        "short" : "Motif de l’évènement",
        "definition" : "Contexte justifiant la réalisation de l’évènement."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-reason"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
