# tddui-pp-pa-goal-objectif-2-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-goal-objectif-2-example**

## Example Goal: tddui-pp-pa-goal-objectif-2-example

Profil: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

**Lien vers le projet personnalisé**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**identifier**: `https://identifiant-medicosocial-objectif.esante.gouv.fr`/3480787529/123456789-OBJE-1235

**lifecycleStatus**: Active

**description**: Stabiliser l'état nutritionnel et restaurer le plaisir alimentaire sur 12 mois.

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-pp-pa-patient-example-pp.md)

**addresses**: [ServiceRequest](ServiceRequest-tddui-pp-pa-servicerequest-besoin-2-example.md)

**note**: 

> 

Objectif 2




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-pp-pa-goal-objectif-2-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
      "valueReference" : {
        "reference" : "CarePlan/tddui-pp-pa-careplan-example"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-objectif.esante.gouv.fr",
      "value" : "3480787529/123456789-OBJE-1235"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "Stabiliser l'état nutritionnel et restaurer le plaisir alimentaire sur 12 mois."
  },
  "subject" : {
    "reference" : "Patient/tddui-pp-pa-patient-example-pp"
  },
  "addresses" : [
    {
      "reference" : "ServiceRequest/tddui-pp-pa-servicerequest-besoin-2-example"
    }
  ],
  "note" : [
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
                "code" : "titreObjectif"
              }
            ]
          }
        }
      ],
      "text" : "Objectif 2"
    }
  ]
}

```
