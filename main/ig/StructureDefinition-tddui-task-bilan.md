# TDDUI Task Bilan - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Bilan**

## Resource Profile: TDDUI Task Bilan 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*:TDDUITaskBilan |

 
Profil de la ressource Task permettant de représenter le bilan du projet personnalisé. 

**Utilisations:**

* Ce Profil nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-task-bilan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-task-bilan.csv), [Excel](StructureDefinition-tddui-task-bilan.xlsx), [Schematron](StructureDefinition-tddui-task-bilan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-task-bilan",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan",
  "version" : "2.1.0",
  "name" : "TDDUITaskBilan",
  "title" : "TDDUI Task Bilan",
  "status" : "active",
  "date" : "2025-12-18T17:03:49+00:00",
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
  "description" : "Profil de la ressource Task permettant de représenter le bilan du projet personnalisé.",
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
      "identity" : "specmetier-to-TDDUITaskBilan",
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
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "Bilan"
          }
        ]
      },
      {
        "id" : "Task.identifier",
        "path" : "Task.identifier",
        "short" : "Identifiant du bilan",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "idBilan"
          }
        ]
      },
      {
        "id" : "Task.identifier.system",
        "path" : "Task.identifier.system",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-bilan.esante.gouv.fr"
      },
      {
        "id" : "Task.identifier.value",
        "path" : "Task.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-BILA-numBilan",
            "valueString" : "3480787529/123456789-BILA-1234"
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
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "ProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "Task.code",
        "path" : "Task.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j366-statut-bilan-projet-personnalise-ms"
        },
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "categorieBilan"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod",
        "path" : "Task.executionPeriod",
        "min" : 1
      },
      {
        "id" : "Task.executionPeriod.start",
        "path" : "Task.executionPeriod.start",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "dateBilan"
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
        }
      },
      {
        "id" : "Task.input.type",
        "path" : "Task.input.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/input-tddui-task-bilan-valueset"
        }
      },
      {
        "id" : "Task.input:perimetre",
        "path" : "Task.input",
        "sliceName" : "perimetre",
        "short" : "Périmètre du bilan",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "perimetreBilan"
          }
        ]
      },
      {
        "id" : "Task.input:perimetre.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-bilan-codesystem",
              "code" : "perimetre"
            }
          ]
        }
      },
      {
        "id" : "Task.input:perimetre.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Task.input:problematique",
        "path" : "Task.input",
        "sliceName" : "problematique",
        "short" : "Problématique liée à l'usager",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "problematiqueGlobaleUsager"
          }
        ]
      },
      {
        "id" : "Task.input:problematique.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-bilan-codesystem",
              "code" : "problematique"
            }
          ]
        }
      },
      {
        "id" : "Task.input:problematique.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Task.input:invite",
        "path" : "Task.input",
        "sliceName" : "invite",
        "short" : "Liste des personnes invitées à participer au bilan",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "inviteBilan"
          }
        ]
      },
      {
        "id" : "Task.input:invite.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-bilan-codesystem",
              "code" : "invite"
            }
          ]
        }
      },
      {
        "id" : "Task.input:invite.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Task.input:pieceJointe",
        "path" : "Task.input",
        "sliceName" : "pieceJointe",
        "short" : "Pièce jointe du bilan",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "pieceJointeBilan"
          }
        ]
      },
      {
        "id" : "Task.input:pieceJointe.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-bilan-codesystem",
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
        "id" : "Task.input:dateProchainBilan",
        "path" : "Task.input",
        "sliceName" : "dateProchainBilan",
        "short" : "Date du prochain bilan",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "dateProchainBilan"
          }
        ]
      },
      {
        "id" : "Task.input:dateProchainBilan.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-bilan-codesystem",
              "code" : "dateProchainBilan"
            }
          ]
        }
      },
      {
        "id" : "Task.input:dateProchainBilan.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Task.input:synthesePreparationBilan",
        "path" : "Task.input",
        "sliceName" : "synthesePreparationBilan",
        "short" : "Préparation du bilan",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "synthesePreparationBilan"
          }
        ]
      },
      {
        "id" : "Task.input:synthesePreparationBilan.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-bilan-codesystem",
              "code" : "synthesePreparationBilan"
            }
          ]
        }
      },
      {
        "id" : "Task.input:synthesePreparationBilan.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "Task.input:synthesePreparationBilan.value[x].author[x]",
        "path" : "Task.input.value[x].author[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Task.input:synthesePreparationBilan.value[x].author[x]:authorReference",
        "path" : "Task.input.value[x].author[x]",
        "sliceName" : "authorReference",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "synthesePreparationBilan.auteur"
          }
        ]
      },
      {
        "id" : "Task.input:synthesePreparationBilan.value[x].text",
        "path" : "Task.input.value[x].text",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "synthesePreparationBilan.corps"
          }
        ]
      },
      {
        "id" : "Task.output",
        "path" : "Task.output",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Task.output.type",
        "path" : "Task.output.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/output-tddui-task-bilan-valueset"
        }
      },
      {
        "id" : "Task.output:syntheseBilan",
        "path" : "Task.output",
        "sliceName" : "syntheseBilan",
        "short" : "Synthèse du bilan",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "syntheseBilan"
          }
        ]
      },
      {
        "id" : "Task.output:syntheseBilan.type",
        "path" : "Task.output.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/output-tddui-task-bilan-codesystem",
              "code" : "syntheseBilan"
            }
          ]
        }
      },
      {
        "id" : "Task.output:syntheseBilan.value[x]",
        "path" : "Task.output.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
