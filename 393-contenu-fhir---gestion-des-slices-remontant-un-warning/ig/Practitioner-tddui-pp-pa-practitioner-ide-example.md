# tddui-pp-pa-practitioner-ide-example - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-pa-practitioner-ide-example**

## Example Practitioner: tddui-pp-pa-practitioner-ide-example

Profil: [TDDUI Practitioner](StructureDefinition-tddui-practitioner.md)

**identifier**: `urn:oid:1.2.250.1.71.4.2.1`/10101234567

**name**: Élodie Bernard 

### Qualifications

| | |
| :--- | :--- |
| - | **Code** |
| * | DE Infirmier |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "tddui-pp-pa-practitioner-ide-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:1.2.250.1.71.4.2.1",
      "value" : "10101234567"
    }
  ],
  "name" : [
    {
      "family" : "Bernard",
      "given" : ["Élodie"],
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
    }
  ]
}

```
