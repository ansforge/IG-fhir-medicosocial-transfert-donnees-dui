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

## TDDUI-Producteur

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Formats supportés : `application/fhir+xml`, `application/fhir+json`
* Publié sur : 2024-06-20 15:51:35+0200 
* Publié par : ANS 

> **Note aux implémenteurs : capacités FHIR**Toute capacité FHIR peut être 'autorisée' par le système sauf si elle est explicitement marquée comme 'SHALL NOT'. Quelques éléments sont marqués comme MAY dans le guide dimplémentation pour souligner leur pertinence potentielle pour le cas dusage.

### DOIT prendre en charge les guides d’implémentation suivants.

* https://interop.esante.gouv.fr/ig/fhir/tddui

## Capacités RESTful FHIR

### Mode: client

Transmission de données DUI vers un SI tiers (flux 1).

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


**Résumé des interactions au niveau du système**

* Supporte le/la `transaction`Les interactions sont décrites comme suit :

https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle


### Capacités par ressource/profil

#### Résumé

Le tableau récapitulatif liste les ressources faisant partie de cette configuration, et pour chaque ressource, il liste :

* Les profils pertinents (le cas échéant)
* Les interactions supportées par chaque ressource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**les types sont seulement présents si au moins une des ressources les prend en charge.
* Les paramètres de recherche (SearchParameters) requis, recommandés, optionnels (le cas échéant).
* Les ressources liées activées pour `_include`
* Les autres ressources activées pour `_revinclude`
* Les opérations sur la ressource (le cas échéant)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#Patient1-1) | Profils supportés  [TDDUI Patient](StructureDefinition-tddui-patient.md)  [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md) |  |  |  | y |  |  |  |  |
| [Organization](#Organization1-2) | Profils supportés  [TDDUI Organization](StructureDefinition-tddui-organization.md) |  |  |  | y |  |  |  |  |
| [Encounter](#Encounter1-3) | Profils supportés  [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)  [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md) |  |  |  | y |  |  |  |  |
| [Practitioner](#Practitioner1-4) | Profils supportés  [TDDUI Practitioner](StructureDefinition-tddui-practitioner.md) |  |  |  | y |  |  |  |  |
| [PractitionerRole](#PractitionerRole1-5) | Profils supportés  [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md) |  |  |  | y |  |  |  |  |
| [Task](#Task1-6) | Profils supportés  [TDDUI Task Transport Professionnel](StructureDefinition-tddui-task-transport-professionnel.md)  [TDDUI Task Transport Usager](StructureDefinition-tddui-task-transport-usager.md) |  |  |  | y |  |  |  |  |
| [QuestionnaireResponse](#QuestionnaireResponse1-7) | Profils supportés  [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md) |  |  |  | y |  |  |  |  |
| [DocumentReference](#DocumentReference1-8) | Profils supportés  [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md) |  |  |  | y |  |  |  |  |

-------

#### Conformité de la ressource : supported Patient

Ressource FHIR coeur

[Patient](http://hl7.org/fhir/R4/patient.html)

Politique de référence

Résumé des interactions

* Supporte `create`.

Profils supportés
[TDDUI Patient](StructureDefinition-tddui-patient.md)
[TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md)

#### Conformité de la ressource : supported Organization

Ressource FHIR coeur

[Organization](http://hl7.org/fhir/R4/organization.html)

Politique de référence

Résumé des interactions

* Supporte `create`.

Profils supportés
[TDDUI Organization](StructureDefinition-tddui-organization.md)

#### Conformité de la ressource : supported Encounter

Ressource FHIR coeur

[Encounter](http://hl7.org/fhir/R4/encounter.html)

Politique de référence

Résumé des interactions

* Supporte `create`.

Profils supportés
[TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)
[TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)

#### Conformité de la ressource : supported Practitioner

Ressource FHIR coeur

[Practitioner](http://hl7.org/fhir/R4/practitioner.html)

Politique de référence

Résumé des interactions

* Supporte `create`.

Profils supportés
[TDDUI Practitioner](StructureDefinition-tddui-practitioner.md)

#### Conformité de la ressource : supported PractitionerRole

Ressource FHIR coeur

[PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html)

Politique de référence

Résumé des interactions

* Supporte `create`.

Profils supportés
[TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md)

#### Conformité de la ressource : supported Task

Ressource FHIR coeur

[Task](http://hl7.org/fhir/R4/task.html)

Politique de référence

Résumé des interactions

* Supporte `create`.

Profils supportés
[TDDUI Task Transport Professionnel](StructureDefinition-tddui-task-transport-professionnel.md)
[TDDUI Task Transport Usager](StructureDefinition-tddui-task-transport-usager.md)

#### Conformité de la ressource : supported QuestionnaireResponse

Ressource FHIR coeur

[QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html)

Politique de référence

Résumé des interactions

* Supporte `create`.

Profils supportés
[TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md)

#### Conformité de la ressource : supported DocumentReference

Ressource FHIR coeur

[DocumentReference](http://hl7.org/fhir/R4/documentreference.html)

Politique de référence

Résumé des interactions

* Supporte `create`.

Profils supportés
[TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md)



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
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager"
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
