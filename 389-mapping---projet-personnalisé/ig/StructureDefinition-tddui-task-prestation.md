# TDDUI Task Prestation - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Prestation**

## Resource Profile: TDDUI Task Prestation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation | *Version*:2.1.0-ballot |
| Active as of 2025-12-03 | *Computable Name*:TDDUITaskPrestation |

 
Profil de la ressource Task permettant de représenter les prestations du projet personnalisé. 

**Utilisations:**

* Ce Profil nest utilisé par aucun profil dans ce guide dimplémentation

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
  "title" : "TDDUI Task Prestation",
  "status" : "active",
  "date" : "2025-12-03T10:22:03+00:00",
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
      "identity" : "specmetier-to-TDDUITaskPrestation",
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
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Task",
        "path" : "Task",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "PrestationProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "Task.meta.lastUpdated",
        "path" : "Task.meta.lastUpdated",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "statutPrestation.dateStatut"
          }
        ]
      },
      {
        "id" : "Task.identifier",
        "path" : "Task.identifier",
        "short" : "Identifiant de la prestation",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "idPrestation"
          }
        ]
      },
      {
        "id" : "Task.identifier.system",
        "path" : "Task.identifier.system",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-prestation.esante.gouv.fr"
      },
      {
        "id" : "Task.identifier.value",
        "path" : "Task.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PRES-numPrestation",
            "valueString" : "3480787529/123456789-PRES-1234"
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
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "ProjetPersonnalise"
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
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "Action"
          }
        ]
      },
      {
        "id" : "Task.status",
        "path" : "Task.status",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "statutPrestation.statut"
          }
        ]
      },
      {
        "id" : "Task.status.extension",
        "path" : "Task.status.extension",
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
        "id" : "Task.status.extension:auteurStatut",
        "path" : "Task.status.extension",
        "sliceName" : "auteurStatut",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "statutPrestation.auteur"
          }
        ]
      },
      {
        "id" : "Task.description",
        "path" : "Task.description",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "descriptionPrestation"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.start",
        "path" : "Task.executionPeriod.start",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "dateDebutPrestation"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.end",
        "path" : "Task.executionPeriod.end",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "dateFinPrestation"
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
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "titrePrestation"
          }
        ]
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
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "typePrestation"
          }
        ]
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
        "short" : "Évaluation",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "evaluationPrestation"
          }
        ]
      },
      {
        "id" : "Task.input:evaluation.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-prestation-codesystem",
              "code" : "evaluation"
            }
          ]
        }
      },
      {
        "id" : "Task.input:evaluation.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"
            ]
          }
        ]
      },
      {
        "id" : "Task.input:pieceJointe",
        "path" : "Task.input",
        "sliceName" : "pieceJointe",
        "short" : "Pièce jointe associée",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskPrestation",
            "map" : "pieceJointePrestation"
          }
        ]
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
      }
    ]
  }
}

```
