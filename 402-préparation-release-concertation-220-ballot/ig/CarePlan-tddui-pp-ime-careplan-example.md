# tddui-pp-ime-careplan-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-ime-careplan-example**

## Example CarePlan: tddui-pp-ime-careplan-example

Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)

**identifier**: `https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr`/3480787529/123456-PPER-12

**status**: Active

**intent**: Plan

**title**: Projet personnalisé de Hugo en IME

**subject**: [Hugo D. (official) (sexe non précisé), Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456)](Patient-tddui-pp-ime-patient-example.md)

**supportingInfo**: [Consent : status = active; scope = Privacy Consent; category = Patient Consent; dateTime = 2024-01-15 09:00:00+0100](Consent-tddui-pp-ime-consent-accord-example.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "tddui-pp-ime-careplan-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr",
      "value" : "3480787529/123456-PPER-12"
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "title" : "Projet personnalisé de Hugo en IME",
  "subject" : {
    "reference" : "Patient/tddui-pp-ime-patient-example"
  },
  "supportingInfo" : [
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
                "code" : "accordStructure"
              }
            ]
          }
        }
      ],
      "reference" : "Consent/tddui-pp-ime-consent-accord-example"
    }
  ]
}

```
