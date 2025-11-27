# tddui-task-action-1-psy-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-task-action-1-psy-pa-example**

## Example Task: tddui-task-action-1-psy-pa-example

Profil: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

**identifier**: `https://identifiant-medicosocial-action.esante.gouv.fr`/3480787529/123456789-ACTI-1238

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-personnalise-pa-example.md)

**status**: In Progress

**intent**: plan

**description**: Soutenir à la gestion de l'appréhension

**owner**: Psychologue

> **input****type**:Titre de l'action à mener.**value**: Action du psychologue pour atteindre l'objectif 1

> **input****type**:Objectif(s).**value**:[Goal : extension = ->CarePlan Projet personnalisé de Mme Jeanne L.,->DocumentReference : masterIdentifier = 3480787529/123456789-PPER-bilanObj-1234; status = current; identifier = https://identifiant-medicosocial-objectif.esante.gouv.fr#3480787529/123456789-OBJE-1234; lifecycleStatus = active; description = ; note = Objectif 1](Goal-tddui-goal-objectif-1-pa-example.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-task-action-1-psy-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-action.esante.gouv.fr",
      "value" : "3480787529/123456789-ACTI-1238"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-careplan-projet-personnalise-pa-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "Soutenir à la gestion de l'appréhension",
  "owner" : {
    "display" : "Psychologue"
  },
  "input" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
            "code" : "titre"
          }
        ]
      },
      "valueString" : "Action du psychologue pour atteindre l'objectif 1"
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
            "code" : "objectif"
          }
        ]
      },
      "valueReference" : {
        "reference" : "Goal/tddui-goal-objectif-1-pa-example"
      }
    }
  ]
}

```
