# tddui-practitioner-role-example - Médicosocial - Transfert de données DUI v2.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-practitioner-role-example**

## Example PractitionerRole: tddui-practitioner-role-example

Profil: [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md)

**practitioner**: [Practitioner Claire Martin](Practitioner-tddui-practitioner-example.md)

**organization**: [Organization Les Chênes Verts](Organization-tddui-organization-example.md)

**code**: Coordonnateur de parcours



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "tddui-practitioner-role-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role"
    ]
  },
  "practitioner" : {
    "reference" : "Practitioner/tddui-practitioner-example"
  },
  "organization" : {
    "reference" : "Organization/tddui-organization-example"
  },
  "code" : [
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-profession",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge",
                "code" : "314",
                "display" : "Ambulancier"
              }
            ]
          }
        }
      ],
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge",
          "code" : "330",
          "display" : "Coordonnateur de parcours"
        }
      ]
    }
  ]
}

```
