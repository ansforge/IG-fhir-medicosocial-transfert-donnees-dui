# TDDUI ServiceRequest DemandeOrientation Example - Médicosocial - Transfert de données DUI v2.4.0

## Exemple ServiceRequest: TDDUI ServiceRequest DemandeOrientation Example

-------

**French**

-------

Profil: [TDDUI ServiceRequest DemandeOrientation](StructureDefinition-tddui-service-request-demande-orientation.md)

**identifier**: Identifiant de la demande d'orientation/1234

**status**: Active

**intent**: Plan

**subject**: [Jeanne L. (official) Female, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/123456789)](Patient-tddui-pp-pa-patient-example-pp.md)

**occurrence**: 2020-01-01 --> 2020-01-31



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "tddui-service-request-demande-orientation-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-demande-orientation"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-service-request-identifier",
        "code" : "DEMANDE_ORIENTATION"
      }]
    },
    "system" : "urn:uuid:53fefa32-fcbb-4ff8-8a92-55ee120877b7",
    "value" : "1234"
  }],
  "status" : "active",
  "intent" : "plan",
  "subject" : {
    "reference" : "Patient/tddui-pp-pa-patient-example-pp"
  },
  "occurrencePeriod" : {
    "start" : "2020-01-01",
    "end" : "2020-01-31"
  }
}

```
