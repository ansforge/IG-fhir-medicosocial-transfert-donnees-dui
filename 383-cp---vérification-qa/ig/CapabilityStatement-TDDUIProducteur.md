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

## TDDUI-Producteur

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Publié sur : 2024-06-20 15:51:35+0200 
* Publié par : ANS 

> **Note aux implémenteurs : capacités FHIR**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

### DOIT prendre en charge les guides d’implémentation suivants.

* https://interop.esante.gouv.fr/ig/fhir/tddui

## FHIR RESTful Capabilities

### Mode: client

Transmission de données DUI vers un SI tiers (flux 1).

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


**Summary of System-wide Interactions**

* Supports the `transaction`Les interactions sont décrites comme suit :

https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle


### Capabilities by Resource/Profile

#### Résumé

Le tableau récapitulatif liste les ressources faisant partie de cette configuration, et pour chaque ressource, il liste :

* The relevant profiles (if any)
* Les interactions supportées par chaque ressource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**les types sont seulement présents si au moins une des ressources les prend en charge.
* Les paramètres de recherche (SearchParameters) requis, recommandés, optionnels (le cas échéant).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#Patient1-1) | Supported Profiles  [TDDUI Patientversion: 2.0.0)](StructureDefinition-tddui-patient.md)  [TDDUI Patient INSversion: 2.0.0)](StructureDefinition-tddui-patient-ins.md) |  |  |  | y |  |  |  |  |
| [Organization](#Organization1-2) | Supported Profiles  [TDDUI Organizationversion: 2.0.0)](StructureDefinition-tddui-organization.md) |  |  |  | y |  |  |  |  |
| [Encounter](#Encounter1-3) | Supported Profiles  [TDDUI Encounter Sejourversion: 2.0.0)](StructureDefinition-tddui-encounter-sejour.md)  [TDDUI Encounter Evenementversion: 2.0.0)](StructureDefinition-tddui-encounter-evenement.md) |  |  |  | y |  |  |  |  |
| [Practitioner](#Practitioner1-4) | Supported Profiles  [TDDUI Practitionerversion: 2.0.0)](StructureDefinition-tddui-practitioner.md) |  |  |  | y |  |  |  |  |
| [PractitionerRole](#PractitionerRole1-5) | Supported Profiles  [TDDUI Practitioner Roleversion: 2.0.0)](StructureDefinition-tddui-practitioner-role.md) |  |  |  | y |  |  |  |  |
| [Task](#Task1-6) | Supported Profiles  [TDDUI Task Transport Professionnelversion: 2.0.0)](StructureDefinition-tddui-task-transport-professionnel.md)  [TDDUI Task Transport Usagerversion: 2.0.0)](StructureDefinition-tddui-task-transport-usager.md) |  |  |  | y |  |  |  |  |
| [QuestionnaireResponse](#QuestionnaireResponse1-7) | Supported Profiles  [TDDUI QuestionnaireResponseversion: 2.0.0)](StructureDefinition-tddui-questionnaire-response.md) |  |  |  | y |  |  |  |  |
| [DocumentReference](#DocumentReference1-8) | Supported Profiles  [TDDUI DocumentReferenceversion: 2.0.0)](StructureDefinition-tddui-document-reference.md) |  |  |  | y |  |  |  |  |

-------

#### Resource Conformance: supported Patient

Ressource FHIR coeur

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Résumé des interactions

* Supports `create`.

Supported Profiles
[TDDUI Patientversion: 2.0.0)](StructureDefinition-tddui-patient.md)
[TDDUI Patient INSversion: 2.0.0)](StructureDefinition-tddui-patient-ins.md)

#### Resource Conformance: supported Organization

Ressource FHIR coeur

[Organization](http://hl7.org/fhir/R4/organization.html)

Reference Policy

Résumé des interactions

* Supports `create`.

Supported Profiles
[TDDUI Organizationversion: 2.0.0)](StructureDefinition-tddui-organization.md)

#### Resource Conformance: supported Encounter

Ressource FHIR coeur

[Encounter](http://hl7.org/fhir/R4/encounter.html)

Reference Policy

Résumé des interactions

* Supports `create`.

Supported Profiles
[TDDUI Encounter Sejourversion: 2.0.0)](StructureDefinition-tddui-encounter-sejour.md)
[TDDUI Encounter Evenementversion: 2.0.0)](StructureDefinition-tddui-encounter-evenement.md)

#### Resource Conformance: supported Practitioner

Ressource FHIR coeur

[Practitioner](http://hl7.org/fhir/R4/practitioner.html)

Reference Policy

Résumé des interactions

* Supports `create`.

Supported Profiles
[TDDUI Practitionerversion: 2.0.0)](StructureDefinition-tddui-practitioner.md)

#### Resource Conformance: supported PractitionerRole

Ressource FHIR coeur

[PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html)

Reference Policy

Résumé des interactions

* Supports `create`.

Supported Profiles
[TDDUI Practitioner Roleversion: 2.0.0)](StructureDefinition-tddui-practitioner-role.md)

#### Resource Conformance: supported Task

Ressource FHIR coeur

[Task](http://hl7.org/fhir/R4/task.html)

Reference Policy

Résumé des interactions

* Supports `create`.

Supported Profiles
[TDDUI Task Transport Professionnelversion: 2.0.0)](StructureDefinition-tddui-task-transport-professionnel.md)
[TDDUI Task Transport Usagerversion: 2.0.0)](StructureDefinition-tddui-task-transport-usager.md)

#### Resource Conformance: supported QuestionnaireResponse

Ressource FHIR coeur

[QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html)

Reference Policy

Résumé des interactions

* Supports `create`.

Supported Profiles
[TDDUI QuestionnaireResponseversion: 2.0.0)](StructureDefinition-tddui-questionnaire-response.md)

#### Resource Conformance: supported DocumentReference

Ressource FHIR coeur

[DocumentReference](http://hl7.org/fhir/R4/documentreference.html)

Reference Policy

Résumé des interactions

* Supports `create`.

Supported Profiles
[TDDUI DocumentReferenceversion: 2.0.0)](StructureDefinition-tddui-document-reference.md)



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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient|2.0.0",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins|2.0.0"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization|2.0.0"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour|2.0.0",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement|2.0.0"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner|2.0.0"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role|2.0.0"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel|2.0.0",
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager|2.0.0"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response|2.0.0"
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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference|2.0.0"
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
