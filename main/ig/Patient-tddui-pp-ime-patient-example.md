# tddui-pp-ime-patient-example - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-ime-patient-example**

## Example Patient: tddui-pp-ime-patient-example

Profil: [TDDUI Patient](StructureDefinition-tddui-patient.md)

Hugo D. (official) (sexe non précisé), Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "tddui-pp-ime-patient-example",
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
      "value" : "3480787529/123456"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "D.",
      "given" : ["Hugo"]
    }
  ]
}

```
