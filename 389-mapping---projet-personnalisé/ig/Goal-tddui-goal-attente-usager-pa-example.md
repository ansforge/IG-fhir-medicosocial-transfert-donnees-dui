# tddui-goal-attente-usager-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-goal-attente-usager-pa-example**

## Example Goal: tddui-goal-attente-usager-pa-example

Profil: [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md)

**Lien vers le projet personnalisé**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-personnalise-pa-example.md)

**identifier**: `https://identifiant-medicosocial-attente.esante.gouv.fr`/3480787529/123456789-ATTE-1234

**lifecycleStatus**: Active

**description**: - Garder la main sur l'organisation de ses journées
- Participer à une chorale et à un club lecture
- Se sentir en sécurité lors des déplacements

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-patient-pa-example-pp.md)

**note**: 

> 

Famille




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-goal-attente-usager-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
      "valueReference" : {
        "reference" : "CarePlan/tddui-careplan-projet-personnalise-pa-example"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-attente.esante.gouv.fr",
      "value" : "3480787529/123456789-ATTE-1234"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "- Garder la main sur l'organisation de ses journées \n- Participer à une chorale et à un club lecture\n- Se sentir en sécurité lors des déplacements"
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-pa-example-pp"
  },
  "note" : [
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note",
          "valueCode" : "origineAttente"
        }
      ],
      "text" : "Famille"
    }
  ]
}

```
