# TDDUI CarePlan Projet Personalise - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI CarePlan Projet Personalise**

## Resource Profile: TDDUI CarePlan Projet Personalise 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise | *Version*:2.1.0 |
| Active as of 2025-12-17 | *Computable Name*:TDDUICarePlanProjetPersonnalise |

 
Profil de la ressource CarePlan représentant le projet personnalisé d'un usager. 

**Utilisations:**

* Référer à ce Profil: [Lien vers le projet personnalisé](StructureDefinition-tddui-careplan-reference.md), [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md), [TDDUI Task Action](StructureDefinition-tddui-task-action.md), [TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md)...Show 2 more,[TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md)and[TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)
* Exemples pour ce Profil: [CarePlan/tddui-pp-ime-careplan-example](CarePlan-tddui-pp-ime-careplan-example.md) and [CarePlan/tddui-pp-pa-careplan-example](CarePlan-tddui-pp-pa-careplan-example.md)

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
  "version" : "2.1.0",
  "name" : "TDDUICarePlanProjetPersonnalise",
  "title" : "TDDUI CarePlan Projet Personalise",
  "status" : "active",
  "date" : "2025-12-17T09:55:45+00:00",
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
        "short" : "Correspondance des statuts métier avec les codes FHIR : ENPREPARATION → draft, ENCOURS → active, ENPAUSE → on-hold, TERMINE → completed.",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "statutProjetPersonnalise.statut"
          }
        ]
      },
      {
        "id" : "CarePlan.status.extension",
        "path" : "CarePlan.status.extension",
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
        "id" : "CarePlan.status.extension:auteurStatut",
        "path" : "CarePlan.status.extension",
        "sliceName" : "auteurStatut",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUICarePlanProjetPersonnalise",
            "map" : "statutProjetPersonnalise.auteur"
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
              "path" : "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator').value"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "CarePlan.supportingInfo.extension",
        "path" : "CarePlan.supportingInfo.extension",
        "min" : 1
      },
      {
        "id" : "CarePlan.supportingInfo.extension:TDDUIDiscriminator",
        "path" : "CarePlan.supportingInfo.extension",
        "sliceName" : "TDDUIDiscriminator",
        "min" : 1,
        "max" : "2",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"
            ]
          }
        ]
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
        "id" : "CarePlan.supportingInfo:accordUsager.extension:TDDUIDiscriminator",
        "path" : "CarePlan.supportingInfo.extension",
        "sliceName" : "TDDUIDiscriminator",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.supportingInfo:accordUsager.extension:TDDUIDiscriminator.value[x]",
        "path" : "CarePlan.supportingInfo.extension.value[x]",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
              "code" : "accordUsager"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-care-plan-supportingInfo-vs"
        }
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
        "id" : "CarePlan.supportingInfo:accordStructure.extension:TDDUIDiscriminator",
        "path" : "CarePlan.supportingInfo.extension",
        "sliceName" : "TDDUIDiscriminator",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.supportingInfo:accordStructure.extension:TDDUIDiscriminator.value[x]",
        "path" : "CarePlan.supportingInfo.extension.value[x]",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator-cs",
              "code" : "accordStructure"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-care-plan-supportingInfo-vs"
        }
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
