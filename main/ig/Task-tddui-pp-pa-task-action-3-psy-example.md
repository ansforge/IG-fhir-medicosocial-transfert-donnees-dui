# tddui-pp-pa-task-action-3-psy-example - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-task-action-3-psy-example**

## Example Task: tddui-pp-pa-task-action-3-psy-example

Profil: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

**identifier**: `https://identifiant-medicosocial-action.esante.gouv.fr`/3480787529/123456789-ACTI-1238

**basedOn**: [CarePlan Projet personnalisé de Hugo en IME](CarePlan-tddui-pp-ime-careplan-example.md)

**status**: In Progress

**intent**: plan

**description**: Entretien de satisfaction semestriel

**owner**: Psychologue

> **input****type**:Titre de l'action à mener.**value**: Action du psychologue pour atteindre l'objectif 3

> **input****type**:Objectif(s).**value**:[Goal : extension = ->CarePlan Projet personnalisé de Mme Jeanne L.; identifier = https://identifiant-medicosocial-objectif.esante.gouv.fr#3480787529/123456789-OBJE-1236; lifecycleStatus = active; description = ; note = Objectif 3](Goal-tddui-pp-pa-goal-objectif-3-example.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-pp-pa-task-action-3-psy-example",
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
      "reference" : "CarePlan/tddui-pp-ime-careplan-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "Entretien de satisfaction semestriel",
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
      "valueString" : "Action du psychologue pour atteindre l'objectif 3"
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
        "reference" : "Goal/tddui-pp-pa-goal-objectif-3-example"
      }
    }
  ]
}

```
