# TDDUI PP IME Task Action 1 AESH Example - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI PP IME Task Action 1 AESH Example**

## Example Task: TDDUI PP IME Task Action 1 AESH Example

Profil: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

**identifier**: `https://identifiant-medicosocial-action.esante.gouv.fr`/3480787529/123456-ACTI-1234

**basedOn**: [CarePlan Projet personnalisé de Hugo en IME](CarePlan-tddui-pp-ime-careplan-example.md)

**status**: In Progress

**intent**: plan

**description**: Vérification port du casque

**owner**: AESH

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Titre de l'action à mener. | Action de l'AS pour atteindre l'objectif 1 |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-pp-ime-task-action-1-aesh-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-action.esante.gouv.fr",
      "value" : "3480787529/123456-ACTI-1234"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-pp-ime-careplan-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "Vérification port du casque",
  "owner" : {
    "display" : "AESH"
  },
  "input" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-action",
            "code" : "titre"
          }
        ]
      },
      "valueString" : "Action de l'AS pour atteindre l'objectif 1"
    }
  ]
}

```
