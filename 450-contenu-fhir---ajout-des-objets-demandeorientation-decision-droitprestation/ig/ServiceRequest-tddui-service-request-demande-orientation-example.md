# TDDUI ServiceRequest DemandeOrientation Example - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI ServiceRequest DemandeOrientation Example**

## Example ServiceRequest: TDDUI ServiceRequest DemandeOrientation Example

Profil: [TDDUI ServiceRequest DemandeOrientation](StructureDefinition-tddui-service-request-demande-orientation.md)

**identifier**: `2.16.840.1.113883.2.8.3.75.1`/1234

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
    "system" : "2.16.840.1.113883.2.8.3.75.1",
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
