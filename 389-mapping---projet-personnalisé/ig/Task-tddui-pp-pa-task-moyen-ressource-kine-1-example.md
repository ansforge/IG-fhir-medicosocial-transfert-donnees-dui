# tddui-pp-pa-task-moyen-ressource-kine-1-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-task-moyen-ressource-kine-1-example**

## Example Task: tddui-pp-pa-task-moyen-ressource-kine-1-example

Profil: [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)

**identifier**: `https://identifiant-medicosocial-moyenressource.esante.gouv.fr`/3480787529/123456789-MORE-1235

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**partOf**: [Task : identifier = https://identifiant-medicosocial-action.esante.gouv.fr#3480787529/123456789-ACTI-1237; status = in-progress; intent = plan; description = Programme équilibre/marche 2×/semaine 12 semaines](Task-tddui-pp-pa-task-action-1-kine-example.md)

**status**: In Progress

**intent**: plan

**description**: 30 h de kinésithérapie/6 mois

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Titre du moyen ou de la ressource à utiliser. | Moyens mis en œuvre pour l'objectif 1 (avec rattachement SERAFIN‑PH) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-pp-pa-task-moyen-ressource-kine-1-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-moyenressource.esante.gouv.fr",
      "value" : "3480787529/123456789-MORE-1235"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-pp-pa-careplan-example"
    }
  ],
  "partOf" : [
    {
      "reference" : "Task/tddui-pp-pa-task-action-1-kine-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "30 h de kinésithérapie/6 mois",
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
      "valueString" : "Moyens mis en œuvre pour l'objectif 1 (avec rattachement SERAFIN‑PH)"
    }
  ]
}

```
