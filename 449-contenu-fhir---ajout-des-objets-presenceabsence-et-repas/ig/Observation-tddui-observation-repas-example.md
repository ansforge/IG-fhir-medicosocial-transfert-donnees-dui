# TDDUI Observation Repas Example - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Observation Repas Example**

## Example Observation: TDDUI Observation Repas Example

Profil: [TDDUI Observation Repas](StructureDefinition-tddui-observation-repas.md)

**TDDUI Patient Present**: true

**identifier**: `https://identifiant-medicosocial-repas.esante.gouv.fr`/3480787529/1012-REPAS-0002

**status**: Registered

**code**: Repas

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**effective**: 2025-04-17 12:00:00+0200



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "tddui-observation-repas-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-repas"]
  },
  "extension" : [{
    "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-present",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "system" : "https://identifiant-medicosocial-repas.esante.gouv.fr",
    "value" : "3480787529/1012-REPAS-0002"
  }],
  "status" : "registered",
  "code" : {
    "coding" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type",
      "code" : "REPAS",
      "display" : "Repas"
    }]
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "effectiveDateTime" : "2025-04-17T12:00:00+02:00"
}

```
