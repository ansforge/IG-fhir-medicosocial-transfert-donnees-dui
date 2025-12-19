# TDDUI ServiceRequest Besoin - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI ServiceRequest Besoin**

## Resource Profile: TDDUI ServiceRequest Besoin 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin | *Version*:2.2.0-ballot |
| Active as of 2025-12-19 | *Computable Name*:TDDUIServiceRequestBesoin |

 
Profil de la ressource ServiceRequest permettant de représenter les besoins de l'usager. 

**Utilisations:**

* Utiliser ce Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référer à ce Profil: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)
* Exemples pour ce Profil: [ServiceRequest/tddui-pp-pa-servicerequest-besoin-1-example](ServiceRequest-tddui-pp-pa-servicerequest-besoin-1-example.md), [ServiceRequest/tddui-pp-pa-servicerequest-besoin-2-example](ServiceRequest-tddui-pp-pa-servicerequest-besoin-2-example.md) and [ServiceRequest/tddui-pp-pa-servicerequest-besoin-3-example](ServiceRequest-tddui-pp-pa-servicerequest-besoin-3-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-service-request-besoin)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-service-request-besoin.csv), [Excel](StructureDefinition-tddui-service-request-besoin.xlsx), [Schematron](StructureDefinition-tddui-service-request-besoin.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-service-request-besoin",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin",
  "version" : "2.2.0-ballot",
  "name" : "TDDUIServiceRequestBesoin",
  "title" : "TDDUI ServiceRequest Besoin",
  "status" : "active",
  "date" : "2025-12-19T09:58:03+00:00",
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
  "description" : "Profil de la ressource ServiceRequest permettant de représenter les besoins de l'usager.",
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
      "identity" : "specmetier-to-TDDUIServiceRequestBesoin",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
      "name" : "Modèle de contenu DUI"
    },
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIServiceRequestBesoin",
            "map" : "Besoin"
          }
        ]
      },
      {
        "id" : "ServiceRequest.extension",
        "path" : "ServiceRequest.extension",
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
        "id" : "ServiceRequest.extension:pieceJointeBesoin",
        "path" : "ServiceRequest.extension",
        "sliceName" : "pieceJointeBesoin",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment|2.2.0-ballot"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIServiceRequestBesoin",
            "map" : "pieceJointeBesoin"
          }
        ]
      },
      {
        "id" : "ServiceRequest.identifier",
        "path" : "ServiceRequest.identifier",
        "short" : "Identifiant du besoin",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIServiceRequestBesoin",
            "map" : "idBesoin"
          }
        ]
      },
      {
        "id" : "ServiceRequest.identifier.system",
        "path" : "ServiceRequest.identifier.system",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-besoin.esante.gouv.fr"
      },
      {
        "id" : "ServiceRequest.identifier.value",
        "path" : "ServiceRequest.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-BESO-numBesoin",
            "valueString" : "3480787529/123456789-BESO-1234"
          }
        ]
      },
      {
        "id" : "ServiceRequest.basedOn",
        "path" : "ServiceRequest.basedOn",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise|2.2.0-ballot"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIServiceRequestBesoin",
            "map" : "ProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "ServiceRequest.category",
        "path" : "ServiceRequest.category",
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J285-Besoins_SERAFIN/FHIR/JDV-J285-Besoins-SERAFIN|20241025120000"
        },
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIServiceRequestBesoin",
            "map" : "typeBesoin"
          }
        ]
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.code.text",
        "path" : "ServiceRequest.code.text",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIServiceRequestBesoin",
            "map" : "descriptionBesoin"
          }
        ]
      },
      {
        "id" : "ServiceRequest.orderDetail.text",
        "path" : "ServiceRequest.orderDetail.text",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIServiceRequestBesoin",
            "map" : "analyseProfessionnelBesoin"
          }
        ]
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient|2.2.0-ballot",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.note.text",
        "path" : "ServiceRequest.note.text",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIServiceRequestBesoin",
            "map" : "commentaireBesoin"
          }
        ]
      }
    ]
  }
}

```
