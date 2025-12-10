# TDDUI Encounter Sejour - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Sejour**

## Resource Profile: TDDUI Encounter Sejour 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour | *Version*:2.1.0-ballot |
| Active as of 2025-12-10 | *Computable Name*:TDDUIEncounterSejour |

 
Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS 

**Utilisations:**

* Utiliser ce Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référer à ce Profil: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)
* Exemples pour ce Profil: [Encounter/tddui-encounter-sejour-example](Encounter-tddui-encounter-sejour-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-encounter-sejour)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-encounter-sejour.csv), [Excel](StructureDefinition-tddui-encounter-sejour.xlsx), [Schematron](StructureDefinition-tddui-encounter-sejour.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-encounter-sejour",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIEncounterSejour",
  "title" : "TDDUI Encounter Sejour",
  "status" : "active",
  "date" : "2025-12-10T10:50:40+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "specmetier-to-TDDUIEncounterSejour",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
      "name" : "Modèle de contenu DUI"
    },
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "Sejour"
          }
        ]
      },
      {
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.extension:TDDUI-plannedStartDate-r5",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUI-plannedStartDate-r5",
        "short" : "La date/heure de début prévue (ou la date d'admission) de la rencontre | The planned start date/time (or admission date) of the encounter",
        "definition" : "Cette extension implemente l'élément plannedStartDate de R5. elle permet l'ajout de la date d'entrée prévisionnelle dans le séjour",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedStartDate"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "dateEntreePrevisionnelle"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUI-plannedEndDate-r5",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUI-plannedEndDate-r5",
        "short" : "La date/heure de fin prévue (ou la date de sortie) de la rencontre | The planned end date/time (or discharge date) of the encounter",
        "definition" : "Cette extension implemente l'élément plannedEndDate de R5. elle permet l'ajout de la date de sortie prévisionnelle du séjour",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedEndDate"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "dateSortiePrevisionnelle"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIAdmissionDate",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIAdmissionDate",
        "short" : "Date d’admission dans la structure ESSMS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-admission-date"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "dateAdmission"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIEntryModelabel",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIEntryModelabel",
        "short" : "Libellé du mode d’entée du séjour",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-entry-mode-label"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "libelleModeEntree"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIExitModeLabel",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIExitModeLabel",
        "short" : "Libellé du mode de sortie du séjour",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exit-mode-label"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "libelleModeSortie"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIComment",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIComment",
        "short" : "Commentaire relatif au séjour",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "commentaire"
          }
        ]
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Encounter.identifier:idStay",
        "path" : "Encounter.identifier",
        "sliceName" : "idStay",
        "short" : "Identifiant métier unique du séjour",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "idSejour"
          }
        ]
      },
      {
        "id" : "Encounter.identifier:idStay.type",
        "path" : "Encounter.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier",
              "code" : "SEJ",
              "display" : "Identifiant du séjour"
            }
          ]
        }
      },
      {
        "id" : "Encounter.identifier:idStay.system",
        "path" : "Encounter.identifier.system",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-sejour.esante.gouv.fr"
      },
      {
        "id" : "Encounter.identifier:idStay.value",
        "path" : "Encounter.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-SEJOUR-numeroDossier",
            "valueString" : "3480787529/147720425367411-SEJOUR-21564655"
          }
        ]
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "Usager"
          }
        ]
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "dateEntree"
          }
        ]
      },
      {
        "id" : "Encounter.period.end",
        "path" : "Encounter.period.end",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "dateSortie"
          }
        ]
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterSejour",
            "map" : "EntiteJuridique"
          }
        ]
      }
    ]
  }
}

```
