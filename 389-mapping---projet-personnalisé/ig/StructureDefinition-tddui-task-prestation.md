# TDDUI Task Action - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Action**

## Resource Profile: TDDUI Task Action 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation | *Version*:2.1.0-ballot |
| Active as of 2025-11-13 | *Computable Name*:TDDUITaskPrestation |

 
Profil de la ressource Task permettant de représenter les prestations du projet personnalisé. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-task-prestation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-task-prestation.csv), [Excel](StructureDefinition-tddui-task-prestation.xlsx), [Schematron](StructureDefinition-tddui-task-prestation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-task-prestation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation",
  "version" : "2.1.0-ballot",
  "name" : "TDDUITaskPrestation",
  "title" : "TDDUI Task Action",
  "status" : "active",
  "date" : "2025-11-13T10:43:15+00:00",
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
  "description" : "Profil de la ressource Task permettant de représenter les prestations du projet personnalisé.",
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
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Task",
        "path" : "Task"
      },
      {
        "id" : "Task.identifier",
        "path" : "Task.identifier",
        "short" : "Identifiant de l'action",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Task.identifier.value",
        "path" : "Task.identifier.value",
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-ACTI-numAction",
            "valueString" : "123456"
          }
        ]
      },
      {
        "id" : "Task.basedOn",
        "path" : "Task.basedOn",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-perso"
            ]
          }
        ]
      },
      {
        "id" : "Task.partOf",
        "path" : "Task.partOf",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
            ]
          }
        ]
      },
      {
        "id" : "Task.input",
        "path" : "Task.input",
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
        "id" : "Task.input:titre",
        "path" : "Task.input",
        "sliceName" : "titre",
        "short" : "Titre de l’action",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Task.input:titre.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-prestation-codesystem",
              "code" : "titre"
            }
          ]
        }
      },
      {
        "id" : "Task.input:titre.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Task.input:typePrestation",
        "path" : "Task.input",
        "sliceName" : "typePrestation",
        "short" : "Type de la prestation.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Task.input:typePrestation.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-prestation-codesystem",
              "code" : "typePrestation"
            }
          ]
        }
      },
      {
        "id" : "Task.input:typePrestation.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin-valueset"
        }
      },
      {
        "id" : "Task.input:evaluation",
        "path" : "Task.input",
        "sliceName" : "evaluation",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Task.input:pieceJointe",
        "path" : "Task.input",
        "sliceName" : "pieceJointe",
        "short" : "Pièce jointe associée",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Task.input:pieceJointe.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-prestation-codesystem",
              "code" : "pieceJointe"
            }
          ]
        }
      },
      {
        "id" : "Task.input:pieceJointe.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"
            ]
          }
        ]
      },
      {
        "id" : "Task.input:evaluationNonStructuree",
        "path" : "Task.input",
        "sliceName" : "evaluationNonStructuree",
        "short" : "EValuation non structurée",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Task.input:evaluationNonStructuree.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-prestation-codesystem",
              "code" : "evaluationNonStructuree"
            }
          ]
        }
      },
      {
        "id" : "Task.input:evaluationNonStructuree.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"
            ]
          }
        ]
      }
    ]
  }
}

```
