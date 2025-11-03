# tddui-encounter-sejour-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-encounter-sejour-example**

## Example Encounter: tddui-encounter-sejour-example

Profil: [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)

**Date d’admission**: 2023-04-11

**Libellé mode d'entrée**: Date de début du suivi post-opératoire : 14/04/2023

**Libellé mode de sortie**: Sortie prévisionnelle prévue pour le 5 mai 2023

**Extension Definition for Encounter.plannedEndDate for Version 5.0**: 2023-05-05

**identifier**: Identifiant du séjour/3480787529/147720425367411-SEJOUR-1012

**status**: In Progress

**class**: [ActCode: HH](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ActCode.html#v3-ActCode-HH) (home health)

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
