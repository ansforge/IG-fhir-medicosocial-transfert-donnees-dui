# tddui-task-action-3-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-task-action-3-pa-example**

## Example Task: tddui-task-action-3-pa-example

Profil: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

**identifier**: 3480787529/123456789-PPAction-123456

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-perso-pa-example.md)

**status**: In Progress

**intent**: plan

**description**: •Animateur·trice (Interne) - Inscription chorale et club lecture - Organisation planning activités AS / Référent·e projet (Interne) - Mise en place visios hebdomadaires (tablette) - Accompagnement ponctuel si fatigue Psychologue (Interne) - Entretien de satisfaction semestriel 

> **input****type**:Titre de l'action à mener.**value**: Actions pour atteindre l'objectif 3

> **input****type**:Objectif(s).**value**:[Goal : extension = ->CarePlan Projet personnalisé de Mme Jeanne L.; identifier = 3480787529/123456789-PPObjectif-123456; lifecycleStatus = active; description = ; note = Objectif 3](Goal-tddui-goal-objectif-3-pa-example.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-task-action-3-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
    ]
  },
  "identifier" : [
    {
      "value" : "3480787529/123456789-PPAction-123456"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-careplan-projet-perso-pa-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "\n•Animateur·trice (Interne)\n- Inscription chorale et club lecture\n- Organisation planning activités\nAS / Référent·e projet (Interne)\n- Mise en place visios hebdomadaires (tablette)\n- Accompagnement ponctuel si fatigue\nPsychologue (Interne)\n- Entretien de satisfaction semestriel\n",
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
      "valueString" : "Actions pour atteindre l'objectif 3"
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
        "reference" : "Goal/tddui-goal-objectif-3-pa-example"
      }
    }
  ]
}

```
