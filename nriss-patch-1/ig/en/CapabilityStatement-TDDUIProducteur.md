# TDDUI-Producteur - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CapabilityStatement: TDDUI-Producteur 

 
Le rôle de Producteur est de transmettre des données de son logiciel DUI. Il correspond à un logiciel DUI. 

 [Raw OpenAPI-Swagger Definition file](../TDDUIProducteur.openapi.json) | [Download](../TDDUIProducteur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "TDDUIProducteur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CapabilityStatement/TDDUIProducteur",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIProducteur",
  "title" : "TDDUI-Producteur",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-06-20T15:51:35+02:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Le rôle de Producteur est de transmettre des données de son logiciel DUI. Il correspond à un logiciel DUI.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "implementationGuide" : ["https://interop.esante.gouv.fr/ig/fhir/tddui"],
  "rest" : [{
    "mode" : "client",
    "documentation" : "Transmission de données DUI vers un SI tiers (flux 1).",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"
    },
    "resource" : [{
      "type" : "Patient",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Organization",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Encounter",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Practitioner",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "PractitionerRole",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Task",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "QuestionnaireResponse",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "DocumentReference",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "CarePlan",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Consent",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Goal",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-projet-vie|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "ServiceRequest",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-demande-orientation|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "RelatedPerson",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Observation",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-cause-mortalite|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-periode-scolaire|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-mobilite-usager|2.4.0-ballot",
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-repas|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Schedule",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-schedule|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Slot",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-slot-presence-absence|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    },
    {
      "type" : "Basic",
      "supportedProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-decision|2.4.0-ballot"],
      "interaction" : [{
        "code" : "create"
      }]
    }],
    "interaction" : [{
      "code" : "transaction",
      "documentation" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle"
    }]
  }]
}

```
