# tddui-goal-objectif-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-goal-objectif-example**

## Example Goal: tddui-goal-objectif-example

Profil: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

**Lien vers le projet personnalisé**: [CarePlan Projet personnalisé de Mme Dupont](CarePlan-tddui-careplan-projet-perso-example.md)

**identifier**: 3480787529/147720425367411-PPAttente-12549

**lifecycleStatus**: Active

**description**: L'objectif est d'améliorer l'autonomie de Mme Dupont dans les activités de la vie quotidienne.

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**addresses**: [ServiceRequest](ServiceRequest-tddui-servicerequest-besoin-example.md)

**note**: 

> 

Améliorer l'autonomie de Mme Dupont dans les activités de la vie quotidienne.




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-goal-objectif-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
      "valueReference" : {
        "reference" : "CarePlan/tddui-careplan-projet-perso-example"
      }
    }
  ],
  "identifier" : [
    {
      "value" : "3480787529/147720425367411-PPAttente-12549"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "L'objectif est d'améliorer l'autonomie de Mme Dupont dans les activités de la vie quotidienne."
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "addresses" : [
    {
      "reference" : "ServiceRequest/tddui-servicerequest-besoin-example"
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
      "text" : "Améliorer l'autonomie de Mme Dupont dans les activités de la vie quotidienne."
    }
  ]
}

```
