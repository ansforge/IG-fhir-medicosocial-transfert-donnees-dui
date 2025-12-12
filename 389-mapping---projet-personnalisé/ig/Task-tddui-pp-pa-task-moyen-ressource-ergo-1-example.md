# tddui-pp-pa-task-moyen-ressource-ergo-1-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-task-moyen-ressource-ergo-1-example**

## Example Task: tddui-pp-pa-task-moyen-ressource-ergo-1-example

Profil: [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)

**identifier**: `https://identifiant-medicosocial-moyenressource.esante.gouv.fr`/3480787529/123456789-MORE-1234

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**partOf**: [Task : identifier = https://identifiant-medicosocial-action.esante.gouv.fr#3480787529/123456789-ACTI-1235; status = in-progress; intent = plan; description = Évaluer et aménagr la chambre (éclairage, barres, tapis)](Task-tddui-pp-pa-task-action-1-ergo-example.md)

**status**: In Progress

**intent**: plan

**description**: Barres d'appui et balisage lumineux (budget EHPAD)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Titre du moyen ou de la ressource à utiliser. | Moyens mis en œuvre pour l'objectif 1(avec rattachement SERAFIN‑PH) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-pp-pa-task-moyen-ressource-ergo-1-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-moyenressource.esante.gouv.fr",
      "value" : "3480787529/123456789-MORE-1234"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-pp-pa-careplan-example"
    }
  ],
  "partOf" : [
    {
      "reference" : "Task/tddui-pp-pa-task-action-1-ergo-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "Barres d'appui et balisage lumineux (budget EHPAD)",
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
