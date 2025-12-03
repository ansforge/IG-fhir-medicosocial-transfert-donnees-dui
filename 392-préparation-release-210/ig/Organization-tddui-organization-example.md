# tddui-organization-example - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-organization-example**

## Example Organization: tddui-organization-example

Profil: [TDDUI Organization](StructureDefinition-tddui-organization.md)

**identifier**: Identification nationale de structure définie par l’ANS dans le CI_SIS/1480787529

**name**: Les Chênes Verts



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "tddui-organization-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"
    ]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "IDNST"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.71.4.2.2",
      "value" : "1480787529"
    }
  ],
  "name" : "Les Chênes Verts"
}

```
