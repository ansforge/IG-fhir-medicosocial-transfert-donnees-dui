# TDDUI Practitioner Role Example - Médicosocial - Transfert de données DUI v2.4.0

## Example PractitionerRole: TDDUI Practitioner Role Example

-------

**English**

-------

Profile: [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md)

Claire Martin (urn:oid:1.2.250.1.71.4.2.1#10103441234): Coordonnateur de parcours at Les Chênes Verts (Identification nationale de structure définie par l’ANS dans le CI_SIS: 1480787529)

-------

| | |
| :--- | :--- |
| Practitioner: | [Claire Martin (urn:oid:1.2.250.1.71.4.2.1#10103441234)](Practitioner-tddui-practitioner-example.md) |
| Organization: | [Les Chênes Verts (Identification nationale de structure définie par l’ANS dans le CI_SIS: 1480787529)](Organization-tddui-organization-example.md) |
| Role: | Coordonnateur de parcours |
| [TDDUI Exercise Mode](StructureDefinition-tddui-exercise-mode.md) | Salarié |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "tddui-practitioner-role-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role"]
  },
  "extension" : [{
    "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exercise-mode",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
        "code" : "S",
        "display" : "Salarié"
      }]
    }
  }],
  "practitioner" : {
    "reference" : "Practitioner/tddui-practitioner-example"
  },
  "organization" : {
    "reference" : "Organization/tddui-organization-example"
  },
  "code" : [{
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-profession",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_A02-ProfessionSavFaire-CISIS/FHIR/TRE-A02-ProfessionSavFaire-CISIS",
          "code" : "G15_60",
          "display" : "Infirmier"
        }]
      }
    }],
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge",
      "code" : "330",
      "display" : "Coordonnateur de parcours"
    }]
  }]
}

```
