# TDDUI Observation Mobilite Usager Example - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Observation Mobilite Usager Example**

## Example Observation: TDDUI Observation Mobilite Usager Example

Profil: [TDDUI Observation Mobilite Usager](StructureDefinition-tddui-observation-mobilite-usager.md)

**status**: Registered

**code**: Transport mode

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**value**: VSL



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "tddui-observation-mobilite-usager-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-mobilite-usager"]
  },
  "status" : "registered",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LP73551-1",
      "display" : "Transport mode"
    }]
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
      "code" : "ORG-160",
      "display" : "VSL"
    }]
  }
}

```
