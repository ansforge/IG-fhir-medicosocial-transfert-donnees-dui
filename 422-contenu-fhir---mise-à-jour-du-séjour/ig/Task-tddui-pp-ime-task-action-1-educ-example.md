# tddui-pp-ime-task-action-1-educ-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-ime-task-action-1-educ-example**

## Example Task: tddui-pp-ime-task-action-1-educ-example

Profil: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

**identifier**: `https://identifiant-medicosocial-action.esante.gouv.fr`/3480787529/123456-ACTI-1235

**basedOn**: [CarePlan Projet personnalisé de Hugo en IME](CarePlan-tddui-pp-ime-careplan-example.md)

**status**: In Progress

**intent**: plan

**description**: Lecture guidée sur tablette 15 min/jour

**owner**: AESH

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Titre de l'action à mener. | Action de l'éducateur spécialisé pour atteindre l'objectif 2 |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-pp-ime-task-action-1-educ-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-action.esante.gouv.fr",
      "value" : "3480787529/123456-ACTI-1235"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-pp-ime-careplan-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "Lecture guidée sur tablette 15 min/jour",
  "owner" : {
    "display" : "AESH"
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
      "valueString" : "Action de l'éducateur spécialisé pour atteindre l'objectif 2"
    }
  ]
}

```
