# TDDUI Observation Cause Mortalite Example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Observation Cause Mortalite Example**

## Example Observation: TDDUI Observation Cause Mortalite Example

Profil: [TDDUI Observation Cause Mortalite](StructureDefinition-tddui-observation-cause-mortalite.md)

**status**: Registered

**code**: Causes du décès

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Causes du décès | Œdème pulmonaire |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "tddui-observation-cause-mortalite-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-cause-mortalite"]
  },
  "status" : "registered",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "79378-6",
      "display" : "Causes du décès"
    }]
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "79378-6",
        "display" : "Causes du décès"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://smt.esante.gouv.fr/terminologie-cim-10",
        "code" : "J81",
        "display" : "Œdème pulmonaire"
      }]
    }
  }]
}

```
