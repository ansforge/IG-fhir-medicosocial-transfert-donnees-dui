# TDDUI-Consommateur - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI-Consommateur**

## CapabilityStatement: TDDUI-Consommateur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CapabilityStatement/TDDUIConsommateur | *Version*:2.2.0-ballot |
| Active as of 2024-06-20 | *Computable Name*:TDDUIConsommateur |

 
Le rôle du Consommateur est de recueillir les données d'un logiciel DUI. Il correspond à un SI tiers. 

 [Raw OpenAPI-Swagger Definition file](TDDUIConsommateur.openapi.json) | [Download](TDDUIConsommateur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "TDDUIConsommateur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CapabilityStatement/TDDUIConsommateur",
  "version" : "2.2.0-ballot",
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient|2.2.0-ballot",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour|2.2.0-ballot",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel|2.2.0-ballot",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager|2.2.0-ballot",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action|2.2.0-ballot",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan|2.2.0-ballot",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource|2.2.0-ballot",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente|2.2.0-ballot",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif|2.2.0-ballot"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin|2.2.0-ballot"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        },
        {
          "type" : "RelatedPerson",
          "supportedProfile" : [
            "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.1.0"
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
