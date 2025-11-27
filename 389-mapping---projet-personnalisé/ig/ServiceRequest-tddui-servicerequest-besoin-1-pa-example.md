# tddui-servicerequest-besoin-1-pa-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-servicerequest-besoin-1-pa-example**

## Example ServiceRequest: tddui-servicerequest-besoin-1-pa-example

Profil: [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md)

**identifier**: `https://identifiant-medicosocial-besoin.esante.gouv.fr`/3480787529/123456789-BESO-1234

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-careplan-projet-personnalise-pa-example.md)

**status**: Active

**intent**: Plan

**code**: Besoin d'aide pour la mobilité et les déplacements.

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-patient-pa-example-pp.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "tddui-servicerequest-besoin-1-pa-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-besoin.esante.gouv.fr",
      "value" : "3480787529/123456789-BESO-1234"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-careplan-projet-personnalise-pa-example"
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "code" : {
    "text" : "Besoin d'aide pour la mobilité et les déplacements."
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-pa-example-pp"
  }
}

```
