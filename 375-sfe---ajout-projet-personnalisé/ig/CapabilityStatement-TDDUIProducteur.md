# TDDUI-Producteur - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI-Producteur**

## CapabilityStatement: TDDUI-Producteur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CapabilityStatement/TDDUIProducteur | *Version*:2.0.0 |
| Active as of 2024-06-20 | *Computable Name*:TDDUIProducteur |

 
Le rôle de Producteur est de transmettre des données de son logiciel DUI. Il correspond à un logiciel DUI. 

 [Raw OpenAPI-Swagger Definition file](TDDUIProducteur.openapi.json) | [Download](TDDUIProducteur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "TDDUIProducteur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CapabilityStatement/TDDUIProducteur",
  "version" : "2.0.0",
  "name" : "TDDUIProducteur",
  "title" : "TDDUI-Producteur",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-06-20T15:51:35+02:00",
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
  "description" : "Le rôle de Producteur est de transmettre des données de son logiciel DUI. Il correspond à un logiciel DUI.",
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "implementationGuide" : ["https://interop.esante.gouv.fr/ig/fhir/tddui"],
  "rest" : [
    {
      "mode" : "client",
      "documentation" : "Transmission de données DUI vers un SI tiers (flux 1).",
      "security" : {
        "cors" : false,
        "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"
      },
      "resource" : [
        {
          "type" : "Patient",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
          ],
          "interaction" : [
            {
              "code" : "create"
            }
          ]
        },
        {
          "type" : "Organization",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"
          ],
          "interaction" : [
            {
              "code" : "create"
            }
          ]
        },
        {
          "type" : "Encounter",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour"
          ],
          "interaction" : [
            {
              "code" : "create"
            }
          ]
        }
      ],
      "interaction" : [
        {
          "code" : "transaction",
          "documentation" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle"
        }
      ]
    }
  ]
}

```
