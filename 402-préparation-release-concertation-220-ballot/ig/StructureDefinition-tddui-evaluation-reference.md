# Lien vers l'évaluation - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lien vers l'évaluation**

## Extension: Lien vers l'évaluation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-evaluation-reference | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*:TDDUIEvaluationRef |

Liens vers l'évaluation, utilisables dans le profil TDDUIGoalObjectif.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-evaluation-reference)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-evaluation-reference.csv), [Excel](StructureDefinition-tddui-evaluation-reference.xlsx), [Schematron](StructureDefinition-tddui-evaluation-reference.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-evaluation-reference",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-evaluation-reference",
  "version" : "2.1.0",
  "name" : "TDDUIEvaluationRef",
  "title" : "Lien vers l'évaluation",
  "status" : "active",
  "date" : "2025-12-18T09:03:55+00:00",
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
  "description" : "Liens vers l'évaluation, utilisables dans le profil TDDUIGoalObjectif.",
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
        "short" : "Lien vers l'évaluation",
        "definition" : "Liens vers l'évaluation, utilisables dans le profil TDDUIGoalObjectif."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-evaluation-reference"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"
            ]
          }
        ]
      }
    ]
  }
}

```
