# TDDUIBundleExampleIME - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUIBundleExampleIME**

## Example Bundle: TDDUIBundleExampleIME



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ExampleTDDUIBundleIME",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "https://test-server.fr/Patient/tddui-pp-ime-patient-example",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "tddui-pp-ime-patient-example",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_tddui-pp-ime-patient-example\"> </a><p class=\"res-header-id\"><b>Narratif généré : Patient tddui-pp-ime-patient-example</b></p><a name=\"tddui-pp-ime-patient-example\"> </a><a name=\"hctddui-pp-ime-patient-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-tddui-patient.html\">TDDUI Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Hugo D. (official) (sexe non précisé), Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456)</p><hr/></div>"
        },
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "PI",
                  "display" : "Patient internal identifier"
                }
              ]
            },
            "system" : "https://identifiant-medicosocial-localusager.esante.gouv.fr",
            "value" : "3480787529/123456"
          }
        ],
        "name" : [
          {
            "use" : "official",
            "family" : "D.",
            "given" : ["Hugo"]
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "TDDUIPatient"
      }
    },
    {
      "fullUrl" : "https://test-server.fr/Consent/tddui-pp-ime-consent-accord-example",
      "resource" : {
        "resourceType" : "Consent",
        "id" : "tddui-pp-ime-consent-accord-example",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Consent_tddui-pp-ime-consent-accord-example\"> </a><p class=\"res-header-id\"><b>Narratif généré : Consent tddui-pp-ime-consent-accord-example</b></p><a name=\"tddui-pp-ime-consent-accord-example\"> </a><a name=\"hctddui-pp-ime-consent-accord-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-tddui-consent-accord.html\">TDDUI Consent Accord</a></p></div><p><b>status</b>: Active</p><p><b>scope</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/consentscope patient-privacy}\">Privacy Consent</span></p><p><b>category</b>: <span title=\"Codes :{http://loinc.org 59284-0}\">Patient Consent</span></p><p><b>dateTime</b>: 2024-01-15 09:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-tddui-practitioner-example.html\">Practitioner Claire Martin </a></p><h3>Policies</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Authority</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"https://www.cnsa.fr/\">https://www.cnsa.fr/</a></td></tr></table></div>"
        },
        "status" : "active",
        "scope" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
              "code" : "patient-privacy",
              "display" : "Privacy Consent"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "59284-0",
                "display" : "Patient Consent"
              }
            ]
          }
        ],
        "dateTime" : "2024-01-15T09:00:00+01:00",
        "performer" : [
          {
            "reference" : "Practitioner/tddui-practitioner-example"
          }
        ],
        "policy" : [
          {
            "authority" : "https://www.cnsa.fr/"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "TDDUIConsentAccord"
      }
    },
    {
      "fullUrl" : "https://test-server.fr/CarePlan/tddui-pp-ime-careplan-example",
      "resource" : {
        "resourceType" : "CarePlan",
        "id" : "tddui-pp-ime-careplan-example",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"CarePlan_tddui-pp-ime-careplan-example\"> </a><p class=\"res-header-id\"><b>Narratif généré : PlanDeSoins tddui-pp-ime-careplan-example</b></p><a name=\"tddui-pp-ime-careplan-example\"> </a><a name=\"hctddui-pp-ime-careplan-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-tddui-careplan-projet-personnalise.html\">TDDUI CarePlan Projet Personalise</a></p></div><p><b>identifier</b>: <code>https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr</code>/3480787529/123456-PPER-12</p><p><b>status</b>: Active</p><p><b>intent</b>: Plan</p><p><b>title</b>: Projet personnalisé de Hugo en IME</p><p><b>subject</b>: <a href=\"Patient-tddui-pp-ime-patient-example.html\">Hugo D. (official) (sexe non précisé), Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456)</a></p><p><b>supportingInfo</b>: <a href=\"Consent-tddui-pp-ime-consent-accord-example.html\">Consent : status = active; scope = Privacy Consent; category = Patient Consent; dateTime = 2024-01-15 09:00:00+0100</a></p></div>"
        },
        "identifier" : [
          {
            "system" : "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr",
            "value" : "3480787529/123456-PPER-12"
          }
        ],
        "status" : "active",
        "intent" : "plan",
        "title" : "Projet personnalisé de Hugo en IME",
        "subject" : {
          "reference" : "Patient/tddui-pp-ime-patient-example"
        },
        "supportingInfo" : [
          {
            "extension" : [
              {
                "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator",
                "valueCodeableConcept" : {
                  "coding" : [
                    {
                      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
                      "code" : "accordStructure"
                    }
                  ]
                }
              }
            ],
            "reference" : "Consent/tddui-pp-ime-consent-accord-example"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "TDDUICarePlanProjetPersonnalise"
      }
    },
    {
      "fullUrl" : "https://test-server.fr/Goal/tddui-pp-ime-goal-objectif-1-example",
      "resource" : {
        "resourceType" : "Goal",
        "id" : "tddui-pp-ime-goal-objectif-1-example",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Goal_tddui-pp-ime-goal-objectif-1-example\"> </a><p class=\"res-header-id\"><b>Narratif généré : But tddui-pp-ime-goal-objectif-1-example</b></p><a name=\"tddui-pp-ime-goal-objectif-1-example\"> </a><a name=\"hctddui-pp-ime-goal-objectif-1-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-tddui-goal-objectif.html\">TDDUI Goal Objectif</a></p></div><p><b>Lien vers le projet personnalisé</b>: <a href=\"CarePlan-tddui-pp-ime-careplan-example.html\">CarePlan Projet personnalisé de Hugo en IME</a></p><p><b>identifier</b>: <code>https://identifiant-medicosocial-objectif.esante.gouv.fr</code>/3480787529/123456-OBJE-1234</p><p><b>lifecycleStatus</b>: Active</p><p><b>description</b>: <span title=\"Codes :\">Tolérer 20 min de cour avec casque anti‑bruit en 4 mois.</span></p><p><b>subject</b>: <a href=\"Patient-tddui-pp-ime-patient-example.html\">Hugo D. (official) (sexe non précisé), Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456)</a></p><p><b>note</b>: </p><blockquote><div><p>Objectif 1</p>\n</div></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
            "valueReference" : {
              "reference" : "CarePlan/tddui-pp-ime-careplan-example"
            }
          }
        ],
        "identifier" : [
          {
            "system" : "https://identifiant-medicosocial-objectif.esante.gouv.fr",
            "value" : "3480787529/123456-OBJE-1234"
          }
        ],
        "lifecycleStatus" : "active",
        "description" : {
          "text" : "Tolérer 20 min de cour avec casque anti‑bruit en 4 mois."
        },
        "subject" : {
          "reference" : "Patient/tddui-pp-ime-patient-example"
        },
        "note" : [
          {
            "extension" : [
              {
                "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator",
                "valueCodeableConcept" : {
                  "coding" : [
                    {
                      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
                      "code" : "titreObjectif"
                    }
                  ]
                }
              }
            ],
            "text" : "Objectif 1"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "TDDUIGoalObjectif"
      }
    },
    {
      "fullUrl" : "https://test-server.fr/Goal/tddui-pp-ime-goal-objectif-2-example",
      "resource" : {
        "resourceType" : "Goal",
        "id" : "tddui-pp-ime-goal-objectif-2-example",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Goal_tddui-pp-ime-goal-objectif-2-example\"> </a><p class=\"res-header-id\"><b>Narratif généré : But tddui-pp-ime-goal-objectif-2-example</b></p><a name=\"tddui-pp-ime-goal-objectif-2-example\"> </a><a name=\"hctddui-pp-ime-goal-objectif-2-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-tddui-goal-objectif.html\">TDDUI Goal Objectif</a></p></div><p><b>Lien vers le projet personnalisé</b>: <a href=\"CarePlan-tddui-pp-ime-careplan-example.html\">CarePlan Projet personnalisé de Hugo en IME</a></p><p><b>identifier</b>: <code>https://identifiant-medicosocial-objectif.esante.gouv.fr</code>/3480787529/123456-OBJE-1235</p><p><b>lifecycleStatus</b>: Active</p><p><b>description</b>: <span title=\"Codes :\">Atteindre le niveau lecteur débutant (décodage syllabique) en 9 mois.</span></p><p><b>subject</b>: <a href=\"Patient-tddui-pp-ime-patient-example.html\">Hugo D. (official) (sexe non précisé), Date de Naissance inconnue ( Patient internal identifier: 3480787529/123456)</a></p><p><b>note</b>: </p><blockquote><div><p>Objectif 2</p>\n</div></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
            "valueReference" : {
              "reference" : "CarePlan/tddui-pp-ime-careplan-example"
            }
          }
        ],
        "identifier" : [
          {
            "system" : "https://identifiant-medicosocial-objectif.esante.gouv.fr",
            "value" : "3480787529/123456-OBJE-1235"
          }
        ],
        "lifecycleStatus" : "active",
        "description" : {
          "text" : "Atteindre le niveau lecteur débutant (décodage syllabique) en 9 mois."
        },
        "subject" : {
          "reference" : "Patient/tddui-pp-ime-patient-example"
        },
        "note" : [
          {
            "extension" : [
              {
                "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator",
                "valueCodeableConcept" : {
                  "coding" : [
                    {
                      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
                      "code" : "titreObjectif"
                    }
                  ]
                }
              }
            ],
            "text" : "Objectif 2"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "TDDUIGoalObjectif"
      }
    },
    {
      "fullUrl" : "https://test-server.fr/Task/tddui-pp-ime-task-action-1-aesh-example",
      "resource" : {
        "resourceType" : "Task",
        "id" : "tddui-pp-ime-task-action-1-aesh-example",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Task_tddui-pp-ime-task-action-1-aesh-example\"> </a><p class=\"res-header-id\"><b>Narratif généré : Task tddui-pp-ime-task-action-1-aesh-example</b></p><a name=\"tddui-pp-ime-task-action-1-aesh-example\"> </a><a name=\"hctddui-pp-ime-task-action-1-aesh-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-tddui-task-action.html\">TDDUI Task Action</a></p></div><p><b>identifier</b>: <code>https://identifiant-medicosocial-action.esante.gouv.fr</code>/3480787529/123456-ACTI-1234</p><p><b>basedOn</b>: <a href=\"CarePlan-tddui-pp-ime-careplan-example.html\">CarePlan Projet personnalisé de Hugo en IME</a></p><p><b>status</b>: In Progress</p><p><b>intent</b>: plan</p><p><b>description</b>: Vérification port du casque</p><p><b>owner</b>: AESH</p><h3>Inputs</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes :{https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem titre}\">Titre de l'action à mener.</span></td><td>Action de l'AS pour atteindre l'objectif 1</td></tr></table></div>"
        },
        "identifier" : [
          {
            "system" : "https://identifiant-medicosocial-action.esante.gouv.fr",
            "value" : "3480787529/123456-ACTI-1234"
          }
        ],
        "basedOn" : [
          {
            "reference" : "CarePlan/tddui-pp-ime-careplan-example"
          }
        ],
        "status" : "in-progress",
        "intent" : "plan",
        "description" : "Vérification port du casque",
        "owner" : {
          "display" : "AESH"
        },
        "input" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
                  "code" : "titre"
                }
              ]
            },
            "valueString" : "Action de l'AS pour atteindre l'objectif 1"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "TDDUITaskAction"
      }
    },
    {
      "fullUrl" : "https://test-server.fr/Task/tddui-pp-ime-task-action-1-educ-example",
      "resource" : {
        "resourceType" : "Task",
        "id" : "tddui-pp-ime-task-action-1-educ-example",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Task_tddui-pp-ime-task-action-1-educ-example\"> </a><p class=\"res-header-id\"><b>Narratif généré : Task tddui-pp-ime-task-action-1-educ-example</b></p><a name=\"tddui-pp-ime-task-action-1-educ-example\"> </a><a name=\"hctddui-pp-ime-task-action-1-educ-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-tddui-task-action.html\">TDDUI Task Action</a></p></div><p><b>identifier</b>: <code>https://identifiant-medicosocial-action.esante.gouv.fr</code>/3480787529/123456-ACTI-1235</p><p><b>basedOn</b>: <a href=\"CarePlan-tddui-pp-ime-careplan-example.html\">CarePlan Projet personnalisé de Hugo en IME</a></p><p><b>status</b>: In Progress</p><p><b>intent</b>: plan</p><p><b>description</b>: Lecture guidée sur tablette 15 min/jour</p><p><b>owner</b>: AESH</p><h3>Inputs</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes :{https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem titre}\">Titre de l'action à mener.</span></td><td>Action de l'éducateur spécialisé pour atteindre l'objectif 2</td></tr></table></div>"
        },
        "identifier" : [
          {
            "system" : "https://identifiant-medicosocial-action.esante.gouv.fr",
            "value" : "3480787529/123456-ACTI-1235"
          }
        ],
        "basedOn" : [
          {
            "reference" : "CarePlan/tddui-pp-ime-careplan-example"
          }
        ],
        "status" : "in-progress",
        "intent" : "plan",
        "description" : "Lecture guidée sur tablette 15 min/jour",
        "owner" : {
          "display" : "AESH"
        },
        "input" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-action-codesystem",
                  "code" : "titre"
                }
              ]
            },
            "valueString" : "Action de l'éducateur spécialisé pour atteindre l'objectif 2"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "TDDUITaskAction"
      }
    }
  ]
}

```
