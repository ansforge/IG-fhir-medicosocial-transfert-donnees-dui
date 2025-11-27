# tddui-task-moyen-ressource-ide-1-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-task-moyen-ressource-ide-1-pa-example**

## Example Task: tddui-task-moyen-ressource-ide-1-pa-example

Profil: [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)

**identifier**: `https://identifiant-medicosocial-moyenressource.esante.gouv.fr`/3480787529/123456789-MORE-1236

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-personnalise-pa-example.md)

**partOf**: [Task : identifier = https://identifiant-medicosocial-action.esante.gouv.fr#3480787529/123456789-ACTI-1236; status = in-progress; intent = plan; description = Atelier éducation risque de chute](Task-tddui-task-action-1-ide-pa-example.md)

**status**: In Progress

**intent**: plan

**description**: Temps de coordination IDE/médecin coordonnateur

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Titre du moyen ou de la ressource à utiliser. | Moyens mis en œuvre pour l'objectif 1(avec rattachement SERAFIN‑PH) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-task-moyen-ressource-ide-1-pa-example",
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
      "reference" : "CarePlan/tddui-careplan-projet-personnalise-pa-example"
    }
  ],
  "partOf" : [
    {
      "reference" : "Task/tddui-task-action-1-ide-pa-example"
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
      "valueString" : "Moyens mis en œuvre pour l'objectif 1(avec rattachement SERAFIN‑PH)"
    }
  ]
}

```
