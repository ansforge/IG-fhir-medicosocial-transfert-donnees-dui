# Projet personnalisé de Mme Jeanne L. - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Projet personnalisé de Mme Jeanne L.**

## Example CarePlan: Projet personnalisé de Mme Jeanne L.

Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)

**identifier**: `https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr`/3480787529/123456789-PPER-1234

**status**: Active

**intent**: Plan

**title**: Projet personnalisé de Mme Jeanne L.

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-patient-pa-example-pp.md)

**supportingInfo**: [Consentement structure](Consent-tddui-consent-accord-example.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "tddui-careplan-projet-personnalise-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"
    ]
  },
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
    "reference" : "Patient/tddui-patient-pa-example-pp"
  },
  "supportingInfo" : [
    {
      "reference" : "Consent/tddui-consent-accord-example",
      "display" : "Consentement structure"
    }
  ]
}

```
