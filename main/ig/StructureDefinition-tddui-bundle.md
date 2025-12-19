# TDDUI Bundle - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Bundle**

## Resource Profile: TDDUI Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle | *Version*:2.2.0-ballot |
| Active as of 2025-12-19 | *Computable Name*:TDDUIBundle |

 
Profil générique créé pour transmettre des données d'un logiciel DUI. 

**Utilisations:**

* Exemples pour ce Profil: [Bundle/ExampleTDDUIBundle](Bundle-ExampleTDDUIBundle.md), [Bundle/tddui-pp-ime-bundle-example](Bundle-tddui-pp-ime-bundle-example.md) and [Bundle/tddui-pp-pa-bundle-example](Bundle-tddui-pp-pa-bundle-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-bundle.csv), [Excel](StructureDefinition-tddui-bundle.xlsx), [Schematron](StructureDefinition-tddui-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-bundle",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle",
  "version" : "2.2.0-ballot",
  "name" : "TDDUIBundle",
  "title" : "TDDUI Bundle",
  "status" : "active",
  "date" : "2025-12-19T09:25:15+00:00",
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
  "description" : "Profil générique créé pour transmettre des données d'un logiciel DUI.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "description" : "Slicing based on the profile conformance of the entry",
          "rules" : "open"
        }
      },
      {
        "id" : "Bundle.entry:DUIPatient",
        "path" : "Bundle.entry",
        "sliceName" : "DUIPatient",
        "short" : "Patient conforming to the TDDUIPatient profile, used to convey patients without an INS identity.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIPatient.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIPatient.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIPatient.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIPatientINS",
        "path" : "Bundle.entry",
        "sliceName" : "DUIPatientINS",
        "short" : "Patient conforming to the TDDUIPatientINS profile, used to convey patients identified by an INS identity.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIPatientINS.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIPatientINS.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIPatientINS.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIOrganization",
        "path" : "Bundle.entry",
        "sliceName" : "DUIOrganization",
        "short" : "Organization conforming to the TDDUIOrganization profile, used to convey the responsible organization.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIOrganization.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIOrganization.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIOrganization.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIEncounterSejour",
        "path" : "Bundle.entry",
        "sliceName" : "DUIEncounterSejour",
        "short" : "Encounter conforming to the TDDUIEncounterSejour profile, used to convey the patient's stay.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIEncounterSejour.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIEncounterSejour.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIEncounterSejour.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIEncounterEvenement",
        "path" : "Bundle.entry",
        "sliceName" : "DUIEncounterEvenement",
        "short" : "Encounter conforming to the TDDUIEncounterEvenement profile, used to convey event linked to the patient patient's stay.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIEncounterEvenement.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIEncounterEvenement.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIEncounterEvenement.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIPractitioner",
        "path" : "Bundle.entry",
        "sliceName" : "DUIPractitioner",
        "short" : "Practitioner conforming to the TDDUIPractitioner profile, used to convey the practitioner.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIPractitioner.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIPractitioner.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIPractitioner.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIPractitionerRole",
        "path" : "Bundle.entry",
        "sliceName" : "DUIPractitionerRole",
        "short" : "PractitionerRole conforming to the TDDUIPractitionerRole profile, used to convey the practitioner.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIPractitionerRole.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIPractitionerRole.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIPractitionerRole.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUITransportProfessionnel",
        "path" : "Bundle.entry",
        "sliceName" : "DUITransportProfessionnel",
        "short" : "Task conforming to the TDDUITaskTransportProfessionnel profile, used to convey the practitioner transportation.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUITransportProfessionnel.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Task",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUITransportProfessionnel.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUITransportProfessionnel.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUITransportUsager",
        "path" : "Bundle.entry",
        "sliceName" : "DUITransportUsager",
        "short" : "Task conforming to the TDDUITaskTransportUsager profile, used to convey the patient transportation.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUITransportUsager.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Task",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUITransportUsager.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUITransportUsager.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIDocumentReference",
        "path" : "Bundle.entry",
        "sliceName" : "DUIDocumentReference",
        "short" : "DocumentReference conforming to the TDDUIDocumentReference profile, used to convey evaluation attachement",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIDocumentReference.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIDocumentReference.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIDocumentReference.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIQuestionnaireResponse",
        "path" : "Bundle.entry",
        "sliceName" : "DUIQuestionnaireResponse",
        "short" : "QuestionnaireResponse conforming to the TDDUIQuestionnaireResponse profile, used to convey the evaluation",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIQuestionnaireResponse.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "QuestionnaireResponse",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIQuestionnaireResponse.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIQuestionnaireResponse.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUICarePlanProjetPersonnalise",
        "path" : "Bundle.entry",
        "sliceName" : "DUICarePlanProjetPersonnalise",
        "short" : "CarePlan conforming to the TDDUICarePlanProjetPersonnalise profile, used to convey the personalized care plan",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUICarePlanProjetPersonnalise.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "CarePlan",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUICarePlanProjetPersonnalise.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUICarePlanProjetPersonnalise.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIConsentAccord",
        "path" : "Bundle.entry",
        "sliceName" : "DUIConsentAccord",
        "short" : "Consent conforming to the TDDUIConsentAccord profile, used to document the patient’s and the organization’s agreement",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIConsentAccord.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Consent",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIConsentAccord.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIConsentAccord.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIGoalAttente",
        "path" : "Bundle.entry",
        "sliceName" : "DUIGoalAttente",
        "short" : "Goal conforming to the TDDUIGoalAttente profile, used to convey the patient’s expectations",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIGoalAttente.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Goal",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIGoalAttente.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIGoalAttente.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIGoalObjectif",
        "path" : "Bundle.entry",
        "sliceName" : "DUIGoalObjectif",
        "short" : "Goal conforming to the TDDUIGoalObjectif profile, used to convey the objectives of the personalized care plan",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIGoalObjectif.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Goal",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIGoalObjectif.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIGoalObjectif.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIServiceRequestBesoin",
        "path" : "Bundle.entry",
        "sliceName" : "DUIServiceRequestBesoin",
        "short" : "ServiceRequest conforming to the TDDUIServiceRequestBesoin profile, used to convey the needs",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIServiceRequestBesoin.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "ServiceRequest",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIServiceRequestBesoin.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIServiceRequestBesoin.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUITaskAction",
        "path" : "Bundle.entry",
        "sliceName" : "DUITaskAction",
        "short" : "Task conforming to the TDDUITaskAction profile, used to convey the actions to be performed",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUITaskAction.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Task",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUITaskAction.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUITaskAction.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUITaskBilan",
        "path" : "Bundle.entry",
        "sliceName" : "DUITaskBilan",
        "short" : "Task conforming to the TDDUITaskBilan profile, used to convey the summary",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUITaskBilan.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Task",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUITaskBilan.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUITaskBilan.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUITaskMoyenRessource",
        "path" : "Bundle.entry",
        "sliceName" : "DUITaskMoyenRessource",
        "short" : "Task conforming to the TDDUITaskMoyenRessource profile, used to convey the means and resources",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUITaskMoyenRessource.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Task",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUITaskMoyenRessource.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUITaskMoyenRessource.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUITaskPrestation",
        "path" : "Bundle.entry",
        "sliceName" : "DUITaskPrestation",
        "short" : "Task conforming to the TDDUITaskPrestation profile, used to convey the services provided",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUITaskPrestation.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Task",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUITaskPrestation.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUITaskPrestation.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:RelatedPerson",
        "path" : "Bundle.entry",
        "sliceName" : "RelatedPerson",
        "short" : "RelatedPerson conforming to the FrCoreRelatedPerson profile, used to convey information about the user's contacts.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:RelatedPerson.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "RelatedPerson",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.1.0"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:RelatedPerson.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:RelatedPerson.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      }
    ]
  }
}

```
