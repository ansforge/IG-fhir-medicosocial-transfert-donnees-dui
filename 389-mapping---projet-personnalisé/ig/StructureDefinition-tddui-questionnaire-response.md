# TDDUI QuestionnaireResponse - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI QuestionnaireResponse**

## Resource Profile: TDDUI QuestionnaireResponse 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response | *Version*:2.1.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:TDDUIQuestionnaireResponse |

 
Profil de la ressource QuestionnaireResponse utilisé pour transmettre les réponses aux questionnaires dans le cadre des évaluations. 

**Utilisations:**

* Utiliser ce Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référer à ce Profil: [Lien vers l'évaluation](StructureDefinition-tddui-evaluation-reference.md), [TDDUI Task Action](StructureDefinition-tddui-task-action.md), [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md) and [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)
* Exemples pour ce Profil: [QuestionnaireResponse/tddui-pp-pa-questionnaire-response-aggir-pa-example](QuestionnaireResponse-tddui-pp-pa-questionnaire-response-aggir-pa-example.md), [QuestionnaireResponse/tddui-questionnaire-response-aggir-pa-example](QuestionnaireResponse-tddui-questionnaire-response-aggir-pa-example.md), [QuestionnaireResponse/tddui-questionnaire-response-aggir-ph-example](QuestionnaireResponse-tddui-questionnaire-response-aggir-ph-example.md), [QuestionnaireResponse/tddui-questionnaire-response-serafin-precision-example](QuestionnaireResponse-tddui-questionnaire-response-serafin-precision-example.md)...Show 2 more,[QuestionnaireResponse/tddui-questionnaire-response-serafin-sans-precision-example](QuestionnaireResponse-tddui-questionnaire-response-serafin-sans-precision-example.md)and[QuestionnaireResponse/tddui-questionnaire-response-situation-ssiad-example](QuestionnaireResponse-tddui-questionnaire-response-situation-ssiad-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-questionnaire-response)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-questionnaire-response.csv), [Excel](StructureDefinition-tddui-questionnaire-response.xlsx), [Schematron](StructureDefinition-tddui-questionnaire-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-questionnaire-response",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIQuestionnaireResponse",
  "title" : "TDDUI QuestionnaireResponse",
  "status" : "active",
  "date" : "2025-12-05T09:54:12+00:00",
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
  "description" : "Profil de la ressource QuestionnaireResponse utilisé pour transmettre les réponses aux questionnaires dans le cadre des évaluations.",
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
      "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
      "name" : "Modèle de contenu DUI"
    },
    {
      "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "QuestionnaireResponse",
        "path" : "QuestionnaireResponse",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "Evaluation AGGIR PA SSIAD, Evaluation AGGIR PH SSIAD"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "Evaluation SERAFIN, Evaluation de la situation SSIAD"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.meta.lastUpdated",
        "path" : "QuestionnaireResponse.meta.lastUpdated",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "Statut.dateStatut"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "Statut.dateStatut"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.extension",
        "path" : "QuestionnaireResponse.extension",
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
        "id" : "QuestionnaireResponse.extension:TDDUIQRParticipant",
        "path" : "QuestionnaireResponse.extension",
        "sliceName" : "TDDUIQRParticipant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-qr-participant"
            ]
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.extension:TDDUIQRParticipant.extension:TDDUIResponsible",
        "path" : "QuestionnaireResponse.extension.extension",
        "sliceName" : "TDDUIResponsible",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "Responsable"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "Responsable"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.extension:TDDUIQRParticipant.extension:TDDUIStatusAuthor",
        "path" : "QuestionnaireResponse.extension.extension",
        "sliceName" : "TDDUIStatusAuthor",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "Statut.auteur"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "Statut.auteur"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.extension:TDDUIAttachment",
        "path" : "QuestionnaireResponse.extension",
        "sliceName" : "TDDUIAttachment",
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
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "pieceJointeEvaluation"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "pieceJointeEvaluation"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.extension:TDDUIComment",
        "path" : "QuestionnaireResponse.extension",
        "sliceName" : "TDDUIComment",
        "min" : 0,
        "max" : "1",
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
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "commentaireEvaluation"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "commentaireEvaluation"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.identifier",
        "path" : "QuestionnaireResponse.identifier",
        "short" : "Identifiant de l'évaluation",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "idEvaluation"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "idEvaluation"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.identifier.system",
        "path" : "QuestionnaireResponse.identifier.system",
        "min" : 1,
        "patternUri" : "https://identifiant-medicosocial-evaluation.esante.gouv.fr"
      },
      {
        "id" : "QuestionnaireResponse.identifier.value",
        "path" : "QuestionnaireResponse.identifier.value",
        "min" : 1,
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-EVAL-numEvaluation",
            "valueString" : "3480787529/147720425367411-EVAL-21564655"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.questionnaire",
        "path" : "QuestionnaireResponse.questionnaire",
        "short" : "Le profil permet de communiquer les grilles définies suivantes :\n- Evaluation AGGIR PA SSIAD\n- Evaluation AGGIR PH SSIAD\n- Evaluation SERAFIN\n- Evaluation situation SSIAD",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "typeEvaluation"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "typeEvaluation"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.status",
        "path" : "QuestionnaireResponse.status",
        "short" : "Correspondance des statuts métier avec les codes FHIR : TERMINE -> in-progress, APPROUVE -> completed, VALIDE -> amended.",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "Statut.statut"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "Statut.statut"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.subject",
        "path" : "QuestionnaireResponse.subject",
        "min" : 1,
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
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "Usager"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "Usager"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.encounter",
        "path" : "QuestionnaireResponse.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "Evenement"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "Evenement"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.authored",
        "path" : "QuestionnaireResponse.authored",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "dateEvaluation"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "dateEvaluation"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.author",
        "path" : "QuestionnaireResponse.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "Auteur"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "Auteur"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.source",
        "path" : "QuestionnaireResponse.source",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "Evaluateur"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "Evaluateur"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item",
        "path" : "QuestionnaireResponse.item",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "«premier niveau»DetailEvaluation"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.extension",
        "path" : "QuestionnaireResponse.item.extension",
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
        "id" : "QuestionnaireResponse.item.extension:TDDUIComment",
        "path" : "QuestionnaireResponse.item.extension",
        "sliceName" : "TDDUIComment",
        "min" : 0,
        "max" : "1",
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
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "commentaire"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.linkId",
        "path" : "QuestionnaireResponse.item.linkId",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "champsEvalue"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.answer",
        "path" : "QuestionnaireResponse.item.answer",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "resultatEvaluation"
          },
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseSerafinSSIAD",
            "map" : "resultatChampsEvalue"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.item",
        "path" : "QuestionnaireResponse.item.item",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "«premier niveau»DetailEvaluation"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.item.extension",
        "path" : "QuestionnaireResponse.item.item.extension",
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
        "id" : "QuestionnaireResponse.item.item.extension:TDDUIComment",
        "path" : "QuestionnaireResponse.item.item.extension",
        "sliceName" : "TDDUIComment",
        "min" : 0,
        "max" : "1",
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
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "commentaire"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.item.linkId",
        "path" : "QuestionnaireResponse.item.item.linkId",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "champsEvalue"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.item.answer",
        "path" : "QuestionnaireResponse.item.item.answer",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "resultatChampsEvalue"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.item.item",
        "path" : "QuestionnaireResponse.item.item.item",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "«deuxième niveau»DetailEvaluation"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.item.item.extension",
        "path" : "QuestionnaireResponse.item.item.item.extension",
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
        "id" : "QuestionnaireResponse.item.item.item.extension:TDDUIComment",
        "path" : "QuestionnaireResponse.item.item.item.extension",
        "sliceName" : "TDDUIComment",
        "min" : 0,
        "max" : "1",
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
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "commentaire"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.item.item.linkId",
        "path" : "QuestionnaireResponse.item.item.item.linkId",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "champsEvalue"
          }
        ]
      },
      {
        "id" : "QuestionnaireResponse.item.item.item.answer",
        "path" : "QuestionnaireResponse.item.item.item.answer",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIQuestionnaireResponseAGGIR",
            "map" : "resultatChampsEvalue"
          }
        ]
      }
    ]
  }
}

```
