# tddui-pp-ime-goal-objectif-2-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-ime-goal-objectif-2-example**

## Example Goal: tddui-pp-ime-goal-objectif-2-example

Profil: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

**Lien vers le projet personnalisé**: [CarePlan Projet personnalisé de Hugo en IME](CarePlan-tddui-pp-ime-careplan-example.md)

**identifier**: `https://identifiant-medicosocial-objectif.esante.gouv.fr`/3480787529/123456-OBJE-1235

**lifecycleStatus**: Active

**description**: Atteindre le niveau lecteur débutant (décodage syllabique) en 9 mois.

**subject**: [Hugo D. (official) (sexe non précisé), Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456)](Patient-tddui-pp-ime-patient-example.md)

**note**: 

> 

Objectif 2




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-pp-ime-goal-objectif-2-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
      "valueReference" : {
        "reference" : "CarePlan/tddui-pp-ime-careplan-example"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-objectif.esante.gouv.fr",
      "value" : "3480787529/123456-OBJE-1235"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "Atteindre le niveau lecteur débutant (décodage syllabique) en 9 mois."
  },
  "subject" : {
    "reference" : "Patient/tddui-pp-ime-patient-example"
  },
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
