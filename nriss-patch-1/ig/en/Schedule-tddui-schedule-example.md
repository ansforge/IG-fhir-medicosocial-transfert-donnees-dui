# TDDUI Schedule Example - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Example Schedule: TDDUI Schedule Example

-------

**English**

-------

Profile: [TDDUI Schedule](StructureDefinition-tddui-schedule.md)

**actor**: [DUPONT Male, DoB: 1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)



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
