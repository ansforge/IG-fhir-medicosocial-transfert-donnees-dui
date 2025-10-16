# tddui-practitioner-example - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-practitioner-example**

## Example Practitioner: tddui-practitioner-example

Profil: [TDDUI Practitioner](StructureDefinition-tddui-practitioner.md)

**identifier**: `urn:oid:1.2.250.1.71.4.2.1`/10103441234

**name**: Claire Martin 

> **qualification****code**:DE Infirmier

> **qualification****code**:Infirmier



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "tddui-practitioner-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:1.2.250.1.71.4.2.1",
      "value" : "10103441234"
    }
  ],
  "name" : [
    {
      "family" : "Martin",
      "given" : ["Claire"],
      "prefix" : ["MME"]
    }
  ],
  "qualification" : [
    {
      "code" : {
        "coding" : [
          {
            "code" : "DE09",
            "display" : "DE Infirmier"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "code" : "60",
            "display" : "Infirmier"
          }
        ]
      }
    }
  ]
}

```
