# tddui-practitioner-example - Médicosocial - Transfert de données DUI v2.0.0-ballot

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
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais",
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
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
            "code" : "60",
            "display" : "Infirmier"
          }
        ]
      }
    }
  ]
}

```
