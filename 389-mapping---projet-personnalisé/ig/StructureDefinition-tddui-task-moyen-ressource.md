# TDDUI Task MoyenRessource - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task MoyenRessource**

## Resource Profile: TDDUI Task MoyenRessource 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource | *Version*:2.1.0-ballot |
| Active as of 2025-11-20 | *Computable Name*:TDDUITaskMoyenRessource |

 
Profil de la ressource Task permettant de représenter les moyens ou ressources utilisées dans le cadre du projet personnalisé. 

**Usages:**

* Examples for this Profile: [Task/tddui-task-moyen-ressource-pa-example](Task-tddui-task-moyen-ressource-pa-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-task-moyen-ressource)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-task-moyen-ressource.csv), [Excel](StructureDefinition-tddui-task-moyen-ressource.xlsx), [Schematron](StructureDefinition-tddui-task-moyen-ressource.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-task-moyen-ressource",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource",
  "version" : "2.1.0-ballot",
  "name" : "TDDUITaskMoyenRessource",
  "title" : "TDDUI Task MoyenRessource",
  "status" : "active",
  "date" : "2025-11-20T16:06:37+00:00",
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
  "description" : "Profil de la ressource Task permettant de représenter les moyens ou ressources utilisées dans le cadre du projet personnalisé.",
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
      "identity" : "specmetier-to-TDDUITaskMoyenRessource",
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
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "MoyenRessource"
          }
        ]
      },
      {
        "id" : "Task.identifier",
        "path" : "Task.identifier",
        "short" : "Identifiant du moyen ou de la ressource",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "identifiantMoyenRessource"
          }
        ]
      },
      {
        "id" : "Task.identifier.value",
        "path" : "Task.identifier.value",
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPMoyenRessource-identifiantMoyenRessource",
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
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personalise"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "ProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "Task.partOf",
        "path" : "Task.partOf",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "Action"
          }
        ]
      },
      {
        "id" : "Task.code",
        "path" : "Task.code",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "typeMoyenRessource"
          }
        ]
      },
      {
        "id" : "Task.description",
        "path" : "Task.description",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "descriptionMoyenRessource"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.start",
        "path" : "Task.executionPeriod.start",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "dateDebutMoyenRessource"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.end",
        "path" : "Task.executionPeriod.end",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "dateFinMoyenRessource"
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
        "short" : "Titre du moyen ou de la ressource",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "titreMoyenRessource"
          }
        ]
      },
      {
        "id" : "Task.input:titre.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-moyen-ressource-codesystem",
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
        "short" : "Evaluation structurée",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "evaluationMoyenRessource"
          }
        ]
      },
      {
        "id" : "Task.input:evaluation.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-moyen-ressource-codesystem",
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
        "id" : "Task.input:pieceJointe",
        "path" : "Task.input",
        "sliceName" : "pieceJointe",
        "short" : "Pièce jointe associée",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "pieceJointeMoyenRessource"
          }
        ]
      },
      {
        "id" : "Task.input:pieceJointe.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-moyen-ressource-codesystem",
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
        "short" : "Evaluation non structurée",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskMoyenRessource",
            "map" : "evaluationNonStructureeMoyenRessource"
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
      }
    ]
  }
}

```
