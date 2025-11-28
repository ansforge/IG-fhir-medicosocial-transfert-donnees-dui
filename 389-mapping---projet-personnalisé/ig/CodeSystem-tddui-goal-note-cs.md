# TDDUI Goal Note CodeSystem - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Goal Note CodeSystem**

## CodeSystem: TDDUI Goal Note CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-goal-note-cs | *Version*:2.1.0-ballot |
| Active as of 2025-11-28 | *Computable Name*:TDDUIGoalNoteCS |

 
CodeSystem définissant les types de notes pour l'élément Goal.note 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIGoalNoteVS](ValueSet-tddui-goal-note-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-goal-note-cs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-goal-note-cs",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIGoalNoteCS",
  "title" : "TDDUI Goal Note CodeSystem",
  "status" : "active",
  "date" : "2025-11-28T10:30:25+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "CodeSystem définissant les types de notes pour l'élément Goal.note",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "titreObjectif",
      "display" : "Titre de l'objectif"
    },
    {
      "code" : "avisUsagerObjectif",
      "display" : "Avis de l'usager sur l'objectif"
    },
    {
      "code" : "strategieMiseEnOeuvreObjectif",
      "display" : "Stratégie de mise en œuvre de l'objectif"
    },
    {
      "code" : "origineAttente",
      "display" : "Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente."
    },
    {
      "code" : "commentaireAttente",
      "display" : "Permet de compléter ou éclairer la description de l'attente."
    }
  ]
}

```
