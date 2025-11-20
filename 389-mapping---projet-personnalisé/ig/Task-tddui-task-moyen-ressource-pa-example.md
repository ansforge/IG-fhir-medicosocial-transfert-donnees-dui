# tddui-task-moyen-ressource-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-task-moyen-ressource-pa-example**

## Example Task: tddui-task-moyen-ressource-pa-example

Profil: [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)

**identifier**: 3480787529/123456789-PPMoyenRessource-1234

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-perso-pa-example.md)

**status**: In Progress

**intent**: plan

**description**: Objectif 1 : - Barres d'appui et balisage lumineux (budget EHPAD) - 30 h de kinésithérapie/6 mois - Temps de coordination IDE/médecin coordonnateur Obejctif 2 : - Approvisionnement adapté (cuisine) - Matériel d'atelier (budget animation) - Carnet de suivi poids Objectif 3 : - Tablette + Wi‑Fi EHPAD - Créneaux animation - Convocations CVS, salle d'activité 

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Titre du moyen ou de la ressource à utiliser. | Moyens mis en œuvre (avec rattachement SERAFIN‑PH) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-task-moyen-ressource-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource"
    ]
  },
  "identifier" : [
    {
      "value" : "3480787529/123456789-PPMoyenRessource-1234"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-careplan-projet-perso-pa-example"
    }
  ],
  "status" : "in-progress",
  "intent" : "plan",
  "description" : "\nObjectif 1 :\n- Barres d'appui et balisage lumineux (budget EHPAD)\n- 30 h de kinésithérapie/6 mois\n- Temps de coordination IDE/médecin coordonnateur\n\nObejctif 2 :\n- Approvisionnement adapté (cuisine)\n- Matériel d'atelier (budget animation)\n- Carnet de suivi poids\n\nObjectif 3 :\n- Tablette + Wi‑Fi EHPAD\n- Créneaux animation\n- Convocations CVS, salle d'activité\n",
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
      "valueString" : "Moyens mis en œuvre (avec rattachement SERAFIN‑PH)"
    }
  ]
}

```
