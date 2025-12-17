# tddui-pp-pa-task-moyen-ressource-ide-2-example - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-task-moyen-ressource-ide-2-example**

## Example Task: tddui-pp-pa-task-moyen-ressource-ide-2-example

Profil: [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)

**identifier**: `https://identifiant-medicosocial-moyenressource.esante.gouv.fr`/3480787529/123456789-MORE-123615

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**partOf**: [Task : identifier = https://identifiant-medicosocial-action.esante.gouv.fr#3480787529/123456789-ACTI-12342; status = in-progress; intent = plan; description = Pesée mensuelle et dépistage dénutrition](Task-tddui-pp-pa-task-action-2-ide-example.md)

**status**: In Progress

**intent**: plan

**description**: Carnet de suivi poids

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Titre du moyen ou de la ressource à utiliser. | Moyens mis en œuvre pour l'objectif 2 (avec rattachement SERAFIN‑PH) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-pp-pa-task-moyen-ressource-ide-2-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-moyenressource.esante.gouv.fr",
      "value" : "3480787529/123456789-MORE-123615"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-pp-pa-careplan-example"
    }
  ],
  "partOf" : [
    {
      "reference" : "Task/tddui-pp-pa-task-action-2-ide-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "Carnet de suivi poids",
  "input" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-moyen-ressource-codesystem",
            "code" : "titre"
          }
        ]
      },
      "valueString" : "Moyens mis en œuvre pour l'objectif 2 (avec rattachement SERAFIN‑PH)"
    }
  ]
}

```
