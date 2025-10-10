# tddui-practitioner-role-example - Médicosocial - Transfert de données DUI v2.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-practitioner-role-example**

## Example PractitionerRole: tddui-practitioner-role-example

Profil: [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md)

**Mode d'exercice**: Salarié

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
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exercise-mode",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
            "code" : "S",
            "display" : "Salarié"
          }
        ]
      }
    }
  ],
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
                "system" : "https://mos.esante.gouv.fr/NOS/TRE_A02-ProfessionSavFaire-CISIS/FHIR/TRE-A02-ProfessionSavFaire-CISIS",
                "code" : "G15_60",
                "display" : "Infirmier"
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
