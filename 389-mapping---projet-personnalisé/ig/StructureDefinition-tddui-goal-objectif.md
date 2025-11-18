# TDDUI Goal Objectif - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Goal Objectif**

## Resource Profile: TDDUI Goal Objectif 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif | *Version*:2.1.0-ballot |
| Active as of 2025-11-18 | *Computable Name*:TDDUIGoalObjectif |

 
Profil de la ressource TDDUIGoalObjectif permettant de représenter les résultats à atteindre dans le cadre du projet personnalisé. 

**Usages:**

* Refer to this Profile: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)
* Examples for this Profile: [Goal/tddui-goal-objectif-example](Goal-tddui-goal-objectif-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-goal-objectif)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-goal-objectif.csv), [Excel](StructureDefinition-tddui-goal-objectif.xlsx), [Schematron](StructureDefinition-tddui-goal-objectif.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-goal-objectif",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIGoalObjectif",
  "title" : "TDDUI Goal Objectif",
  "status" : "active",
  "date" : "2025-11-18T15:24:05+00:00",
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
  "description" : "Profil de la ressource TDDUIGoalObjectif permettant de représenter les résultats à atteindre dans le cadre du projet personnalisé.",
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
      "identity" : "specmetier-to-TDDUIGoalObjectif",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
      "name" : "Modèle de contenu DUI"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Goal",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Goal",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Goal",
        "path" : "Goal",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "Objectif"
          }
        ]
      },
      {
        "id" : "Goal.extension",
        "path" : "Goal.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Goal.extension:referenceEvaluation",
        "path" : "Goal.extension",
        "sliceName" : "referenceEvaluation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-evaluation-reference"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "evaluationObjectif"
          }
        ]
      },
      {
        "id" : "Goal.extension:referenceProjetPerso",
        "path" : "Goal.extension",
        "sliceName" : "referenceProjetPerso",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference"
            ]
          }
        ]
      },
      {
        "id" : "Goal.identifier",
        "path" : "Goal.identifier",
        "short" : "Identifiant de l'objectif",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "identifiantObjectif"
          }
        ]
      },
      {
        "id" : "Goal.identifier.value",
        "path" : "Goal.identifier.value",
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPObjectif-identifiantObjectif",
            "valueString" : "123456"
          }
        ]
      },
      {
        "id" : "Goal.category",
        "path" : "Goal.category",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "domaineObjectif"
          }
        ]
      },
      {
        "id" : "Goal.description.text",
        "path" : "Goal.description.text",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "descriptionObjectif"
          }
        ]
      },
      {
        "id" : "Goal.subject",
        "path" : "Goal.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
            ]
          }
        ]
      },
      {
        "id" : "Goal.target.detail[x]",
        "path" : "Goal.target.detail[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Goal.target.detail[x]:detailString",
        "path" : "Goal.target.detail[x]",
        "sliceName" : "detailString",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "resultatAttenduObjectif"
          }
        ]
      },
      {
        "id" : "Goal.target.due[x]",
        "path" : "Goal.target.due[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Goal.target.due[x]:dueDate",
        "path" : "Goal.target.due[x]",
        "sliceName" : "dueDate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "dateFinObjectif"
          }
        ]
      },
      {
        "id" : "Goal.expressedBy",
        "path" : "Goal.expressedBy",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
            ]
          }
        ]
      },
      {
        "id" : "Goal.addresses",
        "path" : "Goal.addresses",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note",
        "path" : "Goal.note",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note').value"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Goal.note.extension",
        "path" : "Goal.note.extension",
        "min" : 1
      },
      {
        "id" : "Goal.note.extension:TDDUIGoalNoteExtension",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIGoalNoteExtension",
        "min" : 1,
        "max" : "3",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note:titreObjectif",
        "path" : "Goal.note",
        "sliceName" : "titreObjectif",
        "short" : "Titre de l'objectif",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Goal.note:titreObjectif.extension:TDDUIGoalNoteExtension",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIGoalNoteExtension",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note:titreObjectif.extension:TDDUIGoalNoteExtension.value[x]",
        "path" : "Goal.note.extension.value[x]",
        "patternCode" : "titreObjectif"
      },
      {
        "id" : "Goal.note:titreObjectif.text",
        "path" : "Goal.note.text",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "titreObjectif"
          }
        ]
      },
      {
        "id" : "Goal.note:avisUsagerObjectif",
        "path" : "Goal.note",
        "sliceName" : "avisUsagerObjectif",
        "short" : "Avis de l'usager sur l'objectif",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Goal.note:avisUsagerObjectif.extension:TDDUIGoalNoteExtension",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIGoalNoteExtension",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note:avisUsagerObjectif.extension:TDDUIGoalNoteExtension.value[x]",
        "path" : "Goal.note.extension.value[x]",
        "patternCode" : "avisUsagerObjectif"
      },
      {
        "id" : "Goal.note:avisUsagerObjectif.text",
        "path" : "Goal.note.text",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "avisUsagerObjectif"
          }
        ]
      },
      {
        "id" : "Goal.note:strategieMiseEnOeuvreObjectif",
        "path" : "Goal.note",
        "sliceName" : "strategieMiseEnOeuvreObjectif",
        "short" : "Stratégie de mise en œuvre de l'objectif",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Goal.note:strategieMiseEnOeuvreObjectif.extension:TDDUIGoalNoteExtension",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIGoalNoteExtension",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note:strategieMiseEnOeuvreObjectif.extension:TDDUIGoalNoteExtension.value[x]",
        "path" : "Goal.note.extension.value[x]",
        "patternCode" : "strategieMiseEnOeuvreObjectif"
      },
      {
        "id" : "Goal.note:strategieMiseEnOeuvreObjectif.text",
        "path" : "Goal.note.text",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalObjectif",
            "map" : "strategieMiseEnOeuvreObjectif"
          }
        ]
      }
    ]
  }
}

```
