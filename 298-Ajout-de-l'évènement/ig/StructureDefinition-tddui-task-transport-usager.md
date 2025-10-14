# TDDUI Task Transport Usager - Médicosocial - Transfert de données DUI v2.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Transport Usager**

## Resource Profile: TDDUI Task Transport Usager 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager | *Version*:2.0.0-ballot |
| Active as of 2025-10-14 | *Computable Name*:TDDUITaskTransportUsager |

 
Profil de la ressource TDDUITaskTransport permettant de représenter le transport de l'usager. 

**Usages:**

* Examples for this Profile: [Task/tddui-task-transport-usager-example](Task-tddui-task-transport-usager-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-task-transport-usager)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-task-transport-usager.csv), [Excel](StructureDefinition-tddui-task-transport-usager.xlsx), [Schematron](StructureDefinition-tddui-task-transport-usager.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-task-transport-usager",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager",
  "version" : "2.0.0-ballot",
  "name" : "TDDUITaskTransportUsager",
  "title" : "TDDUI Task Transport Usager",
  "status" : "active",
  "date" : "2025-10-14T09:28:59+00:00",
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
  "description" : "Profil de la ressource TDDUITaskTransport permettant de représenter le transport de l'usager.",
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
      "identity" : "specmetier-to-TDDUITaskTransportUsager",
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
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Task",
        "path" : "Task",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "TransportUsager"
          }
        ]
      },
      {
        "id" : "Task.identifier",
        "path" : "Task.identifier",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "idTrajet"
          }
        ]
      },
      {
        "id" : "Task.identifier.value",
        "path" : "Task.identifier.value",
        "short" : "Format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-TPPat-idTransport."
      },
      {
        "id" : "Task.code",
        "path" : "Task.code",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "typeTransport"
          }
        ]
      },
      {
        "id" : "Task.encounter",
        "path" : "Task.encounter",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "Evenement"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.start",
        "path" : "Task.executionPeriod.start",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "dateDebutTransport"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.end",
        "path" : "Task.executionPeriod.end",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "dateFinTransport"
          }
        ]
      },
      {
        "id" : "Task.owner",
        "path" : "Task.owner",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "transporteur"
          }
        ]
      },
      {
        "id" : "Task.input:typeMotorisation",
        "path" : "Task.input",
        "sliceName" : "typeMotorisation",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "typeMotorisation"
          }
        ]
      },
      {
        "id" : "Task.input:adresseDepart",
        "path" : "Task.input",
        "sliceName" : "adresseDepart",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "adresseDepart"
          }
        ]
      },
      {
        "id" : "Task.input:adresseDestination",
        "path" : "Task.input",
        "sliceName" : "adresseDestination",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "adresseDestination"
          }
        ]
      },
      {
        "id" : "Task.input:budgetPrevisionnel",
        "path" : "Task.input",
        "sliceName" : "budgetPrevisionnel",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "budgetPrevisionnel"
          }
        ]
      },
      {
        "id" : "Task.input:budgetReel",
        "path" : "Task.input",
        "sliceName" : "budgetReel",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "budgetReel"
          }
        ]
      },
      {
        "id" : "Task.input:distance",
        "path" : "Task.input",
        "sliceName" : "distance",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "distance"
          }
        ]
      },
      {
        "id" : "Task.input:dureeTheorique",
        "path" : "Task.input",
        "sliceName" : "dureeTheorique",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "dureeTheorique"
          }
        ]
      },
      {
        "id" : "Task.input:accompagnement",
        "path" : "Task.input",
        "sliceName" : "accompagnement",
        "short" : "Accompagnement nécessaire ou non de l'usager",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "accompagnement"
          }
        ]
      },
      {
        "id" : "Task.input:accompagnement.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "accompagnement"
            }
          ]
        }
      },
      {
        "id" : "Task.input:accompagnement.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Task.input:asepsieRigoureuse",
        "path" : "Task.input",
        "sliceName" : "asepsieRigoureuse",
        "short" : "Asepsie nécessaire ou non nécessaire",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "asepsieRigoureuse"
          }
        ]
      },
      {
        "id" : "Task.input:asepsieRigoureuse.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "asepsie"
            }
          ]
        }
      },
      {
        "id" : "Task.input:asepsieRigoureuse.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Task.input:natureTransport",
        "path" : "Task.input",
        "sliceName" : "natureTransport",
        "short" : "Nature du transport de l'usager",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportUsager",
            "map" : "natureTransport"
          }
        ]
      },
      {
        "id" : "Task.input:natureTransport.type",
        "path" : "Task.input.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
              "code" : "natureTransport"
            }
          ]
        }
      },
      {
        "id" : "Task.input:natureTransport.value[x]",
        "path" : "Task.input.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J282-TransportsLiesAuProjetIndividuel_SERAFIN/FHIR/JDV-J282-TransportsLiesAuProjetIndividuel-SERAFIN"
        }
      }
    ]
  }
}

```
