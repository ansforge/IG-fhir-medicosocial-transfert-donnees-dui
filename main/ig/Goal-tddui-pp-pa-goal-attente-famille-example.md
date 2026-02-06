# TDDUI PP PA Goal Attente Famille Example - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI PP PA Goal Attente Famille Example**

## Example Goal: TDDUI PP PA Goal Attente Famille Example

Profil: [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md)

**TDDUI CarePlan Projet Perso Ref**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**identifier**: `https://identifiant-medicosocial-attente.esante.gouv.fr`/3480787529/123456789-ATTE-1234

**lifecycleStatus**: Active

**description**: - Prévenir les chutes
- Stabiliser le poids et le plaisir alimentaire
- Maintenir le lien familial (visios)

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-pp-pa-patient-example-pp.md)

**note**: 

> 

Famille




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-pp-pa-goal-attente-famille-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente"
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
      "system" : "https://identifiant-medicosocial-attente.esante.gouv.fr",
      "value" : "3480787529/123456789-ATTE-1234"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "- Prévenir les chutes\n- Stabiliser le poids et le plaisir alimentaire\n- Maintenir le lien familial (visios)"
  },
  "subject" : {
    "reference" : "Patient/tddui-pp-pa-patient-example-pp"
  },
  "note" : [
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
                "code" : "origineAttente"
              }
            ]
          }
        }
      ],
      "text" : "Famille"
    }
  ]
}

```
