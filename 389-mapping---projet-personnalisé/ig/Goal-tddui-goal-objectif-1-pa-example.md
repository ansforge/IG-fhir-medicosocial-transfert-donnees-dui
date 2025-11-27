# tddui-goal-objectif-1-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-goal-objectif-1-pa-example**

## Example Goal: tddui-goal-objectif-1-pa-example

Profil: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

**Lien vers le projet personnalisé**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-personnalise-pa-example.md)

**Pièce jointe**: [DocumentReference : masterIdentifier = 3480787529/123456789-PPER-bilanObj-1234; status = current](DocumentReference-bilan-objectif-1-projet-personnalise-pa-example-pp.md)

**identifier**: `https://identifiant-medicosocial-objectif.esante.gouv.fr`/3480787529/123456789-OBJE-1234

**lifecycleStatus**: Active

**description**: Réduire le risque de chute et la peur associée en 6 mois.

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-patient-pa-example-pp.md)

**addresses**: [ServiceRequest](ServiceRequest-tddui-servicerequest-besoin-1-pa-example.md)

**note**: 

> 

Objectif 1




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-goal-objectif-1-pa-example",
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
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment",
      "valueReference" : {
        "reference" : "DocumentReference/bilan-objectif-1-projet-personnalise-pa-example-pp"
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
    "reference" : "Patient/tddui-patient-pa-example-pp"
  },
  "addresses" : [
    {
      "reference" : "ServiceRequest/tddui-servicerequest-besoin-1-pa-example"
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
      "text" : "Objectif 1"
    }
  ]
}

```
