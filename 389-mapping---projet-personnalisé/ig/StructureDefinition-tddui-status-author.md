# TDDUI Auteur statut - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Auteur statut**

## Extension: TDDUI Auteur statut 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author | *Version*:2.1.0-ballot |
| Active as of 2025-12-09 | *Computable Name*:TDDUIStatusAuthor |

Extension permettant de représenter la profession du professionnel.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md), [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md), [TDDUI Task Action](StructureDefinition-tddui-task-action.md) and [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-status-author)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-status-author.csv), [Excel](StructureDefinition-tddui-status-author.xlsx), [Schematron](StructureDefinition-tddui-status-author.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-status-author",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIStatusAuthor",
  "title" : "TDDUI Auteur statut",
  "status" : "active",
  "date" : "2025-12-09T10:26:43+00:00",
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
      "expression" : "Goal.lifecycleStatus"
    },
    {
      "type" : "element",
      "expression" : "CarePlan.status"
    },
    {
      "type" : "element",
      "expression" : "Task.status"
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
        "short" : "TDDUI Auteur statut",
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
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Auteur du statut.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role"
            ]
          }
        ]
      }
    ]
  }
}

```
