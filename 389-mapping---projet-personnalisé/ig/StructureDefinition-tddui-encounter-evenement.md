# TDDUI Encounter Evenement - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Evenement**

## Resource Profile: TDDUI Encounter Evenement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement | *Version*:2.1.0-ballot |
| Active as of 2025-12-12 | *Computable Name*:TDDUIEncounterEvenement |

 
Profil de la ressource Encounter permettant de regrouper les évènements liés à la prise en charge de l’usager dans une structure ESSMS. 

 
>  
**Note**: Le profil TDDUIEncounterEvenement n'hérite pas du profil FRCoreEncounterProfile à cause de l'interdiction de véhiculer plusieurs types d'évènements. Cependant, le profil TDDUIEncounterEvenement suit les contraintes du profil FRCoreEncounterProfile excepté la contrainte sur la cardinalité de l'élément type (0..1). 
 

**Utilisations:**

* Utiliser ce Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référer à ce Profil: [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md) and [TDDUI Task Transport](StructureDefinition-tddui-task-transport.md)
* Exemples pour ce Profil: [Encounter/tddui-encounter-evenement-example](Encounter-tddui-encounter-evenement-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-encounter-evenement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-encounter-evenement.csv), [Excel](StructureDefinition-tddui-encounter-evenement.xlsx), [Schematron](StructureDefinition-tddui-encounter-evenement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-encounter-evenement",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIEncounterEvenement",
  "title" : "TDDUI Encounter Evenement",
  "status" : "active",
  "date" : "2025-12-12T08:56:07+00:00",
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
  "description" : "Profil de la ressource Encounter permettant de regrouper les évènements liés à la prise en charge de l’usager dans une structure ESSMS.",
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
  "purpose" : "> **Note** : Le profil TDDUIEncounterEvenement n'hérite pas du profil FRCoreEncounterProfile à cause de l'interdiction de véhiculer plusieurs types d'évènements. Cependant, le profil TDDUIEncounterEvenement suit les contraintes du profil FRCoreEncounterProfile excepté la contrainte sur la cardinalité de l'élément type (0..1).",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "specmetier-to-TDDUIEncounterEvenement",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter",
        "constraint" : [
          {
            "key" : "MatDetailOnlyIfTypeOrg206",
            "severity" : "error",
            "human" : "Le slice TDDUIMaterialDetail est utilisé uniquement lorsque le slice TDDUIRessourceType prend la valeur ORG-206.",
            "expression" : "(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIMaterialDetail').exists())\n    implies(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIRessourceType').exists()\n    and(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIRessourceType').value.coding.code='ORG-206'))",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement"
          },
          {
            "key" : "FacilityOnlyIfTypeOrg207",
            "severity" : "error",
            "human" : "Le slice TDDUIFacilityResource est utilisé uniquement lorsque le slice TDDUIRessourceType prend la valeur ORG-207.",
            "expression" : "(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIFacilityResource').exists())\n    implies(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIRessourceType').exists()\n    and(Encounter.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used').extension.where(url='TDDUIRessourceType').value.coding.code='ORG-207'))",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement"
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "Événement"
          }
        ]
      },
      {
        "id" : "Encounter.meta.lastUpdated",
        "path" : "Encounter.meta.lastUpdated",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "dateModificationEvenement, Statut.dateStatut"
          }
        ]
      },
      {
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.extension:estimatedDischargeDate",
        "path" : "Encounter.extension",
        "sliceName" : "estimatedDischargeDate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-estimated-discharge-date"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIRessourcesUsed",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIRessourcesUsed",
        "short" : "Ressources utilisées lors de l’évènement.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "RessourceUtilisee"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIRessourcesUsed.extension:TDDUIRessourceType",
        "path" : "Encounter.extension.extension",
        "sliceName" : "TDDUIRessourceType",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "typeRessourceUtilisee"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIRessourcesUsed.extension:TDDUIMaterialDetail",
        "path" : "Encounter.extension.extension",
        "sliceName" : "TDDUIMaterialDetail",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "detailTypeRessourceUtilisee"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIRessourcesUsed.extension:TDDUIFacilityResource",
        "path" : "Encounter.extension.extension",
        "sliceName" : "TDDUIFacilityResource",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "detailTypeRessourceUtilisee"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIEventLabel",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIEventLabel",
        "short" : "Titre donné à l’évènement par la structure.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-label"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "libelleEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIComment",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIComment",
        "short" : "Commentaires sur le déroulé de l'évènement.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "commentaireEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIEventReport",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIEventReport",
        "short" : "Zone de texte liée à l’événement pour compte rendu des actions réalisées.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-report"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "compteRenduEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIAttachment",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIAttachment",
        "short" : "Pièces jointes liées à l’événement.",
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
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "pieceJointeEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIEventOutsideService",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIEventOutsideService",
        "short" : "Evénement hors prestation prévue dans le projet personnalisé de l’usager.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-outside-service"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "evenementHorsPrestation"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIEventReason",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIEventReason",
        "short" : "Contexte justifiant la réalisation de l’évènement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-reason"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "motifEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIPatientPresent",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIPatientPresent",
        "short" : "Evènement nécessitant ou non la présence physique de l’usager.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-present"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "usagerPresent"
          }
        ]
      },
      {
        "id" : "Encounter.extension:TDDUIMeal",
        "path" : "Encounter.extension",
        "sliceName" : "TDDUIMeal",
        "short" : "Repas du professionnel prévu dans le cadre de l'événement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-meal"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "repas"
          }
        ]
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "short" : "Identifiant de l'évènement",
        "definition" : "Identifier(s) by which this encounter is known.Cet élément est multiévalué (pour ne pas bloquer les implémentations, car il arrive sur le terrain qu'il y ait plusieurs id pour une même admission, mais cette situation est considérée comme une anomalie)",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "idEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.identifier.type",
        "path" : "Encounter.identifier.type",
        "definition" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose | Type d'identifiant (admission ou de mouvement lors d'une hospitalisation) (JdV à définir)",
        "min" : 1,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "IdentifierType"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
              "valueBoolean" : true
            }
          ],
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-identifier-type"
        }
      },
      {
        "id" : "Encounter.identifier.system",
        "path" : "Encounter.identifier.system",
        "definition" : "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.\r\nLe namespace est défini à partir de la racine d'identification (gérée par l'ANS) de l'organisation où a lieu la rencontre, concaténée avec par exemple le FINESS de l'établissent (ou FINEJ ou SIRET ou SIREN), cf annexe française des types de données HL7 en France.",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-evenement.esante.gouv.fr",
        "example" : [
          {
            "label" : "OID de l'ANS de gestion des organisations (1.2.250.1.71.4.2.2) suivi du FINESS suivi de la branche z qui gère les id de venue/mouvements si l'établissement n'a pas d'OID (sinon utilisation de l'OID de l'établissement)",
            "valueUri" : "1.2.250.1.71.4.2.2.1330780321"
          },
          {
            "label" : "autre solution, utilisation d'une URL",
            "valueUri" : "http://hopitalTest.fr/fhir/namingsystem/encounters"
          }
        ]
      },
      {
        "id" : "Encounter.identifier.value",
        "path" : "Encounter.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-EVN-numEvenement",
            "valueString" : "3480787529/147720425367411-EVN-12548"
          }
        ]
      },
      {
        "id" : "Encounter.identifier.assigner",
        "path" : "Encounter.identifier.assigner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "short" : "Correspondance des statuts métier avec les codes FHIR : Planifié → planned, Validé → triaged, Réalisé → finished, Annulé → cancelled.",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "Statut.statut"
          }
        ]
      },
      {
        "id" : "Encounter.status.extension",
        "path" : "Encounter.status.extension",
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
        "id" : "Encounter.status.extension:TDDUIEventCancelReason",
        "path" : "Encounter.status.extension",
        "sliceName" : "TDDUIEventCancelReason",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-cancel-reason"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "Statut.motifNonRealisation"
          }
        ]
      },
      {
        "id" : "Encounter.class.system",
        "path" : "Encounter.class.system",
        "min" : 1
      },
      {
        "id" : "Encounter.class.code",
        "path" : "Encounter.class.code",
        "min" : 1
      },
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        },
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "EncounterType"
            }
          ],
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-type"
        },
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "typeEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.type:ssiad",
        "path" : "Encounter.type",
        "sliceName" : "ssiad",
        "short" : "Type d'évènement SSIAD.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Encounter.type:ssiad.coding",
        "path" : "Encounter.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.type:ssiad.coding.system",
        "path" : "Encounter.type.coding.system",
        "min" : 1,
        "patternUri" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"
      },
      {
        "id" : "Encounter.type:ssiad.coding.code",
        "path" : "Encounter.type.coding.code",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-ssiad-cisis"
        }
      },
      {
        "id" : "Encounter.type:serafin",
        "path" : "Encounter.type",
        "sliceName" : "serafin",
        "short" : "Type d'évènement Serafin correspondant aux familles 2-PrestationDirecte et 3-PrestationIndirecte.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Encounter.type:serafin.coding",
        "path" : "Encounter.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.type:serafin.coding.system",
        "path" : "Encounter.type.coding.system",
        "min" : 1,
        "patternUri" : "https://smt.esante.gouv.fr/terminologie-SERAFINPH"
      },
      {
        "id" : "Encounter.type:serafin.coding.code",
        "path" : "Encounter.type.coding.code",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin-valueset"
        }
      },
      {
        "id" : "Encounter.type:text",
        "path" : "Encounter.type",
        "sliceName" : "text",
        "short" : "Texte non structuré véhiculant les autres types d’évènements.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Encounter.type:text.coding.system",
        "path" : "Encounter.type.coding.system",
        "min" : 1,
        "patternUri" : "http://terminology.hl7.org/CodeSystem/data-absent-reason"
      },
      {
        "id" : "Encounter.type:text.coding.code",
        "path" : "Encounter.type.coding.code",
        "patternCode" : "not-permitted"
      },
      {
        "id" : "Encounter.type:text.coding.display",
        "path" : "Encounter.type.coding.display",
        "patternString" : "Not Permitted"
      },
      {
        "id" : "Encounter.type:text.text",
        "path" : "Encounter.type.text",
        "min" : 1
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins",
              "http://hl7.org/fhir/StructureDefinition/Group"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "Usager"
          }
        ]
      },
      {
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        },
        "short" : "List of participants involved in the encounter | Liste des personnes impliquées dans la rencontre"
      },
      {
        "id" : "Encounter.participant.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:auteurStatut",
        "path" : "Encounter.participant",
        "sliceName" : "auteurStatut",
        "short" : "Professionnel ayant effectué la dernière modification du statut associé à la ressource.",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "Statut.auteur"
          }
        ]
      },
      {
        "id" : "Encounter.participant:auteurStatut.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/TDDUIEncounterParticipant",
              "code" : "AUT",
              "display" : "Auteur du statut de la ressource"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:auteurStatut.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant:professionnel",
        "path" : "Encounter.participant",
        "sliceName" : "professionnel",
        "min" : 0,
        "max" : "*",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "Professionnel"
          }
        ]
      },
      {
        "id" : "Encounter.participant:professionnel.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PART"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:professionnel.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.appointment",
        "path" : "Encounter.appointment",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "min" : 1
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "dateDebutEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.period.end",
        "path" : "Encounter.period.end",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "dateFinEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.account",
        "path" : "Encounter.account",
        "max" : "1"
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier",
        "short" : "Pre-admission identifier | Identifiant de pré-admission"
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier.type",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier.type",
        "min" : 1,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "IdentifierType"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
              "valueBoolean" : true
            }
          ],
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-identifier-type"
        }
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier.system",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier.system",
        "definition" : "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.\r\nLe namespace est défini à partir de la racine d'identification (gérée par l'ANS) de l'organisation où a lieu la rencontre , concaténée avec par exemple le FINESS de l'établissent (ou FINEJ ou SIRET ou SIREN), cf annexe française des types de données HL7 en France",
        "min" : 1,
        "fixedUri" : "1.2.250.1.71.4.2.2+.n°FINESS"
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier.value",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier.value",
        "min" : 1
      },
      {
        "id" : "Encounter.hospitalization.preAdmissionIdentifier.assigner",
        "path" : "Encounter.hospitalization.preAdmissionIdentifier.assigner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.origin",
        "path" : "Encounter.hospitalization.origin",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.reAdmission",
        "path" : "Encounter.hospitalization.reAdmission",
        "short" : "the resaon of re-admission of this hospitalization encounter | Raison de la ré-admission du patient."
      },
      {
        "id" : "Encounter.hospitalization.destination",
        "path" : "Encounter.hospitalization.destination",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.dischargeDisposition",
        "path" : "Encounter.hospitalization.dischargeDisposition",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-encounter-discharge-disposition"
        }
      },
      {
        "id" : "Encounter.location",
        "path" : "Encounter.location",
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "lieuEvenement"
          }
        ]
      },
      {
        "id" : "Encounter.location.location",
        "path" : "Encounter.location.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.location.physicalType",
        "path" : "Encounter.location.physicalType",
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-location-physical-type"
        }
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "structureEnCharge"
          }
        ]
      },
      {
        "id" : "Encounter.partOf",
        "path" : "Encounter.partOf",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIEncounterEvenement",
            "map" : "sejour"
          }
        ]
      }
    ]
  }
}

```
