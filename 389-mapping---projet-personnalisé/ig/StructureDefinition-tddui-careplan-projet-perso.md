# TDDUI CarePlan Projet Perso - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI CarePlan Projet Perso**

## Resource Profile: TDDUI CarePlan Projet Perso 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-perso | *Version*:2.1.0-ballot |
| Active as of 2025-11-18 | *Computable Name*:TDDUICarePlanProjetPerso |

 
Profil de la ressource TDDUICarePlan permettant de représenter le projet personnel de l'usager. 

**Usages:**

* Refer to this Profile: [Lien vers le projet personnel](StructureDefinition-tddui-careplan-reference.md), [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md), [TDDUI Task Action](StructureDefinition-tddui-task-action.md), [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md) and [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)
* Examples for this Profile: [CarePlan/tddui-careplan-projet-perso-example](CarePlan-tddui-careplan-projet-perso-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-careplan-projet-perso)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-careplan-projet-perso.csv), [Excel](StructureDefinition-tddui-careplan-projet-perso.xlsx), [Schematron](StructureDefinition-tddui-careplan-projet-perso.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-careplan-projet-perso",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-perso",
  "version" : "2.1.0-ballot",
  "name" : "TDDUICarePlanProjetPerso",
  "title" : "TDDUI CarePlan Projet Perso",
  "status" : "active",
  "date" : "2025-11-18T14:30:08+00:00",
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
  "description" : "Profil de la ressource TDDUICarePlan permettant de représenter le projet personnel de l'usager.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlan",
        "path" : "CarePlan"
      },
      {
        "id" : "CarePlan.extension",
        "path" : "CarePlan.extension",
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
        "id" : "CarePlan.extension:entrantProjetPerso",
        "path" : "CarePlan.extension",
        "sliceName" : "entrantProjetPerso",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.identifier",
        "path" : "CarePlan.identifier",
        "short" : "Identifiant du projet personnel",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "CarePlan.identifier.value",
        "path" : "CarePlan.identifier.value",
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPER-numProjetPersonnalise",
            "valueString" : "123456"
          }
        ]
      },
      {
        "id" : "CarePlan.category",
        "path" : "CarePlan.category",
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j367-type-projet-personnalise-ms"
        }
      },
      {
        "id" : "CarePlan.title",
        "path" : "CarePlan.title",
        "min" : 1
      },
      {
        "id" : "CarePlan.subject",
        "path" : "CarePlan.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.supportingInfo",
        "path" : "CarePlan.supportingInfo",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "display"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "CarePlan.supportingInfo:usager",
        "path" : "CarePlan.supportingInfo",
        "sliceName" : "usager",
        "short" : "Référence à l'accord de l'usager.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.supportingInfo:usager.display",
        "path" : "CarePlan.supportingInfo.display",
        "min" : 1,
        "patternString" : "Consentement usager"
      },
      {
        "id" : "CarePlan.supportingInfo:structure",
        "path" : "CarePlan.supportingInfo",
        "sliceName" : "structure",
        "short" : "Référence à l'accord de la structure.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.supportingInfo:structure.display",
        "path" : "CarePlan.supportingInfo.display",
        "min" : 1,
        "patternString" : "Consentement structure"
      },
      {
        "id" : "CarePlan.note",
        "path" : "CarePlan.note",
        "max" : "1"
      }
    ]
  }
}

```
