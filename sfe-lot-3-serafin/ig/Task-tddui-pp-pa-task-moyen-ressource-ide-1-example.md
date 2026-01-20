# tddui-pp-pa-task-moyen-ressource-ide-1-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-task-moyen-ressource-ide-1-example**

## Example Task: tddui-pp-pa-task-moyen-ressource-ide-1-example

Profil: [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)

**identifier**: `https://identifiant-medicosocial-moyenressource.esante.gouv.fr`/3480787529/123456789-MORE-1236

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**partOf**: [Task : identifier = https://identifiant-medicosocial-action.esante.gouv.fr#3480787529/123456789-ACTI-1236; status = in-progress; intent = plan; description = Atelier éducation risque de chute](Task-tddui-pp-pa-task-action-1-ide-example.md)

**status**: In Progress

**intent**: plan

**description**: Temps de coordination IDE/médecin coordonnateur

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Titre du moyen ou de la ressource à utiliser. | Moyens mis en œuvre pour l'objectif 1 (avec rattachement SERAFIN‑PH) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-pp-pa-task-moyen-ressource-ide-1-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-moyenressource.esante.gouv.fr",
      "value" : "3480787529/123456789-MORE-1236"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-pp-pa-careplan-example"
    }
  ],
  "partOf" : [
    {
      "reference" : "Task/tddui-pp-pa-task-action-1-ide-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "Temps de coordination IDE/médecin coordonnateur",
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
