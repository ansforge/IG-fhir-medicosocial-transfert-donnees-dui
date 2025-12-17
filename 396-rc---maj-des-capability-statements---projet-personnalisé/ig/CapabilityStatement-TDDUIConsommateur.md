# TDDUI-Consommateur - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI-Consommateur**

## CapabilityStatement: TDDUI-Consommateur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CapabilityStatement/TDDUIConsommateur | *Version*:2.1.0 |
| Active as of 2024-06-20 | *Computable Name*:TDDUIConsommateur |

 
Le rôle du Consommateur est de recueillir les données d'un logiciel DUI. Il correspond à un SI tiers. 

 [Raw OpenAPI-Swagger Definition file](TDDUIConsommateur.openapi.json) | [Download](TDDUIConsommateur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "TDDUIConsommateur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CapabilityStatement/TDDUIConsommateur",
  "version" : "2.1.0",
  "name" : "TDDUIConsommateur",
  "title" : "TDDUI-Consommateur",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-06-20T09:51:35+02:00",
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
  "description" : "Le rôle du Consommateur est de recueillir les données d'un logiciel DUI. Il correspond à un SI tiers.",
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
      "documentation" : "Réception de données transmises depuis un logiciel DUI (flux 1).",
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
              "code" : "read"
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
              "code" : "read"
            }
          ]
        },
        {
          "type" : "Encounter",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "Practitioner",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "PractitionerRole",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "Task",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "QuestionnaireResponse",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "DocumentReference",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "CarePlan",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "Consent",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "Goal",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "ServiceRequest",
          "supportedProfile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin"
          ],
          "interaction" : [
            {
              "code" : "read"
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
