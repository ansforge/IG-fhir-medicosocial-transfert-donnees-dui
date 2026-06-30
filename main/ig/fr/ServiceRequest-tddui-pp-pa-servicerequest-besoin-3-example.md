# TDDUI PP PA ServiceRequest Besoin 3 Example - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Exemple ServiceRequest: TDDUI PP PA ServiceRequest Besoin 3 Example

-------

**French**

-------

Profil: [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md)

**identifier**: Identifiant du besoin/3480787529/123456789-BESO-1236

**basedOn**: [CarePlan Projet personnalisé de Mme Jeanne L.](CarePlan-tddui-pp-pa-careplan-example.md)

**status**: Active

**intent**: Plan

**code**: Besoin de maintien du lien social et d'activités récréatives.

**subject**: [Jeanne L. (official) Female, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-pp-pa-patient-example-pp.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "tddui-pp-pa-servicerequest-besoin-3-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-service-request-identifier",
        "code" : "BES"
      }]
    },
    "system" : "https://identifiant-medicosocial-besoin.esante.gouv.fr",
    "value" : "3480787529/123456789-BESO-1236"
  }],
  "basedOn" : [{
    "reference" : "CarePlan/tddui-pp-pa-careplan-example"
  }],
  "status" : "active",
  "intent" : "plan",
  "code" : {
    "text" : "Besoin de maintien du lien social et d'activités récréatives."
  },
  "subject" : {
    "reference" : "Patient/tddui-pp-pa-patient-example-pp"
  }
}

```
