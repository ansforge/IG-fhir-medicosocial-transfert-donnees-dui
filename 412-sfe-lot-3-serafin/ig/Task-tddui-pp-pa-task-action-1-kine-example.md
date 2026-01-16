# tddui-pp-pa-task-action-1-kine-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-task-action-1-kine-example**

## Example Task: tddui-pp-pa-task-action-1-kine-example

Profil: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

**identifier**: `https://identifiant-medicosocial-action.esante.gouv.fr`/3480787529/123456789-ACTI-1237

**basedOn**: [CarePlan Projet personnalisé de Hugo en IME](CarePlan-tddui-pp-ime-careplan-example.md)

**status**: In Progress

**intent**: plan

**description**: Programme équilibre/marche 2×/semaine 12 semaines

**owner**: Kinésithérapeute

> **input****type**:Titre de l'action à mener.**value**: Action du kinésithérapeute pour atteindre l'objectif 1

> **input****type**:Objectif(s).**value**:[Goal : extension = ->CarePlan Projet personnalisé de Mme Jeanne L.,->DocumentReference : masterIdentifier = 3480787529/123456789-PPER-bilanObj-1234; status = current; identifier = https://identifiant-medicosocial-objectif.esante.gouv.fr#3480787529/123456789-OBJE-1234; lifecycleStatus = active; description = ; note = Objectif 1](Goal-tddui-pp-pa-goal-objectif-1-example.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-pp-pa-task-action-1-kine-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-action.esante.gouv.fr",
      "value" : "3480787529/123456789-ACTI-1237"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-pp-ime-careplan-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "Programme équilibre/marche 2×/semaine 12 semaines",
  "owner" : {
    "display" : "Kinésithérapeute"
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
      "valueString" : "Action du kinésithérapeute pour atteindre l'objectif 1"
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
        "reference" : "Goal/tddui-pp-pa-goal-objectif-1-example"
      }
    }
  ]
}

```
