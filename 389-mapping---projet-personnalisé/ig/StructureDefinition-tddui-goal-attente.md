# TDDUI Goal Attente - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Goal Attente**

## Resource Profile: TDDUI Goal Attente 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente | *Version*:2.1.0-ballot |
| Active as of 2025-11-17 | *Computable Name*:TDDUIGoalAttente |

 
Profil de la ressource TDDUIGoal permettant de représenter les attentes de l'usager. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

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
  "date" : "2025-11-17T16:08:32+00:00",
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
  "description" : "Profil de la ressource TDDUIGoal permettant de représenter les attentes de l'usager.",
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
        ]
      },
      {
        "id" : "Goal.extension:referenceProjetPerso.value[x]",
        "path" : "Goal.extension.value[x]",
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
            "map" : "identifiantAttente"
          }
        ]
      },
      {
        "id" : "Goal.identifier.value",
        "path" : "Goal.identifier.value",
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPAttente-identifiantAttente",
            "valueString" : "123456"
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
        "id" : "Goal.expressedBy",
        "path" : "Goal.expressedBy",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalAttente",
            "map" : "origineAttente"
          }
        ]
      },
      {
        "id" : "Goal.note.text",
        "path" : "Goal.note.text",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIGoalAttente",
            "map" : "commentaireAttente"
          }
        ]
      }
    ]
  }
}

```
