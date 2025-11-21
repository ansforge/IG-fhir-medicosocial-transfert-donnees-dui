# tddui-goal-objectif-3-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-goal-objectif-3-pa-example**

## Example Goal: tddui-goal-objectif-3-pa-example

Profil: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

**Lien vers le projet personnalisé**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-personnalise-pa-example.md)

**identifier**: `https://identifiant-medicosocial-objectif.esante.gouv.fr`/3480787529/123456789-OBJE-123456

**lifecycleStatus**: Active

**description**: Maintenir le lien social : 2 activités/semestre + visios hebdomadaires

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-patient-pa-example-pp.md)

**addresses**: [ServiceRequest](ServiceRequest-tddui-servicerequest-besoin-pa-example.md)

**note**: 

> 

Objectif 3




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-goal-objectif-3-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif"
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
      "system" : "https://identifiant-medicosocial-objectif.esante.gouv.fr",
      "value" : "3480787529/123456789-OBJE-123456"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "Maintenir le lien social : 2 activités/semestre + visios hebdomadaires"
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-pa-example-pp"
  },
  "addresses" : [
    {
      "reference" : "ServiceRequest/tddui-servicerequest-besoin-pa-example"
    }
  ],
  "note" : [
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note",
          "valueCode" : "titreObjectif"
        }
      ],
      "text" : "Objectif 3"
    }
  ]
}

```
