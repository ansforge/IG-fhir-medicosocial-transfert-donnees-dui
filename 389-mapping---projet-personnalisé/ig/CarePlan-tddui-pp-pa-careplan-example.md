# Projet personnalisé de Mme Jeanne L. - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Projet personnalisé de Mme Jeanne L.**

## Example CarePlan: Projet personnalisé de Mme Jeanne L.

Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)

**Pièce jointe**: [DocumentReference : masterIdentifier = 3480787529/123456789-PPER-entrant-1234; status = current](DocumentReference-tddui-pp-pa-documentreference-entrant-example.md)

**identifier**: `https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr`/3480787529/123456789-PPER-1234

**status**: Active

**intent**: Plan

**title**: Projet personnalisé de Mme Jeanne L.

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-pp-pa-patient-example-pp.md)

**supportingInfo**: [Consentement structure](Consent-tddui-pp-pa-consent-accord-example.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "tddui-pp-pa-careplan-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment",
      "valueReference" : {
        "reference" : "DocumentReference/tddui-pp-pa-documentreference-entrant-example"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr",
      "value" : "3480787529/123456789-PPER-1234"
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "title" : "Projet personnalisé de Mme Jeanne L.",
  "subject" : {
    "reference" : "Patient/tddui-pp-pa-patient-example-pp"
  },
  "supportingInfo" : [
    {
      "reference" : "Consent/tddui-pp-pa-consent-accord-example",
      "display" : "Consentement structure"
    }
  ]
}

```
