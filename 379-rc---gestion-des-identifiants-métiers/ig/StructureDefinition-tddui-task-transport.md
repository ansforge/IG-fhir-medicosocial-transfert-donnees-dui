# TDDUI Task Transport - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Transport**

## Resource Profile: TDDUI Task Transport 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport | *Version*:2.0.0 |
| Active as of 2025-10-22 | *Computable Name*:TDDUITaskTransport |

 
Profil de la ressource Task permettant de représenter le transport. 

 
>  
**Note**: La ressource Task en FHIR R4 est utilisée pour représenter le Transport. Lors d'une montée de version vers FHIR R5, il conviendra d'utiliser la ressource Transport. 
 

**Usages:**

* Derived from this Profile: [TDDUI Task Transport Professionnel](StructureDefinition-tddui-task-transport-professionnel.md) and [TDDUI Task Transport Usager](StructureDefinition-tddui-task-transport-usager.md)
* Examples for this Profile: [Task/tddui-task-transport-example](Task-tddui-task-transport-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-task-transport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-task-transport.csv), [Excel](StructureDefinition-tddui-task-transport.xlsx), [Schematron](StructureDefinition-tddui-task-transport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-task-transport",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport",
  "version" : "2.0.0",
  "name" : "TDDUITaskTransport",
  "title" : "TDDUI Task Transport",
  "status" : "active",
  "date" : "2025-10-22T10:16:49+00:00",
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
  "description" : "Profil de la ressource Task permettant de représenter le transport.",
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
  "purpose" : "> **Note** : La ressource Task en FHIR R4 est utilisée pour représenter le Transport. Lors d'une montée de version vers FHIR R5, il conviendra d'utiliser la ressource Transport.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "specmetier-to-TDDUITaskTransport",
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
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "Transport"
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
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "idTrajet"
          }
        ]
      },
      {
        "id" : "Task.code",
        "path" : "Task.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mode-de-transport-cisis"
        },
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "typeTransport"
          }
        ]
      },
      {
        "id" : "Task.encounter",
        "path" : "Task.encounter",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "Evenement"
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
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "dateDebutTransport"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.end",
        "path" : "Task.executionPeriod.end",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "dateFinTransport"
          }
        ]
      },
      {
        "id" : "Task.owner",
        "path" : "Task.owner",
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
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "transporteur"
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
        "id" : "Task.input:typeMotorisation",
        "path" : "Task.input",
        "sliceName" : "typeMotorisation",
        "short" : "Type de motorisation",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "typeMotorisation"
          }
        ]
      },
      {
        "id" : "Task.input:typeMotorisation.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "typeMotorisation"
            }
          ]
        }
      },
      {
        "id" : "Task.input:typeMotorisation.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-motorisation-cisis"
        }
      },
      {
        "id" : "Task.input:adresseDepart",
        "path" : "Task.input",
        "sliceName" : "adresseDepart",
        "short" : "Adresse de départ",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "adresseDepart"
          }
        ]
      },
      {
        "id" : "Task.input:adresseDepart.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "adresseDepart"
            }
          ]
        }
      },
      {
        "id" : "Task.input:adresseDepart.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "Task.input:adresseDestination",
        "path" : "Task.input",
        "sliceName" : "adresseDestination",
        "short" : "Adresse de destination",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "adresseDestination"
          }
        ]
      },
      {
        "id" : "Task.input:adresseDestination.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "adresseDestination"
            }
          ]
        }
      },
      {
        "id" : "Task.input:adresseDestination.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "Task.input:budgetPrevisionnel",
        "path" : "Task.input",
        "sliceName" : "budgetPrevisionnel",
        "short" : "Budget prévisionnel",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "budgetPrevisionnel"
          }
        ]
      },
      {
        "id" : "Task.input:budgetPrevisionnel.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "budgetPrevisionnel"
            }
          ]
        }
      },
      {
        "id" : "Task.input:budgetPrevisionnel.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Money"
          }
        ]
      },
      {
        "id" : "Task.input:budgetReel",
        "path" : "Task.input",
        "sliceName" : "budgetReel",
        "short" : "Budget réel",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "budgetReel"
          }
        ]
      },
      {
        "id" : "Task.input:budgetReel.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "budgetReel"
            }
          ]
        }
      },
      {
        "id" : "Task.input:budgetReel.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Money"
          }
        ]
      },
      {
        "id" : "Task.input:distance",
        "path" : "Task.input",
        "sliceName" : "distance",
        "short" : "Distance du trajet",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "distance"
          }
        ]
      },
      {
        "id" : "Task.input:distance.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "distance"
            }
          ]
        }
      },
      {
        "id" : "Task.input:distance.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Distance"
          }
        ]
      },
      {
        "id" : "Task.input:dureeTheorique",
        "path" : "Task.input",
        "sliceName" : "dureeTheorique",
        "short" : "Durée théorique du trajet",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransport",
            "map" : "dureeTheorique"
          }
        ]
      },
      {
        "id" : "Task.input:dureeTheorique.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "dureeTheorique"
            }
          ]
        }
      },
      {
        "id" : "Task.input:dureeTheorique.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "Duration"
          }
        ]
      }
    ]
  }
}

```
