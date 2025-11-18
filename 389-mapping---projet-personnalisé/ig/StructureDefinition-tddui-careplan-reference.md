# Lien vers le projet personnel - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lien vers le projet personnel**

## Extension: Lien vers le projet personnel 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference | *Version*:2.1.0-ballot |
| Active as of 2025-11-18 | *Computable Name*:TDDUICarePlanProjetPersoRef |

Liens vers le projet personnel, utilisables dans le profil TDDUIGoalObjectif.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md) and [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)
* Examples for this Extension: [Goal/tddui-goal-objectif-example](Goal-tddui-goal-objectif-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-careplan-reference)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-careplan-reference.csv), [Excel](StructureDefinition-tddui-careplan-reference.xlsx), [Schematron](StructureDefinition-tddui-careplan-reference.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-careplan-reference",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
  "version" : "2.1.0-ballot",
  "name" : "TDDUICarePlanProjetPersoRef",
  "title" : "Lien vers le projet personnel",
  "status" : "active",
  "date" : "2025-11-18T10:31:28+00:00",
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
  "description" : "Liens vers le projet personnel, utilisables dans le profil TDDUIGoalObjectif.",
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
      "expression" : "Goal"
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
        "short" : "Lien vers le projet personnel",
        "definition" : "Liens vers le projet personnel, utilisables dans le profil TDDUIGoalObjectif."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-perso"
            ]
          }
        ]
      }
    ]
  }
}

```
