# TDDUI Obsrvation Mobilite Example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Obsrvation Mobilite Example**

## Example Observation: TDDUI Obsrvation Mobilite Example

Profil: [TDDUI Obervation Mobilite](StructureDefinition-tddui-observation-mobilite.md)

**status**: Registered

**code**: Mobilité

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**value**: VSL



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "tddui-observation-mobilite-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-mobilite"
    ]
  },
  "status" : "registered",
  "code" : {
    "coding" : [
      {
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type",
        "code" : "MOBILITE",
        "display" : "Mobilité"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "ORG-160",
        "display" : "VSL"
      }
    ]
  }
}

```
