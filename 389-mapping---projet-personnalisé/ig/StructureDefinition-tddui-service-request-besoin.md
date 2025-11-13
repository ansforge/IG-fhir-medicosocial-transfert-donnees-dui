# TDDUI ServiceRequest Besoin - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI ServiceRequest Besoin**

## Resource Profile: TDDUI ServiceRequest Besoin 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin | *Version*:2.1.0-ballot |
| Active as of 2025-11-13 | *Computable Name*:TDDUIServiceRequestBesoin |

 
Profil de la ressource TDDUIServiceRequestBesoin permettant de représenter les besoins de l'usager. 

**Usages:**

* Refer to this Profile: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

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
  "version" : "2.1.0-ballot",
  "name" : "TDDUIServiceRequestBesoin",
  "title" : "TDDUI ServiceRequest Besoin",
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
  "description" : "Profil de la ressource TDDUIServiceRequestBesoin permettant de représenter les besoins de l'usager.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest"
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
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.identifier",
        "path" : "ServiceRequest.identifier",
        "short" : "Identifiant du besoin",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "ServiceRequest.identifier.value",
        "path" : "ServiceRequest.identifier.value",
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPBesoin-identifiantBesoin",
            "valueString" : "123456"
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
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-perso"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.category",
        "path" : "ServiceRequest.category",
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J285-Besoins_SERAFIN/FHIR/JDV-J285-Besoins-SERAFIN"
        }
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
            ]
          }
        ]
      }
    ]
  }
}

```
