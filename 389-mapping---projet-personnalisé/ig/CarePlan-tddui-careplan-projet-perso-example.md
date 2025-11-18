# Projet personnalisé de Mme Dupont - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Projet personnalisé de Mme Dupont**

## Example CarePlan: Projet personnalisé de Mme Dupont

Profil: [TDDUI CarePlan Projet Perso](StructureDefinition-tddui-careplan-projet-perso.md)

**identifier**: 3480787529/147720425367411-PPER-12548

**status**: Active

**intent**: Plan

**title**: Projet personnalisé de Mme Dupont

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**supportingInfo**: [Consentement structure](Consent-tddui-consent-accord-example.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "tddui-careplan-projet-perso-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-perso"
    ]
  },
  "identifier" : [
    {
      "value" : "3480787529/147720425367411-PPER-12548"
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "title" : "Projet personnalisé de Mme Dupont",
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "supportingInfo" : [
    {
      "reference" : "Consent/tddui-consent-accord-example",
      "display" : "Consentement structure"
    }
  ]
}

```
