# TDDUI PP PA Patient Example - Médicosocial - Transfert de données DUI v2.4.0

## Example Patient: TDDUI PP PA Patient Example

-------

**English**

-------

Profile: [TDDUI Patient](StructureDefinition-tddui-patient.md)

Jeanne L. (official) Female, DoB: 1947-04-03 ( Patient internal identifier: 3480787529/123456789)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "tddui-pp-pa-patient-example-pp",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PI",
        "display" : "Patient internal identifier"
      }]
    },
    "system" : "https://identifiant-medicosocial-localusager.esante.gouv.fr",
    "value" : "3480787529/123456789"
  }],
  "name" : [{
    "use" : "official",
    "family" : "L.",
    "given" : ["Jeanne"]
  }],
  "gender" : "female",
  "birthDate" : "1947-04-03",
  "_birthDate" : {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-birth-order",
      "valuePositiveInt" : 1
    }]
  }
}

```
