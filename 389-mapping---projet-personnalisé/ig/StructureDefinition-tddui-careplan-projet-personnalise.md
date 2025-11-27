# TDDUI CarePlan Projet Personalise - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI CarePlan Projet Personalise**

## Resource Profile: TDDUI CarePlan Projet Personalise 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise | *Version*:2.1.0-ballot |
| Active as of 2025-11-27 | *Computable Name*:TDDUICarePlanProjetPersonnalise |

 
Profil de la ressource CarePlan représentant le projet personnalisé d'un usager. 

**Usages:**

* Refer to this Profile: [Lien vers le projet personnalisé](StructureDefinition-tddui-careplan-reference.md), [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md), [TDDUI Task Action](StructureDefinition-tddui-task-action.md), [TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md)...Show 2 more,[TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)and[TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)
* Examples for this Profile: [CarePlan/tddui-careplan-projet-personnalise-pa-example](CarePlan-tddui-careplan-projet-personnalise-pa-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-careplan-projet-personnalise)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-careplan-projet-personnalise.csv), [Excel](StructureDefinition-tddui-careplan-projet-personnalise.xlsx), [Schematron](StructureDefinition-tddui-careplan-projet-personnalise.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-careplan-projet-personnalise",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise",
  "version" : "2.1.0-ballot",
  "name" : "TDDUICarePlanProjetPersonnalise",
  "title" : "TDDUI CarePlan Projet Personalise",
  "status" : "active",
  "date" : "2025-11-27T16:23:25+00:00",
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
  "description" : "Profil de la ressource CarePlan représentant le projet personnalisé d'un usager.",
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
      "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
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
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "ProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.meta.lastUpdated",
        "path" : "CarePlan.meta.lastUpdated",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "statutProjetPersonnalise.dateStatut"
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
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "entrantProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.identifier",
        "path" : "CarePlan.identifier",
        "short" : "Identifiant du projet personnalisé",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "idProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.identifier.system",
        "path" : "CarePlan.identifier.system",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-projetpersonnalise.esante.gouv.fr"
      },
      {
        "id" : "CarePlan.identifier.value",
        "path" : "CarePlan.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PPER-numProjetPersonnalise",
            "valueString" : "3480787529/123456789-PPER-1234"
          }
        ]
      },
      {
        "id" : "CarePlan.status",
        "path" : "CarePlan.status",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "statutProjetPersonnalise.statut"
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
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
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
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "titreProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.description",
        "path" : "CarePlan.description",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
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
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "Usager"
          }
        ]
      },
      {
        "id" : "CarePlan.period.start",
        "path" : "CarePlan.period.start",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "dateDebutMiseEnOeuvreProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.period.end",
        "path" : "CarePlan.period.end",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
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
        "id" : "CarePlan.supportingInfo:accordUsager",
        "path" : "CarePlan.supportingInfo",
        "sliceName" : "accordUsager",
        "short" : "Référence à l'accord de l'usager et/ou de son entourage.",
        "min" : 0,
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
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "accordUsagerProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.supportingInfo:accordUsager.display",
        "path" : "CarePlan.supportingInfo.display",
        "min" : 1,
        "patternString" : "Consentement usager"
      },
      {
        "id" : "CarePlan.supportingInfo:accordStructure",
        "path" : "CarePlan.supportingInfo",
        "sliceName" : "accordStructure",
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
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "accordStructureProjetPersonnalise"
          }
        ]
      },
      {
        "id" : "CarePlan.supportingInfo:accordStructure.display",
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
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "modaliteCommunicationProjetPersonnalise"
          }
        ]
      }
    ]
  }
}

```
