# TDDUI Goal Attente - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Goal Attente**

## Resource Profile: TDDUI Goal Attente 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*:TDDUIGoalAttente |

 
Profil de la ressource Goal permettant de représenter les attentes pour un usager. 

**Utilisations:**

* Utiliser ce Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Exemples pour ce Profil: [Goal/tddui-pp-pa-goal-attente-famille-example](Goal-tddui-pp-pa-goal-attente-famille-example.md) and [Goal/tddui-pp-pa-goal-attente-usager-example](Goal-tddui-pp-pa-goal-attente-usager-example.md)

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
  "version" : "2.1.0",
  "name" : "TDDUIGoalAttente",
  "title" : "TDDUI Goal Attente",
  "status" : "active",
  "date" : "2025-12-18T14:56:52+00:00",
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
        "id" : "Goal.extension:pieceJointeAttente",
        "path" : "Goal.extension",
        "sliceName" : "pieceJointeAttente",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment"
            ]
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
              "path" : "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator').value"
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
        "id" : "Goal.note.extension:TDDUIDiscriminator",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIDiscriminator",
        "min" : 1,
        "max" : "2",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"
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
        "id" : "Goal.note:origineAttente.extension:TDDUIDiscriminator",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIDiscriminator",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note:origineAttente.extension:TDDUIDiscriminator.value[x]",
        "path" : "Goal.note.extension.value[x]",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
              "code" : "origineAttente"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-goal-attente-note-vs"
        }
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
        "id" : "Goal.note:commentaireAttente.extension:TDDUIDiscriminator",
        "path" : "Goal.note.extension",
        "sliceName" : "TDDUIDiscriminator",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"
            ]
          }
        ]
      },
      {
        "id" : "Goal.note:commentaireAttente.extension:TDDUIDiscriminator.value[x]",
        "path" : "Goal.note.extension.value[x]",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
              "code" : "commentaireAttente"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-goal-attente-note-vs"
        }
      }
    ]
  }
}

```
