# TDDUI PP IME CarePlan Example - Médicosocial - Transfert de données DUI v2.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI PP IME CarePlan Example**

## Example CarePlan: TDDUI PP IME CarePlan Example

Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)

**identifier**: `https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr`/3480787529/123456-PPER-12

**status**: Active

**intent**: Plan

**title**: Projet personnalisé de Hugo en IME

**subject**: [Hugo D. (official) (sexe non précisé), Date de Naissance :2005-09-15 ( Patient internal identifier: 3480787529/123456)](Patient-tddui-pp-ime-patient-example.md)

**supportingInfo**: [tddui-pp-ime-consent-accord-example](Consent-tddui-pp-ime-consent-accord-example.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "tddui-pp-ime-careplan-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"]
  },
  "identifier" : [{
    "system" : "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr",
    "value" : "3480787529/123456-PPER-12"
  }],
  "status" : "active",
  "intent" : "plan",
  "title" : "Projet personnalisé de Hugo en IME",
  "subject" : {
    "reference" : "Patient/tddui-pp-ime-patient-example"
  },
  "supportingInfo" : [{
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
          "code" : "accordStructure"
        }]
      }
    }],
    "reference" : "Consent/tddui-pp-ime-consent-accord-example"
  }]
}

```
