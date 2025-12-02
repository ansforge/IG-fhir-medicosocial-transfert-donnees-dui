# TDDUI Task Transport Professionnel - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Task Transport Professionnel**

## Resource Profile: TDDUI Task Transport Professionnel 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel | *Version*:2.1.0-ballot |
| Active as of 2025-12-02 | *Computable Name*:TDDUITaskTransportProfessionnel |

 
Profil de la ressource TDDUITaskTransport permettant de représenter le transport du professionnel. 

**Utilisations:**

* Utiliser ce Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Exemples pour ce Profil: [Task/tddui-task-transport-professionel-example](Task-tddui-task-transport-professionel-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-task-transport-professionnel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-task-transport-professionnel.csv), [Excel](StructureDefinition-tddui-task-transport-professionnel.xlsx), [Schematron](StructureDefinition-tddui-task-transport-professionnel.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-task-transport-professionnel",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel",
  "version" : "2.1.0-ballot",
  "name" : "TDDUITaskTransportProfessionnel",
  "title" : "TDDUI Task Transport Professionnel",
  "status" : "active",
  "date" : "2025-12-02T08:47:08+00:00",
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
  "description" : "Profil de la ressource TDDUITaskTransport permettant de représenter le transport du professionnel.",
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
      "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
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
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
            "map" : "TransportProfessionnel"
          }
        ]
      },
      {
        "id" : "Task.identifier",
        "path" : "Task.identifier",
        "short" : "Identifiant du transport du professionnel",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
            "map" : "idTrajet"
          }
        ]
      },
      {
        "id" : "Task.identifier.system",
        "path" : "Task.identifier.system",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-transportprofessionnel.esante.gouv.fr"
      },
      {
        "id" : "Task.identifier.value",
        "path" : "Task.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-TPPro-idTransport",
            "valueString" : "3480787529/147720425367411-TPPro-21564655"
          }
        ]
      },
      {
        "id" : "Task.code",
        "path" : "Task.code",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
            "map" : "typeTransport"
          }
        ]
      },
      {
        "id" : "Task.for",
        "path" : "Task.for",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
            "map" : "Professionnel"
          }
        ]
      },
      {
        "id" : "Task.encounter",
        "path" : "Task.encounter",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
            "map" : "Evenement"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.start",
        "path" : "Task.executionPeriod.start",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
            "map" : "dateDebutTransport"
          }
        ]
      },
      {
        "id" : "Task.executionPeriod.end",
        "path" : "Task.executionPeriod.end",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
            "map" : "dateFinTransport"
          }
        ]
      },
      {
        "id" : "Task.owner",
        "path" : "Task.owner",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
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
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
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
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
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
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
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
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
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
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
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
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
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
            "identity" : "specmetier-to-TDDUITaskTransportProfessionnel",
            "map" : "dureeTheorique"
          }
        ]
      }
    ]
  }
}

```
