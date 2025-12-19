# TDDUI Consent Accord - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Consent Accord**

## Resource Profile: TDDUI Consent Accord 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord | *Version*:2.2.0-ballot |
| Active as of 2025-12-19 | *Computable Name*:TDDUIConsentAccord |

 
Profil de la ressource Consent permettant de représenter l'accord de l'usager, de son entourage ou de la structure. 

**Utilisations:**

* Utiliser ce Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référer à ce Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)
* Exemples pour ce Profil: [Consent/tddui-pp-ime-consent-accord-example](Consent-tddui-pp-ime-consent-accord-example.md) and [Consent/tddui-pp-pa-consent-accord-example](Consent-tddui-pp-pa-consent-accord-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

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
  "version" : "2.2.0-ballot",
  "name" : "TDDUIConsentAccord",
  "title" : "TDDUI Consent Accord",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent|4.0.1",
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
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role|2.2.0-ballot",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner|2.2.0-ballot",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person|2.1.0",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient|2.2.0-ballot",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins|2.2.0-ballot"
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
