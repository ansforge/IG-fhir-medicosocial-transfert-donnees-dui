# TDDUI CarePlan Projet Personalisé - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI CarePlan Projet Personalisé**

## Resource Profile: TDDUI CarePlan Projet Personalisé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personalise | *Version*:2.1.0-ballot |
| Active as of 2025-11-20 | *Computable Name*:TDDUICarePlanProjetPersonalise |

 
Profil de la ressource TDDUICarePlan permettant de représenter le projet personalisé de l'usager. 

**Usages:**

* Refer to this Profile: [Lien vers le projet personnalisé](StructureDefinition-tddui-careplan-reference.md), [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md), [TDDUI Task Action](StructureDefinition-tddui-task-action.md), [TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md)...Show 2 more,[TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)and[TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)
* Examples for this Profile: [CarePlan/tddui-careplan-projet-perso-pa-example](CarePlan-tddui-careplan-projet-perso-pa-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-careplan-projet-personalise)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-careplan-projet-personalise.csv), [Excel](StructureDefinition-tddui-careplan-projet-personalise.xlsx), [Schematron](StructureDefinition-tddui-careplan-projet-personalise.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-careplan-projet-personalise",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personalise",
  "version" : "2.1.0-ballot",
  "name" : "TDDUICarePlanProjetPersonalise",
  "title" : "TDDUI CarePlan Projet Personalisé",
  "status" : "active",
  "date" : "2025-11-20T16:06:37+00:00",
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
  "description" : "Profil de la ressource TDDUICarePlan permettant de représenter le projet personalisé de l'usager.",
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
      "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
      "name" : "Modèle de contenu DUI"
    },
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
        "path" : "CarePlan",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "ProjetPersonnalise"
          }
        ]
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
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "entrantProjetPersonnalisee"
          }
        ]
      },
      {
        "id" : "CarePlan.identifier",
        "path" : "CarePlan.identifier",
        "short" : "Identifiant du projet personnel",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "identifiantProjetPersonnalise"
          }
        ]
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
        "id" : "CarePlan.status",
        "path" : "CarePlan.status",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "statutProjetPersonnalise"
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
        },
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "typeProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.title",
        "path" : "CarePlan.title",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "titreProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.description",
        "path" : "CarePlan.description",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "descriptionProjetPersonnalise"
          }
        ]
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
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "Usager"
          }
        ]
      },
      {
        "id" : "CarePlan.period.start",
        "path" : "CarePlan.period.start",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "dateDebutMiseEnOeuvreProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.period.end",
        "path" : "CarePlan.period.end",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "dateFinMiseEnOeuvreProjetPersonnalise"
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
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "accordUsagerProjetPersonnalise"
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
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "accordStructureProjetPersonnalise"
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
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonalise",
            "map" : "modaliteCommunicationProjetPersonnalise"
          }
        ]
      }
    ]
  }
}

```
