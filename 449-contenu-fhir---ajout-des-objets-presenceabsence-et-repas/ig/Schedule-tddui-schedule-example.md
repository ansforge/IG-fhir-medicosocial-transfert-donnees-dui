# TDDUI Schedule Example - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Schedule Example**

## Example Schedule: TDDUI Schedule Example

Profil: [TDDUI Schedule](StructureDefinition-tddui-schedule.md)

**actor**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "tddui-schedule-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-schedule"]
  },
  "actor" : [{
    "reference" : "Patient/tddui-patient-ins-example"
  }]
}

```
