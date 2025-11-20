# tddui-task-action-1-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-task-action-1-pa-example**

## Example Task: tddui-task-action-1-pa-example

Profil: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

**identifier**: 3480787529/123456789-PPAction-1234

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-perso-pa-example.md)

**status**: In Progress

**intent**: plan

**description**: Ergothérapeute (Externe) - Évaluation et aménagement chambre (éclairage, barres, tapis) - Formation à l'utilisation des aides techniques Kinésithérapeute (Externe) - Programme équilibre/marche 2×/semaine 12 semaines - Exercices matinaux (fiche) IDE (Interne) - Atelier éducation risque de chute - Réévaluation traitements avec médecin coord. AS (Interne) - Vérification chaussures/aides techniques - Accompagnement premiers déplacements Psychologue (Interne) - Soutien à la gestion de l'appréhension 

> **input****type**:Titre de l'action à mener.**value**: Actions pour atteindre l'objectif 1

> **input****type**:Objectif(s).**value**:[Goal : extension = ->CarePlan Projet personnalisé de Mme Jeanne L.; identifier = 3480787529/123456789-PPObjectif-1234; lifecycleStatus = active; description = ; note = Objectif 1](Goal-tddui-goal-objectif-1-pa-example.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-task-action-1-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
    ]
  },
  "identifier" : [
    {
      "value" : "3480787529/123456789-PPAction-1234"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-careplan-projet-perso-pa-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "\nErgothérapeute (Externe)\n- Évaluation et aménagement chambre (éclairage, barres, tapis)\n- Formation à l'utilisation des aides techniques\n\nKinésithérapeute (Externe)\n- Programme équilibre/marche 2×/semaine 12 semaines\n- Exercices matinaux (fiche)\n\nIDE (Interne)\n- Atelier éducation risque de chute\n- Réévaluation traitements avec médecin coord.\n\nAS (Interne)\n- Vérification chaussures/aides techniques\n- Accompagnement premiers déplacements\n\nPsychologue (Interne) \n- Soutien à la gestion de l'appréhension  \n",
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
      "valueString" : "Actions pour atteindre l'objectif 1"
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
