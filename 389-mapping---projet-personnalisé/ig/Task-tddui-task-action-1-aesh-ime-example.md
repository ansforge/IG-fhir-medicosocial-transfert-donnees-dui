# tddui-task-action-1-aesh-ime-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-task-action-1-aesh-ime-example**

## Example Task: tddui-task-action-1-aesh-ime-example

Profil: [TDDUI Task Action](StructureDefinition-tddui-task-action.md)

**identifier**: `https://identifiant-medicosocial-action.esante.gouv.fr`/3480787529/123456-ACTI-1234

**basedOn**: [CarePlan Projet personnalisé de Hugo en IME](CarePlan-tddui-careplan-projet-personnalise-ime-example.md)

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
  "id" : "tddui-task-action-1-aesh-ime-example",
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
      "reference" : "CarePlan/tddui-careplan-projet-personnalise-ime-example"
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
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
            "code" : "titre"
          }
        ]
      },
      "valueString" : "Action de l'AS pour atteindre l'objectif 1"
    }
  ]
}

```
