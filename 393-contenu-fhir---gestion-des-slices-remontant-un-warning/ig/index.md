# Accueil - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ImplementationGuide/ans.fhir.fr.tddui | *Version*:2.1.0-ballot |
| Active as of 2025-12-16 | *Computable Name*:TDDUI |

 **Brief description of this Implementation Guide**
 The Digital User File (DUI) centralizes all information concerning the person being cared for in social and medico-social facilities and services. The aim of this implementation guide is to define the specifications for DUI data transfer. 

> **Attention !**
Cet Implementation Guide est actuellement en concertation. La version courante est accessible à l'adresse : http://interop.esante.gouv.fr/ig/fhir/tddui

### Introduction

Le Programme ESMS numérique, porté par la Caisse Nationale de Solidarité pour l'Autonomie (CNSA), vise à généraliser l’utilisation du numérique dans les établissements et services sociaux et médico-sociaux (ESSMS). Il repose principalement sur le déploiement d’un Dossier Usager Informatisé (DUI) pour chaque personne accompagnée. Ce DUI centralise l’ensemble des informations qui concerne la personne accompagnée en structure et service sociale et médico-sociale, et son parcours de santé et de vie. Ce dossier unique comprend :

* Des données administratives ;
* Des données liées à l’accompagnement de l’usager ;
* Des données liées à la coordination des différents acteurs ;
* Des données médicales.

Les logiciels DUI doivent permettre, entre autres, de mieux construire et de suivre le projet personnalisé de la personne accompagnée, d’éviter les ruptures de parcours en cas d’évolution des besoins, de changement d’établissement médico-social, de retour à domicile ou d’hospitalisation.

Dans la continuité des travaux menés dans le cadre du programme ESMS numérique, la CNSA et l’ANS créent un nouveau volet « Transfert de données DUI ». L’objectif de ce volet est de définir la nature et le format des données à transmettre lors d’un export depuis un logiciel DUI afin d’assurer le transfert de données des usagers.

Ce guide d'implémentation contient :

* L'étude des normes et standards au format pdf : [Etude des normes et standards](NormesStandards_TransfertDonneesDUI_V1.0.pdf)
* Les spécifications fonctionnelles : section [Spécifications fonctionnelles](sfe.md)
* La spécification technique de contenu : 
 Il existe deux représentations techniques pour le contenu de l'export des données d'un logiciel DUI : 
* une représentation basée sur le standard FHIR afin de s’aligner sur les recommandations européennes et pour s’adapter aux évolutions des [cas d'usage](sfe_cas_usage.md) de ce volet.
 La représentation FHIR décrite dans ce guide est à privilégier pour toute nouvelle implémentation : section [Ressources de conformité](artifacts.md)
* une représentation basée sur le standard CDA qui est spécifiée dans le guide d'implémentation [Médicosocial - Transfert de données DUI CDA](https://interop.esante.gouv.fr/ig/cda/tddui/). Ce guide est restreint au cas d'usage SSIAD. Les évolutions de ce guide d’implémentation sont limitées à des corrections techniques. Ce guide d'implementation sera déprécié lorsque la transition des éditeurs de CDA vers FHIR sera achevée.
 
* La spécification technique de transport : sections [Volume 2 - Détail des transactions](description_flux.md) et [Ressources de conformité](artifacts.md)
* Les annexes : 
* [Mapping FHIR du modèle de contenu DUI](mapping_fonctionnel_FHIR.md)
* [Documents de référence](annexes_documents_reference.md)
* [Acronymes](annexes_acronymes.md)
* [Professions du médico-social](annexes_codes_professions_roles_modes_exercices.md)
* [Sécurité](securite.md)
* [Télerchargement et usages](downloads.md)
 

### Lectorat cible

Ce document s'adresse aux chefs de projets qui spécifient des projets avec des interfaces interopérables et aux développeurs des interfaces interopérables des systèmes implémentant le volet « Transfert de données DUI ». Il s'adresse également à toute autre personne intervenant dans le processus de mise en place de ces interfaces et à tout porteur de SI cherchant à transporter de manière interopérable des données usagers vers un autre SI ainsi que les éditeurs de logiciels DUI.

L’hypothèse est faite que le lecteur est familier du standard FHIR R4.

### Utilisation

Les spécifications d'interopérabilité présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d'un système d'information partagé. Il appartient à tout responsable de traitement de s'assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex.: cadre juridique, bonnes pratiques de sécurité, ergonomie, accessibilité …).

### Standards utilisés

Les données véhiculées dans ce volet ainsi que les interactions entre les systèmes reposent sur le standard HL7 FHIR Release 4.

Les interactions font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP dans sa version sécurisée HTTPS. Les syntaxes retenues sont la syntaxe XML et JSON.

#### Ressources FHIR profilées

Les ressources profilées dans le cadre de ce guide d'implémentation sont les suivantes :

| | | |
| :--- | :--- | :--- |
| Profil parent | Profil | Description |
| [Bundle](http://hl7.org/fhir/StructureDefinition/Bundle) | [TDDUIBundle](StructureDefinition-tddui-bundle.md) | Profil générique créé pour transmettre des données d'un logiciel DUI. |
| [MHD DocumentReference for Simplified Publish](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference) | [TDDUIDocumentReference](StructureDefinition-tddui-document-reference.md) | Profil de la ressource SimplifiedPublishDocumentReference pour les pièces jointes liées à l’événement et à l'évaluation. |
| [Encounter](http://hl7.org/fhir/StructureDefinition/Encounter) | [TDDUIEncounterEvenement](StructureDefinition-tddui-encounter-evenement.md) | Profil de la ressource Encounter permettant de regrouper les évènements liés à la prise en charge de l’usager dans une structure ESSMS. |
| [Encounter](http://hl7.org/fhir/StructureDefinition/Encounter) | [TDDUIEncounterSejour](StructureDefinition-tddui-encounter-sejour.md) | Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS |
| [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization) | [TDDUIOrganization](StructureDefinition-tddui-organization.md) | Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques. |
| [FR Core Patient Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient) | [TDDUIPatient](StructureDefinition-tddui-patient.md) | Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis. |
| [FR Core Patient INS Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins) | [TDDUIPatientINS](StructureDefinition-tddui-patient-ins.md) | Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis. |
| [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner) | [TDDUIPractitioner](StructureDefinition-tddui-practitioner.md) | Profil de la ressource FRCorePractitionerProfile permettant de représenter un professionnel du médicosocial dans le cadre de TDDUI. Le profil AsPractitionerRoleProfile n'a pas été utilisé car il comportait trop de contraintes non présentes dans les DUI. |
| [FR Core Practitioner Role](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role) | [TDDUIPractitionerRole](StructureDefinition-tddui-practitioner-role.md) | Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel. |
| [QuestionnaireResponse](http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse) | [TDDUIQuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md) | Profil de la ressource QuestionnaireResponse utilisé pour transmettre les réponses aux questionnaires dans le cadre des évaluations. |
| [Task](http://hl7.org/fhir/StructureDefinition/Task) | [TDDUITaskTransport](StructureDefinition-tddui-task-transport.md) | Profil de la ressource Task permettant de représenter le transport. |
| [TDDUI Task Transport](https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport) | [TDDUITaskTransportProfessionnel](StructureDefinition-tddui-task-transport-professionnel.md) | Profil de la ressource TDDUITaskTransport permettant de représenter le transport du professionnel. |
| [TDDUI Task Transport](https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport) | [TDDUITaskTransportUsager](StructureDefinition-tddui-task-transport-usager.md) | Profil de la ressource TDDUITaskTransport permettant de représenter le transport de l'usager. |

#### Instances de Questionnaire

| | |
| :--- | :--- |
| Questionnaire | Description |
| [tddui-questionnaire-aggir-pa-ssiad](Questionnaire-tddui-questionnaire-aggir-pa-ssiad.md) | Grille d'évaluation AGGIR PA SSIAD |
| [tddui-questionnaire-aggir-ph-ssiad](Questionnaire-tddui-questionnaire-aggir-ph-ssiad.md) | Grille d'évaluation AGGIR PH SSIAD |
| [tddui-questionnaire-serafin](Questionnaire-tddui-questionnaire-serafin.md) | Grille d'évaluation SERAFIN |
| [tddui-questionnaire-situation-ssiad](Questionnaire-tddui-questionnaire-situation-ssiad.md) | Grille d'évaluation de la situation SSIAD |

### Flux

Les flux décrits dans ce guide d'implémentation sont les suivants.

| | | |
| :--- | :--- | :--- |
| [Flux 1 : Transmission de données DUI](description_flux_1_transmission_donnees_dui.md) | Logiciel DUI | SI tiers |

Les flux présentés dans cette spécification doivent utiliser HTTPS. Pour en savoir davantage, rendez-vous sur la page [Synthèse des flux](description_flux_synthese.md).

### Dépendances













## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ans.fhir.fr.tddui",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ImplementationGuide/ans.fhir.fr.tddui",
  "version" : "2.1.0-ballot",
  "name" : "TDDUI",
  "title" : "Médicosocial - Transfert de données DUI",
  "status" : "active",
  "date" : "2025-12-16T16:02:43+00:00",
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
  "packageId" : "ans.fhir.fr.tddui",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.1"
    },
    {
      "id" : "hl7_fhir_fr_core",
      "uri" : "https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core",
      "packageId" : "hl7.fhir.fr.core",
      "version" : "2.1.0"
    },
    {
      "id" : "ans_fr_terminologies",
      "uri" : "https://interop.esante.gouv.fr/terminologies/ImplementationGuide/ans.fr.terminologies",
      "packageId" : "ans.fr.terminologies",
      "version" : "1.4.0"
    },
    {
      "id" : "hl7_fhir_uv_extensions",
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions",
      "version" : "5.2.0"
    },
    {
      "id" : "ihe_iti_mhd",
      "uri" : "https://profiles.ihe.net/ITI/MHD/ImplementationGuide/ihe.iti.mhd",
      "packageId" : "ihe.iti.mhd",
      "version" : "4.2.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "public-comment"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-expansion-params"
          },
          {
            "url" : "value",
            "valueString" : "../../expansion-params.json"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interop.esante.gouv.fr/ig/fhir/tddui/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
        "valueReference" : {
          "reference" : "Parameters/expansion-parameters"
        }
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "public-comment"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-expansion-params"
          },
          {
            "url" : "value",
            "valueString" : "../../expansion-params.json"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interop.esante.gouv.fr/ig/fhir/tddui/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-comment"
        },
        "name" : "Commentaire",
        "description" : "\n- **Séjour** : commentaire relatif au séjour.\n- **Événement** : commentaires sur le déroulé de l’évènement.\n- **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.\n- **Champ évalué** : commentaire spécifique à un item ou sous-item évalué.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-admission-date"
        },
        "name" : "Date d’admission",
        "description" : "Date d’admission dans la structure ESSMS.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-outside-service"
        },
        "name" : "Evénement hors prestation",
        "description" : "Evénement hors prestation prévue dans le projet personnalisé de l’usager.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/input-tddui-task-transport-codesystem"
        },
        "name" : "InputTaskTransportCodeSystem",
        "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-event-label"
        },
        "name" : "Libellé de l'évènement",
        "description" : "Titre donné à l’évènement par la structure.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-entry-mode-label"
        },
        "name" : "Libellé mode d'entrée",
        "description" : "Libellé du mode d’entée du séjour.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-exit-mode-label"
        },
        "name" : "Libellé mode de sortie",
        "description" : "Libellé du mode de sortie du séjour.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-exercise-mode"
        },
        "name" : "Mode d'exercice",
        "description" : "Extension permettant de représenter le mode d'exercice du professionnel.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-event-reason"
        },
        "name" : "Motif de l’évènement",
        "description" : "Contexte justifiant la réalisation de l’évènement.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-birth-order"
        },
        "name" : "Ordre de naissance dans le registre d'état civil",
        "description" : "Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période. Il est obligatoire si le NIR n'est pas transmis.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-attachment"
        },
        "name" : "Pièce jointe",
        "description" : "Pièces jointes liées à l’événement et à l'évaluation. L'extension référence le profil PDSm_SimplifiedPublish.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-event-report"
        },
        "name" : "Rapport de l’évènement",
        "description" : "Zone de texte liée à l’événement pour compte rendu des actions réalisées.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-meal"
        },
        "name" : "Repas",
        "description" : "Repas du professionnel prévu dans le cadre de l'événement.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-qr-participant"
        },
        "name" : "Responsable et auteur du statut de l'évaluation",
        "description" : "Extension permettant d'ajouter le responsable de l'évaluation et l'auteur du statut de l'évaluation dans un QuestionnaireResponse.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-ressources-used"
        },
        "name" : "Ressources utilisées",
        "description" : "Ressources utilisées lors de l’évènement (ex : chambre, matériel médical, véhicule).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-bundle"
        },
        "name" : "TDDUI Bundle",
        "description" : "Profil générique créé pour transmettre des données d'un logiciel DUI.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-document-reference"
        },
        "name" : "TDDUI DocumentReference",
        "description" : "Profil de la ressource SimplifiedPublishDocumentReference pour les pièces jointes liées à l’événement et à l'évaluation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-encounter-evenement"
        },
        "name" : "TDDUI Encounter Evenement",
        "description" : "Profil de la ressource Encounter permettant de regrouper les évènements liés à la prise en charge de l’usager dans une structure ESSMS.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/tddui-encounter-identifier-cs"
        },
        "name" : "TDDUI Encounter FR Core CodeSystem v2-0203",
        "description" : "TDDUI Encounter's identifier",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/tddui-encounter-identifier-vs"
        },
        "name" : "TDDUI Encounter Identifier Type ValueSet",
        "description" : "ValueSet for TDDUI Encounter's identifier types",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/TDDUIEncounterParticipant"
        },
        "name" : "TDDUI Encounter Participant Type",
        "description" : "CodeSystem for the participant types in TDDUI Encounter",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/tddui-encounter-participant-vs"
        },
        "name" : "TDDUI Encounter Participant ValueSet",
        "description" : "ValueSet for TDDUI Encounter's participants",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-encounter-sejour"
        },
        "name" : "TDDUI Encounter Sejour",
        "description" : "Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/tddui-encounter-type-vs"
        },
        "name" : "TDDUI Encounter Type ValueSet",
        "description" : "ValueSet for TDDUI Encounter's types",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/tddui-identifier"
        },
        "name" : "TDDUI FR Core CodeSystem v2-0203",
        "description" : "TDDUI Patient's identifier",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-human-name"
        },
        "name" : "TDDUI Human Name DataType",
        "description" : "French profile of datatype HumanName with constraints on prefix and suffix | Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-organization"
        },
        "name" : "TDDUI Organization",
        "description" : "Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-patient"
        },
        "name" : "TDDUI Patient",
        "description" : "Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/tddui-patient-identifier-vs"
        },
        "name" : "TDDUI Patient Identifier ValueSet",
        "description" : "ValueSet for TDDUI Patient's identifier types",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-patient-ins"
        },
        "name" : "TDDUI Patient INS",
        "description" : "Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-practitioner"
        },
        "name" : "TDDUI Practitioner",
        "description" : "Profil de la ressource FRCorePractitionerProfile permettant de représenter un professionnel du médicosocial dans le cadre de TDDUI. Le profil AsPractitionerRoleProfile n'a pas été utilisé car il comportait trop de contraintes non présentes dans les DUI.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-practitioner-role"
        },
        "name" : "TDDUI Practitioner Role",
        "description" : "Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-profession"
        },
        "name" : "TDDUI Profession",
        "description" : "Extension permettant de représenter la profession du professionnel.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-questionnaire-response"
        },
        "name" : "TDDUI QuestionnaireResponse",
        "description" : "Profil de la ressource QuestionnaireResponse utilisé pour transmettre les réponses aux questionnaires dans le cadre des évaluations.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/tddui-serafin-valueset"
        },
        "name" : "TDDUI SERAFIN ValueSet",
        "description" : "ValueSet contenant les codes SERAFIN (prestations directes et indirectes) pour le profil TDDUI Encounter Evenement.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-task-transport"
        },
        "name" : "TDDUI Task Transport",
        "description" : "Profil de la ressource Task permettant de représenter le transport.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-task-transport-professionnel"
        },
        "name" : "TDDUI Task Transport Professionnel",
        "description" : "Profil de la ressource TDDUITaskTransport permettant de représenter le transport du professionnel.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-task-transport-usager"
        },
        "name" : "TDDUI Task Transport Usager",
        "description" : "Profil de la ressource TDDUITaskTransport permettant de représenter le transport de l'usager.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/TDDUIConsommateur"
        },
        "name" : "TDDUI-Consommateur",
        "description" : "Le rôle du Consommateur est de recueillir les données d'un logiciel DUI. Il correspond à un SI tiers.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Encounter"
          }
        ],
        "reference" : {
          "reference" : "Encounter/tddui-encounter-evenement-example"
        },
        "name" : "tddui-encounter-evenement-example",
        "description" : "Exemple d'un évènement",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Encounter"
          }
        ],
        "reference" : {
          "reference" : "Encounter/tddui-encounter-sejour-example"
        },
        "name" : "tddui-encounter-sejour-example",
        "description" : "Exemple d'un séjour en ESSMS",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/tddui-event-location-example"
        },
        "name" : "tddui-event-location-example",
        "description" : "Lieu de l'évènement",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/tddui-organization-example"
        },
        "name" : "tddui-organization-example",
        "description" : "ESSMS - Les Chênes Verts",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/tddui-patient-example"
        },
        "name" : "tddui-patient-example",
        "description" : "Exemple de la ressource TDDUIPatient",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/tddui-patient-ins-example"
        },
        "name" : "tddui-patient-ins-example",
        "description" : "Exemple de la ressource TDDUIPatientINS",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/tddui-practitioner-example"
        },
        "name" : "tddui-practitioner-example",
        "description" : "Exemple d'un professionnel de santé",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/tddui-practitioner-role-example"
        },
        "name" : "tddui-practitioner-role-example",
        "description" : "Exemple d'un professionnel de santé",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/TDDUIProducteur"
        },
        "name" : "TDDUI-Producteur",
        "description" : "Le rôle de Producteur est de transmettre des données de son logiciel DUI. Il correspond à un logiciel DUI.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/tddui-questionnaire-response-aggir-pa-example"
        },
        "name" : "tddui-questionnaire-response-aggir-pa-example",
        "description" : "Grille de réponse AGGIR PA",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/tddui-questionnaire-response-aggir-ph-example"
        },
        "name" : "tddui-questionnaire-response-aggir-ph-example",
        "description" : "Grille de réponse AGGIR PH",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/tddui-questionnaire-response-serafin-precision-example"
        },
        "name" : "tddui-questionnaire-response-serafin-precision-example",
        "description" : "Evaluation SERAFIN pour un besoin d'hébergement adapté avec précision",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/tddui-questionnaire-response-serafin-sans-precision-example"
        },
        "name" : "tddui-questionnaire-response-serafin-sans-precision-example",
        "description" : "Evaluation SERAFIN pour un besoin d'hébergement adapté sans précision",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/tddui-questionnaire-response-situation-ssiad-example"
        },
        "name" : "tddui-questionnaire-response-situation-ssiad-example",
        "description" : "Grille de réponse de la situation SSIAD",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/tddui-task-transport-example"
        },
        "name" : "tddui-task-transport-example",
        "description" : "Exemple du transport.",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/tddui-task-transport-professionel-example"
        },
        "name" : "tddui-task-transport-professionel-example",
        "description" : "Exemple du transport du professionnel.",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/tddui-task-transport-usager-example"
        },
        "name" : "tddui-task-transport-usager-example",
        "description" : "Exemple du transport de l'usager.",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ExampleTDDUIBundle"
        },
        "name" : "TDDUIBundleExample",
        "description" : "Exemple de bundle conforme au profil TDDUIBundle",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-patient-present"
        },
        "name" : "Usager présent",
        "description" : "Evènement nécessitant ou non la présence physique de l’usager.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/tddui-questionnaire-aggir-pa-ssiad"
        },
        "name" : "Évaluation AGGIR PA SSIAD",
        "description" : "Grille d'évaluation AGGIR PA SSIAD",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/tddui-questionnaire-aggir-ph-ssiad"
        },
        "name" : "Évaluation AGGIR PH SSIAD",
        "description" : "Grille d'évaluation AGGIR PH SSIAD",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/tddui-questionnaire-situation-ssiad"
        },
        "name" : "Évaluation de la situation SSIAD",
        "description" : "Grille d'évaluation de la situation SSIAD",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/tddui-questionnaire-serafin"
        },
        "name" : "Évaluation SERAFIN",
        "description" : "Grille d'évaluation SERAFIN",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/tddui-event-cancel-reason"
        },
        "name" : "Évènement annulé",
        "description" : "Motif associé au statut de non-réalisation de l’évènement.",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Accueil",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "sfe.html"
            }
          ],
          "nameUrl" : "sfe.html",
          "title" : "Volume 1 - Etude fonctionnelle",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "sfe_cas_usage.html"
                }
              ],
              "nameUrl" : "sfe_cas_usage.html",
              "title" : "Cas d'usage",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "sfe_organisation_contexte_metier.html"
                }
              ],
              "nameUrl" : "sfe_organisation_contexte_metier.html",
              "title" : "Organisation du contexte métier",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "sfe_transfert_des_donnees_a_un_tiers.html"
                }
              ],
              "nameUrl" : "sfe_transfert_des_donnees_a_un_tiers.html",
              "title" : "Transfert des données à un tiers",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "sfe_modelisation_contenu.html"
                }
              ],
              "nameUrl" : "sfe_modelisation_contenu.html",
              "title" : "Modélisation du contenu du DUI",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "description_flux.html"
            }
          ],
          "nameUrl" : "description_flux.html",
          "title" : "Volume 2 - Détail des transactions",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "description_flux_synthese.html"
                }
              ],
              "nameUrl" : "description_flux_synthese.html",
              "title" : "Synthèse des flux",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "description_flux_1_transmission_donnees_dui.html"
                }
              ],
              "nameUrl" : "description_flux_1_transmission_donnees_dui.html",
              "title" : "Flux 1 - Transmission de données DUI",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "tests.html"
            }
          ],
          "nameUrl" : "tests.html",
          "title" : "Solutions de tests",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "annexes.html"
            }
          ],
          "nameUrl" : "annexes.html",
          "title" : "Annexes",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "mapping_fonctionnel_FHIR.html"
                }
              ],
              "nameUrl" : "mapping_fonctionnel_FHIR.html",
              "title" : "Mapping FHIR du modèle de contenu DUI",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "annexes_documents_reference.html"
                }
              ],
              "nameUrl" : "annexes_documents_reference.html",
              "title" : "Documents de référence",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "annexes_acronymes.html"
                }
              ],
              "nameUrl" : "annexes_acronymes.html",
              "title" : "Acronymes",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "annexes_codes_professions_roles_modes_exercices.html"
                }
              ],
              "nameUrl" : "annexes_codes_professions_roles_modes_exercices.html",
              "title" : "Professions du médico-social",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "securite.html"
                }
              ],
              "nameUrl" : "securite.html",
              "title" : "Sécurité",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "downloads.html"
                }
              ],
              "nameUrl" : "downloads.html",
              "title" : "Téléchargements et usages",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "changes.html"
            }
          ],
          "nameUrl" : "changes.html",
          "title" : "Historique des changements",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
