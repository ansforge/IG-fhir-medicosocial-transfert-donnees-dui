# tddui-pp-pa-goal-objectif-1-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-goal-objectif-1-example**

## Example Goal: tddui-pp-pa-goal-objectif-1-example

Profil: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

**Lien vers le projet personnalisé**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**Pièce jointe**: [DocumentReference : masterIdentifier = 3480787529/123456789-PPER-bilanObj-1234; status = current](DocumentReference-tddui-pp-pa-documentreference-bilan-objectif-1-example.md)

**identifier**: `https://identifiant-medicosocial-objectif.esante.gouv.fr`/3480787529/123456789-OBJE-1234

**lifecycleStatus**: Active

**description**: Réduire le risque de chute et la peur associée en 6 mois.

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-pp-pa-patient-example-pp.md)

**addresses**: [ServiceRequest](ServiceRequest-tddui-pp-pa-servicerequest-besoin-1-example.md)

**note**: 

> 

Objectif 1




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-pp-pa-goal-objectif-1-example",
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
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment",
      "valueReference" : {
        "reference" : "DocumentReference/tddui-pp-pa-documentreference-bilan-objectif-1-example"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-objectif.esante.gouv.fr",
      "value" : "3480787529/123456789-OBJE-1234"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "Réduire le risque de chute et la peur associée en 6 mois."
  },
  "subject" : {
    "reference" : "Patient/tddui-pp-pa-patient-example-pp"
  },
  "addresses" : [
    {
      "reference" : "ServiceRequest/tddui-pp-pa-servicerequest-besoin-1-example"
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
      "text" : "Objectif 1"
    }
  ]
}

```
