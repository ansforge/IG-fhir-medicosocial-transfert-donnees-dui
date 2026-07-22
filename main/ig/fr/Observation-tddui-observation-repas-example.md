# TDDUI Observation Repas Example - Médicosocial - Transfert de données DUI v2.4.0

## Exemple Observation: TDDUI Observation Repas Example

-------

**French**

-------

Profil: [TDDUI Observation Repas](StructureDefinition-tddui-observation-repas.md)

**TDDUI Participant Present**: true

**identifier**: Identifiant du repas/3480787529/1012-REPAS-0002

**status**: Registered

**category**: Petit-déjeuner

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
    "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-participant-present",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-identifier",
        "code" : "REP"
      }]
    },
    "system" : "https://identifiant-medicosocial-repas.esante.gouv.fr",
    "value" : "3480787529/1012-REPAS-0002"
  }],
  "status" : "registered",
  "category" : [{
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r425-type-repas",
      "code" : "1"
    }]
  }],
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
