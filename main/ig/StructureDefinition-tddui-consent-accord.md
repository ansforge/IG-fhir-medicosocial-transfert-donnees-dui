# TDDUI Consent Accord - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Consent Accord**

## Resource Profile: TDDUI Consent Accord 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*:TDDUIConsentAccord |

 
Profil de la ressource Consent permettant de représenter l'accord de l'usager, de son entourage ou de la structure. 

**Utilisations:**

* Référer à ce Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)
* Exemples pour ce Profil: [Consent/tddui-pp-ime-consent-accord-example](Consent-tddui-pp-ime-consent-accord-example.md) and [Consent/tddui-pp-pa-consent-accord-example](Consent-tddui-pp-pa-consent-accord-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-consent-accord)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-consent-accord.csv), [Excel](StructureDefinition-tddui-consent-accord.xlsx), [Schematron](StructureDefinition-tddui-consent-accord.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-consent-accord",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord",
  "version" : "2.1.0",
  "name" : "TDDUIConsentAccord",
  "title" : "TDDUI Consent Accord",
  "status" : "active",
  "date" : "2025-12-18T17:03:49+00:00",
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
  "description" : "Profil de la ressource Consent permettant de représenter l'accord de l'usager, de son entourage ou de la structure.",
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
      "identity" : "specmetier-to-TDDUIConsentAccord",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
      "name" : "Modèle de contenu DUI"
    },
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Consent",
        "path" : "Consent",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIConsentAccord",
            "map" : "Accord"
          }
        ]
      },
      {
        "id" : "Consent.extension",
        "path" : "Consent.extension",
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
        "id" : "Consent.extension:TDDUI-consentPeriod-r5",
        "path" : "Consent.extension",
        "sliceName" : "TDDUI-consentPeriod-r5",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-Consent.period"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIConsentAccord",
            "map" : "dureeValidite"
          }
        ]
      },
      {
        "id" : "Consent.dateTime",
        "path" : "Consent.dateTime",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIConsentAccord",
            "map" : "dateSignature"
          }
        ]
      },
      {
        "id" : "Consent.performer",
        "path" : "Consent.performer",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIConsentAccord",
            "map" : "auteur"
          }
        ]
      }
    ]
  }
}

```
