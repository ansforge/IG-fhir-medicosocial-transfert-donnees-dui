# Projet personnalisé de Hugo en IME - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Projet personnalisé de Hugo en IME**

## Example CarePlan: Projet personnalisé de Hugo en IME

Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)

**identifier**: `https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr`/3480787529/123456-PPER-12

**status**: Active

**intent**: Plan

**title**: Projet personnalisé de Hugo en IME

**subject**: [Hugo D. (official) (sexe non précisé), Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456)](Patient-tddui-patient-pp-ime-example.md)

**supportingInfo**: [Consentement structure](Consent-tddui-consent-accord-ime-example.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "tddui-careplan-projet-personnalise-ime-example",
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
    "reference" : "Patient/tddui-patient-pp-ime-example"
  },
  "supportingInfo" : [
    {
      "reference" : "Consent/tddui-consent-accord-ime-example",
      "display" : "Consentement structure"
    }
  ]
}

```
