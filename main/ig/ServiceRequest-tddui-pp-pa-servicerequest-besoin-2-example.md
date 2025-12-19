# tddui-pp-pa-servicerequest-besoin-2-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-servicerequest-besoin-2-example**

## Example ServiceRequest: tddui-pp-pa-servicerequest-besoin-2-example

Profil: [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md)

**identifier**: `https://identifiant-medicosocial-besoin.esante.gouv.fr`/3480787529/123456789-BESO-1235

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**status**: Active

**intent**: Plan

**code**: Besoin en terme de nutrition et alimentation.

**subject**: [Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-pp-pa-patient-example-pp.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "tddui-pp-pa-servicerequest-besoin-2-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-besoin.esante.gouv.fr",
      "value" : "3480787529/123456789-BESO-1235"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/tddui-pp-pa-careplan-example"
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "code" : {
    "text" : "Besoin en terme de nutrition et alimentation."
  },
  "subject" : {
    "reference" : "Patient/tddui-pp-pa-patient-example-pp"
  }
}

```
