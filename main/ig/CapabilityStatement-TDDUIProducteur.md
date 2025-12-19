# TDDUI-Producteur - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI-Producteur**

## CapabilityStatement: TDDUI-Producteur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CapabilityStatement/TDDUIProducteur | *Version*:2.1.0 |
| Active as of 2024-06-20 | *Computable Name*:TDDUIProducteur |

 
Le rôle de Producteur est de transmettre des données de son logiciel DUI. Il correspond à un logiciel DUI. 

 [Raw OpenAPI-Swagger Definition file](TDDUIProducteur.openapi.json) | [Download](TDDUIProducteur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "TDDUIProducteur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CapabilityStatement/TDDUIProducteur",
  "version" : "2.1.0",
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement"
          ],
          "interaction" : [
            {
              "code" : "create"
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
              "code" : "create"
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
              "code" : "create"
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
              "code" : "create"
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
              "code" : "create"
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
              "code" : "create"
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
              "code" : "create"
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
              "code" : "create"
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
              "code" : "create"
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
              "code" : "create"
            }
          ]
        },
        {
          "type" : "RelatedPerson",
          "supportedProfile" : [
            "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
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
