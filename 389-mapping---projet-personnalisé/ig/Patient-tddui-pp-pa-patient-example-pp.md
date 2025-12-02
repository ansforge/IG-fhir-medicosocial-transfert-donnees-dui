# tddui-pp-pa-patient-example-pp - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-patient-example-pp**

## Example Patient: tddui-pp-pa-patient-example-pp

Profil: [TDDUI Patient](StructureDefinition-tddui-patient.md)

Jeanne L. (official) Female, Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456789)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "tddui-pp-pa-patient-example-pp",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient"
    ]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PI",
            "display" : "Patient internal identifier"
          }
        ]
      },
      "system" : "https://identifiant-medicosocial-localusager.esante.gouv.fr",
      "value" : "3480787529/123456789"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "L.",
      "given" : ["Jeanne"]
    }
  ],
  "gender" : "female"
}

```
