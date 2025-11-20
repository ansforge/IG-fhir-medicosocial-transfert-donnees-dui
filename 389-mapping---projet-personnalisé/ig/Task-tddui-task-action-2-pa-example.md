# tddui-task-action-2-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-task-action-2-pa-example**

## Example Task: tddui-task-action-2-pa-example

Profil: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

**identifier**: 3480787529/123456789-PPAction-12345

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-perso-pa-example.md)

**status**: In Progress

**intent**: plan

**description**: IDE (Interne) - Pesée mensuelle et dépistage dénutrition - Surveillance hydratation/appétit (transmissions) Animateur·trice (Interne) - Atelier cuisine mensuel co‑animé avec résidents - Recueil préférences culinaires Cuisine/économe (Interne) - Menus enrichis adaptés aux goûts (textures, portions) 

> **input****type**:Titre de l'action à mener.**value**: Actions pour atteindre l'objectif 2

> **input****type**:Objectif(s).**value**:[Goal : extension = ->CarePlan Projet personnalisé de Mme Jeanne L.; identifier = 3480787529/123456789-PPObjectif-12345; lifecycleStatus = active; description = ; note = Objectif 2](Goal-tddui-goal-objectif-2-pa-example.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-task-action-2-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
    ]
  },
  "identifier" : [
    {
      "value" : "3480787529/123456789-PPAction-12345"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-careplan-projet-perso-pa-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "\nIDE (Interne)\n- Pesée mensuelle et dépistage dénutrition\n- Surveillance hydratation/appétit (transmissions)\nAnimateur·trice (Interne)\n- Atelier cuisine mensuel co‑animé avec résidents\n- Recueil préférences culinaires\nCuisine/économe (Interne)\n- Menus enrichis adaptés aux goûts (textures, portions)\n",
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
      "valueString" : "Actions pour atteindre l'objectif 2"
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
        "reference" : "Goal/tddui-goal-objectif-2-pa-example"
      }
    }
  ]
}

```
