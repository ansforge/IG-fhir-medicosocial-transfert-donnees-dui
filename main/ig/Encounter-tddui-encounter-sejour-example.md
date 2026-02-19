# TDDUI Encounter Sejour Example - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Sejour Example**

## Example Encounter: TDDUI Encounter Sejour Example

Profil: [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)

**TDDUI Admission Date**: 2023-04-11

**TDDUI Entry Mode label**: Date de début du suivi post-opératoire : 14/04/2023

**TDDUI Exit Mode Label**: Sortie prévisionnelle prévue pour le 5 mai 2023

**Extension Definition for Encounter.plannedEndDate for Version 5.0**: 2023-05-05

**identifier**: Identifiant du séjour/3480787529/147720425367411-SEJOUR-1012

**status**: In Progress

**class**: [ActCode: HH](http://terminology.hl7.org/7.0.1/CodeSystem-v3-ActCode.html#v3-ActCode-HH) (home health)

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**period**: 2023-04-14 --> (en cours)

**serviceProvider**: [Organization Les Chênes Verts](Organization-tddui-organization-example.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "tddui-encounter-sejour-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-admission-date",
      "valueDateTime" : "2023-04-11"
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-entry-mode-label",
      "valueString" : "Date de début du suivi post-opératoire : 14/04/2023"
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exit-mode-label",
      "valueString" : "Sortie prévisionnelle prévue pour le 5 mai 2023"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedEndDate",
      "valueDateTime" : "2023-05-05"
    }
  ],
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier",
            "code" : "SEJ",
            "display" : "Identifiant du séjour"
          }
        ]
      },
      "system" : "https://identifiant-medicosocial-sejour.esante.gouv.fr",
      "value" : "3480787529/147720425367411-SEJOUR-1012"
    }
  ],
  "status" : "in-progress",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "HH"
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "period" : {
    "start" : "2023-04-14"
  },
  "serviceProvider" : {
    "reference" : "Organization/tddui-organization-example"
  }
}

```
