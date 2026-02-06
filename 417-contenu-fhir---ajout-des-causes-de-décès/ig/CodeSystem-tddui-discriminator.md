# TDDUI Discriminator - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Discriminator**

## CodeSystem: TDDUI Discriminator 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator | *Version*:2.2.0-ballot |
| Active as of 2026-02-06 | *Computable Name*:TDDUIDiscriminator |

 
CodeSystem définissant les codes discriminants. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUICarePlanSupportingInfo](ValueSet-tddui-care-plan-supporting-info.md)
* [TDDUIDiscriminator](ValueSet-tddui-discriminator.md)
* [TDDUIGoalAttenteNote](ValueSet-tddui-goal-attente-note.md)
* [TDDUIGoalObjectifNote](ValueSet-tddui-goal-objectif-note.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-discriminator",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
  "version" : "2.2.0-ballot",
  "name" : "TDDUIDiscriminator",
  "title" : "TDDUI Discriminator",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-06T10:49:33+00:00",
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
  "description" : "CodeSystem définissant les codes discriminants.",
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
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "accordUsager",
      "display" : "Accord de l'usager",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Accord de l'usager"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Accord de l'usager"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Accord de l'usager"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Accord de l'usager"
        }
      ]
    },
    {
      "code" : "accordStructure",
      "display" : "Accord de la structure",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Accord de la structure"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Accord de la structure"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Accord de la structure"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Accord de la structure"
        }
      ]
    },
    {
      "code" : "titreObjectif",
      "display" : "Titre de l'objectif",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Titre de l'objectif"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Titre de l'objectif"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Titre de l'objectif"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Titre de l'objectif"
        }
      ]
    },
    {
      "code" : "avisUsagerObjectif",
      "display" : "Avis de l'usager sur l'objectif",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Avis de l'usager sur l'objectif"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Avis de l'usager sur l'objectif"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Avis de l'usager sur l'objectif"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Avis de l'usager sur l'objectif"
        }
      ]
    },
    {
      "code" : "strategieMiseEnOeuvreObjectif",
      "display" : "Stratégie de mise en œuvre de l'objectif",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Stratégie de mise en œuvre de l'objectif"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Stratégie de mise en œuvre de l'objectif"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Stratégie de mise en œuvre de l'objectif"
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Stratégie de mise en œuvre de l'objectif"
        }
      ]
    },
    {
      "code" : "origineAttente",
      "display" : "Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente."
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente."
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente."
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente."
        }
      ]
    },
    {
      "code" : "commentaireAttente",
      "display" : "Permet de compléter ou éclairer la description de l'attente.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Permet de compléter ou éclairer la description de l'attente."
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Permet de compléter ou éclairer la description de l'attente."
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Permet de compléter ou éclairer la description de l'attente."
        },
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/hl7TermMaintInfra",
            "code" : "preferredForLanguage"
          },
          "value" : "Permet de compléter ou éclairer la description de l'attente."
        }
      ]
    }
  ]
}

```
