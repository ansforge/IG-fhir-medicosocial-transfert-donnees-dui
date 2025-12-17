# TDDUI Task Action - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Action**

## Resource Profile: TDDUI Task Action 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action | *Version*:2.1.0 |
| Active as of 2025-12-17 | *Computable Name*:TDDUITaskAction |

 
Profil de la ressource Task permettant de représenter les actions réalisées dans le cadre du projet personnalisé. 

**Utilisations:**

* Utiliser ce Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référer à ce Profil: [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md) and [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)
* Exemples pour ce Profil: [Task/tddui-pp-ime-task-action-1-aesh-example](Task-tddui-pp-ime-task-action-1-aesh-example.md), [Task/tddui-pp-ime-task-action-1-educ-example](Task-tddui-pp-ime-task-action-1-educ-example.md), [Task/tddui-pp-pa-task-action-1-ergo-example](Task-tddui-pp-pa-task-action-1-ergo-example.md), [Task/tddui-pp-pa-task-action-1-ide-example](Task-tddui-pp-pa-task-action-1-ide-example.md)...Show 4 more,[Task/tddui-pp-pa-task-action-1-kine-example](Task-tddui-pp-pa-task-action-1-kine-example.md),[Task/tddui-pp-pa-task-action-2-anim-example](Task-tddui-pp-pa-task-action-2-anim-example.md),[Task/tddui-pp-pa-task-action-2-ide-example](Task-tddui-pp-pa-task-action-2-ide-example.md)and[Task/tddui-pp-pa-task-action-3-psy-example](Task-tddui-pp-pa-task-action-3-psy-example.md)

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
  "version" : "2.1.0",
  "name" : "TDDUITaskAction",
  "title" : "TDDUI Task Action",
  "status" : "active",
  "date" : "2025-12-17T09:35:57+00:00",
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
  "description" : "Profil de la ressource Task permettant de représenter les actions réalisées dans le cadre du projet personnalisé.",
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
            "map" : "Action"
          }
        ]
      },
      {
        "id" : "Task.meta.lastUpdated",
        "path" : "Task.meta.lastUpdated",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "statutAction.dateStatut"
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
            "map" : "idAction"
          }
        ]
      },
      {
        "id" : "Task.identifier.system",
        "path" : "Task.identifier.system",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-action.esante.gouv.fr"
      },
      {
        "id" : "Task.identifier.value",
        "path" : "Task.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-ACTI-numAction",
            "valueString" : "3480787529/123456789-ACTI-1234"
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
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"
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
        "short" : "Correspondance des statuts métier avec les codes FHIR : ENPREPARATION → draft, ACTIF → in-progress, TERMINE → completed, ANNULE → cancelled.",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "statutAction.statut"
          }
        ]
      },
      {
        "id" : "Task.status.extension",
        "path" : "Task.status.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Task.status.extension:auteurStatut",
        "path" : "Task.status.extension",
        "sliceName" : "auteurStatut",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskAction",
            "map" : "statutAction.auteur"
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
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role"
            ]
          }
        ],
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
        "short" : "Évaluation",
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
