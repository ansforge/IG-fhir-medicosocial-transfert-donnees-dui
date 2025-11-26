# TDDUI Goal Attente - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Goal Attente**

## Resource Profile: TDDUI Goal Attente 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente | *Version*:2.1.0-ballot |
| Active as of 2025-11-26 | *Computable Name*:TDDUIGoalAttente |

 
Profil de la ressource Goal permettant de représenter les attentes pour un usager. 

**Usages:**

* Examples for this Profile: [Goal/tddui-goal-attente-famille-pa-example](Goal-tddui-goal-attente-famille-pa-example.md) and [Goal/tddui-goal-attente-usager-pa-example](Goal-tddui-goal-attente-usager-pa-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-goal-attente)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-goal-attente.csv), [Excel](StructureDefinition-tddui-goal-attente.xlsx), [Schematron](StructureDefinition-tddui-goal-attente.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-goal-attente",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIGoalAttente",
  "title" : "TDDUI Goal Attente",
  "status" : "active",
  "date" : "2025-11-26T10:17:34+00:00",
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
  "description" : "Profil de la ressource Goal permettant de représenter les attentes pour un usager.",
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
      "identity" : "specmetier-to-TDDUIGoalAttente",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
      "name" : "Modèle de contenu DUI"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Goal",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Goal",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Goal",
        "path" : "Goal",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalAttente",
            "map" : "Attente"
          }
        ]
      },
      {
        "id" : "Goal.extension",
        "path" : "Goal.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Goal.extension:referenceProjetPerso",
        "path" : "Goal.extension",
        "sliceName" : "referenceProjetPerso",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalAttente",
            "map" : "ProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "Goal.identifier",
        "path" : "Goal.identifier",
        "short" : "Identifiant de l'attente",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalAttente",
            "map" : "idAttente"
          }
        ]
      },
      {
        "id" : "Goal.identifier.system",
        "path" : "Goal.identifier.system",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-attente.esante.gouv.fr"
      },
      {
        "id" : "Goal.identifier.value",
        "path" : "Goal.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-ATTE-numAttente",
            "valueString" : "3480787529/123456789-ATTE-1234"
          }
        ]
      },
      {
        "id" : "Goal.description.text",
        "path" : "Goal.description.text",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalAttente",
            "map" : "descriptionAttente"
          }
        ]
      },
      {
        "id" : "Goal.subject",
        "path" : "Goal.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note",
        "path" : "Goal.note",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note').value"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Goal.note.extension",
        "path" : "Goal.note.extension",
        "min" : 1
      },
      {
        "id" : "Goal.note.extension:TDDUIGoalNoteExtension",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIGoalNoteExtension",
        "min" : 1,
        "max" : "2",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note:origineAttente",
        "path" : "Goal.note",
        "sliceName" : "origineAttente",
        "short" : "Originie de l'attente",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalAttente",
            "map" : "origineAttente"
          }
        ]
      },
      {
        "id" : "Goal.note:origineAttente.extension:TDDUIGoalNoteExtension",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIGoalNoteExtension",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note:origineAttente.extension:TDDUIGoalNoteExtension.value[x]",
        "path" : "Goal.note.extension.value[x]",
        "patternCode" : "origineAttente"
      },
      {
        "id" : "Goal.note:commentaireAttente",
        "path" : "Goal.note",
        "sliceName" : "commentaireAttente",
        "short" : "Commentaire de l'attente",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalAttente",
            "map" : "commentaireAttente"
          }
        ]
      },
      {
        "id" : "Goal.note:commentaireAttente.extension:TDDUIGoalNoteExtension",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIGoalNoteExtension",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-note"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note:commentaireAttente.extension:TDDUIGoalNoteExtension.value[x]",
        "path" : "Goal.note.extension.value[x]",
        "patternCode" : "commentaireAttente"
      }
    ]
  }
}

```
