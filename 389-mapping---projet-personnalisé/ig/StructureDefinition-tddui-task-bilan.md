# TDDUI Task Bilan - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Bilan**

## Resource Profile: TDDUI Task Bilan 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan | *Version*:2.1.0-ballot |
| Active as of 2025-11-20 | *Computable Name*:TDDUITaskBilan |

 
Profil de la ressource Task permettant de représenter le bilan du projet personnalisé. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

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
  "version" : "2.1.0-ballot",
  "name" : "TDDUITaskBilan",
  "title" : "TDDUI Task Bilan",
  "status" : "active",
  "date" : "2025-11-20T10:32:05+00:00",
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
        "id" : "Task.extension",
        "path" : "Task.extension",
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
        "min" : 2
      },
      {
        "id" : "Task.extension:referenceProjetPerso",
        "path" : "Task.extension",
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
        "id" : "Task.extension:pieceJointeBilan",
        "path" : "Task.extension",
        "sliceName" : "pieceJointeBilan",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "pieceJointeBilan"
          }
        ]
      },
      {
        "id" : "Task.identifier",
        "path" : "Task.identifier",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "identifiantBilan"
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
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskBilan",
            "map" : "categorieBilan"
          }
        ]
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
        "max" : "*",
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
            "code" : "date"
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
        }
      },
      {
        "id" : "Task.input:synthesePreparationBilan.value[x].author[x]:authorReference",
        "path" : "Task.input.value[x].author[x]",
        "sliceName" : "authorReference",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/Organization"
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
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "Task.output:syntheseBilan.value[x].author[x]",
        "path" : "Task.output.value[x].author[x]",
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
        "id" : "Task.output:syntheseBilan.value[x].author[x]:authorReference",
        "path" : "Task.output.value[x].author[x]",
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
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"
            ]
          }
        ]
      }
    ]
  }
}

```
