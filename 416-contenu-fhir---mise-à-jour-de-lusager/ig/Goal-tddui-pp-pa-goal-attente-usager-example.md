# TDDUI PP PA Goal Attente Usager Example - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI PP PA Goal Attente Usager Example**

## Example Goal: TDDUI PP PA Goal Attente Usager Example

Profil: [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md)

**TDDUI CarePlan Projet Perso Ref**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**identifier**: `https://identifiant-medicosocial-attente.esante.gouv.fr`/3480787529/123456789-ATTE-1235

**lifecycleStatus**: Active

**description**: - Garder la main sur l'organisation de ses journées 
- Participer à une chorale et à un club lecture
- Se sentir en sécurité lors des déplacements

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-pp-pa-patient-example-pp.md)

**note**: 

> 

Usager




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-pp-pa-goal-attente-usager-example",
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
      "value" : "3480787529/123456789-ATTE-1235"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "- Garder la main sur l'organisation de ses journées \n- Participer à une chorale et à un club lecture\n- Se sentir en sécurité lors des déplacements"
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
      "text" : "Usager"
    }
  ]
}

```
