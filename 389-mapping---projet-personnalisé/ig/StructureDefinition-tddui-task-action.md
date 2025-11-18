# TDDUI Task Action - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Action**

## Resource Profile: TDDUI Task Action 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action | *Version*:2.1.0-ballot |
| Active as of 2025-11-18 | *Computable Name*:TDDUITaskAction |

 
Profil de la ressource Task permettant de représenter les actions réalisés dans le cadre du projet personnalisé. 

**Usages:**

* Refer to this Profile: [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md) and [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-task-action)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-task-action.csv), [Excel](StructureDefinition-tddui-task-action.xlsx), [Schematron](StructureDefinition-tddui-task-action.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-task-action",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action",
  "version" : "2.1.0-ballot",
  "name" : "TDDUITaskAction",
  "title" : "TDDUI Task Action",
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
  "description" : "Profil de la ressource Task permettant de représenter les actions réalisés dans le cadre du projet personnalisé.",
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
      "identity" : "specmetier-to-TDDUITaskAction",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
      "name" : "Modèle de contenu DUI"
    },
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Task",
        "path" : "Task",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "Besoin"
          }
        ]
      },
      {
        "id" : "Task.identifier",
        "path" : "Task.identifier",
        "short" : "Identifiant de l'action",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "identifiantAction"
          }
        ]
      },
      {
        "id" : "Task.identifier.value",
        "path" : "Task.identifier.value",
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-ACTI-numAction",
            "valueString" : "123456"
          }
        ]
      },
      {
        "id" : "Task.basedOn",
        "path" : "Task.basedOn",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-perso"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "ProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "Task.status",
        "path" : "Task.status",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "statutAction"
          }
        ]
      },
      {
        "id" : "Task.description",
        "path" : "Task.description",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "descriptionAction"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.start",
        "path" : "Task.executionPeriod.start",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "dateDebutAction"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.end",
        "path" : "Task.executionPeriod.end",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "dateFinAction"
          }
        ]
      },
      {
        "id" : "Task.owner",
        "path" : "Task.owner",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "referentAction"
          }
        ]
      },
      {
        "id" : "Task.input",
        "path" : "Task.input",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Task.input:titre",
        "path" : "Task.input",
        "sliceName" : "titre",
        "short" : "Titre de l’action",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "titreAction"
          }
        ]
      },
      {
        "id" : "Task.input:titre.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
              "code" : "titre"
            }
          ]
        }
      },
      {
        "id" : "Task.input:titre.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Task.input:evaluation",
        "path" : "Task.input",
        "sliceName" : "evaluation",
        "short" : "Évaluation structurée associée",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "evaluationAction"
          }
        ]
      },
      {
        "id" : "Task.input:evaluation.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
              "code" : "evaluation"
            }
          ]
        }
      },
      {
        "id" : "Task.input:evaluation.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"
            ]
          }
        ]
      },
      {
        "id" : "Task.input:avisUsager",
        "path" : "Task.input",
        "sliceName" : "avisUsager",
        "short" : "Avis de l'usager",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "avisUsagerAction"
          }
        ]
      },
      {
        "id" : "Task.input:avisUsager.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
              "code" : "avisUsager"
            }
          ]
        }
      },
      {
        "id" : "Task.input:avisUsager.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Task.input:resultatAttendu",
        "path" : "Task.input",
        "sliceName" : "resultatAttendu",
        "short" : "Résultat attendu",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "resultatAttenduAction"
          }
        ]
      },
      {
        "id" : "Task.input:resultatAttendu.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
              "code" : "resultatAttendu"
            }
          ]
        }
      },
      {
        "id" : "Task.input:resultatAttendu.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Task.input:pieceJointe",
        "path" : "Task.input",
        "sliceName" : "pieceJointe",
        "short" : "Pièce jointe associée",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "pieceJointeAction"
          }
        ]
      },
      {
        "id" : "Task.input:pieceJointe.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
              "code" : "pieceJointe"
            }
          ]
        }
      },
      {
        "id" : "Task.input:pieceJointe.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"
            ]
          }
        ]
      },
      {
        "id" : "Task.input:evaluationNonStructuree",
        "path" : "Task.input",
        "sliceName" : "evaluationNonStructuree",
        "short" : "EValuation non structurée",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "evaluationNonStructureeAction"
          }
        ]
      },
      {
        "id" : "Task.input:evaluationNonStructuree.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-moyen-ressource-codesystem",
              "code" : "evaluationNonStructuree"
            }
          ]
        }
      },
      {
        "id" : "Task.input:evaluationNonStructuree.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"
            ]
          }
        ]
      },
      {
        "id" : "Task.input:objectif",
        "path" : "Task.input",
        "sliceName" : "objectif",
        "short" : "Objectif",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "Objectif"
          }
        ]
      },
      {
        "id" : "Task.input:objectif.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
              "code" : "objectif"
            }
          ]
        }
      },
      {
        "id" : "Task.input:objectif.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif"
            ]
          }
        ]
      }
    ]
  }
}

```
