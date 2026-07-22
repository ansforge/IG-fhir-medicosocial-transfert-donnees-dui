# Accueil - Médicosocial - Transfert de données DUI v2.4.0

## Accueil

 **Brief description of this Implementation Guide**
 The Digital User File (DUI) centralizes all information concerning the person being cared for in social and medico-social facilities and services. The aim of this implementation guide is to define the specifications for DUI data transfer. 

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
* Les spécifications fonctionnelles : section [ Spécifications fonctionnelles](sfe.md)
* La spécification technique de contenu : 
 Il existe deux représentations techniques pour le contenu de l'export des données d'un logiciel DUI : 
* une représentation basée sur le standard FHIR afin de s’aligner sur les recommandations européennes et pour s’adapter aux évolutions des [cas d'usage](sfe_cas_usage.md) de ce volet.
 La représentation FHIR décrite dans ce guide est à privilégier pour toute nouvelle implémentation : section [Ressources de conformité](artifacts.md)
* une représentation basée sur le standard CDA qui est spécifiée dans le guide d'implémentation [Médicosocial - Transfert de données DUI CDA](https://interop.esante.gouv.fr/ig/cda/tddui/). Ce guide est restreint au cas d'usage SSIAD. Les évolutions de ce guide d’implémentation sont limitées à des corrections techniques. Ce guide d'implementation sera déprécié lorsque la transition des éditeurs de CDA vers FHIR sera achevée.
 
* La spécification technique de transport : sections [Volume 2 - Détail des transactions](description_flux.md) et [Ressources de conformité](artifacts.md)
* Les annexes : 
* [ Mapping FHIR du modèle de contenu DUI](mapping_fonctionnel_FHIR.md)
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
| [Basic](http://hl7.org/fhir/StructureDefinition/Basic) | [TDDUIBasicDecision](StructureDefinition-tddui-basic-decision.md) | Profil de la ressource Basic permettant de représenter la décision de la CDAPH ainsi que les droits associés. |
| [Bundle](http://hl7.org/fhir/StructureDefinition/Bundle) | [TDDUIBundle](StructureDefinition-tddui-bundle.md) | Profil générique créé pour transmettre des données d'un logiciel DUI. |
| [CarePlan](http://hl7.org/fhir/StructureDefinition/CarePlan) | [TDDUICarePlanProjetPersonnalise](StructureDefinition-tddui-careplan-projet-personnalise.md) | Profil de la ressource CarePlan représentant le projet personnalisé d'un usager. |
| [Consent](http://hl7.org/fhir/StructureDefinition/Consent) | [TDDUIConsentAccord](StructureDefinition-tddui-consent-accord.md) | Profil de la ressource Consent permettant de représenter l'accord de l'usager, de son entourage ou de la structure. |
| [MHD DocumentReference for Simplified Publish](https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference) | [TDDUIDocumentReference](StructureDefinition-tddui-document-reference.md) | Profil de la ressource SimplifiedPublishDocumentReference permettant de véhiculer des pièces jointes que ce soit pour l'évaluation, l'évènement ou le projet personnalisé. |
| [Encounter](http://hl7.org/fhir/StructureDefinition/Encounter) | [TDDUIEncounterEvenement](StructureDefinition-tddui-encounter-evenement.md) | Profil de la ressource Encounter permettant de regrouper les évènements liés à la prise en charge de l’usager dans une structure ESSMS. |
| [Encounter](http://hl7.org/fhir/StructureDefinition/Encounter) | [TDDUIEncounterSejour](StructureDefinition-tddui-encounter-sejour.md) | Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS |
| [Goal](http://hl7.org/fhir/StructureDefinition/Goal) | [TDDUIGoalAttente](StructureDefinition-tddui-goal-attente.md) | Profil de la ressource Goal permettant de représenter les attentes pour un usager. |
| [Goal](http://hl7.org/fhir/StructureDefinition/Goal) | [TDDUIGoalObjectif](StructureDefinition-tddui-goal-objectif.md) | Profil de la ressource Goal permettant de représenter les résultats à atteindre dans le cadre du projet personnalisé. |
| [Goal](http://hl7.org/fhir/StructureDefinition/Goal) | [TDDUIGoalProjetVie](StructureDefinition-tddui-goal-projet-vie.md) | Profil de la ressource Goal permettant de représenter le projet de vie de l'usager. |
| [Observation](http://hl7.org/fhir/StructureDefinition/Observation) | [TDDUIObservationCauseMortalite](StructureDefinition-tddui-observation-cause-mortalite.md) | Profil de la ressource Observation permettant de représenter les causes de mortalité d'un usager. |
| [Observation](http://hl7.org/fhir/StructureDefinition/Observation) | [TDDUIObservationMobiliteUsager](StructureDefinition-tddui-observation-mobilite-usager.md) | Profil de la ressource Observation permettant de représenter la mobilité de l'usager. |
| [Observation](http://hl7.org/fhir/StructureDefinition/Observation) | [TDDUIObservationPeriodeScolaire](StructureDefinition-tddui-observation-periode-scolaire.md) | Profil de la ressource Observation permettant de représenter la période scolaire de l'usager. |
| [Observation](http://hl7.org/fhir/StructureDefinition/Observation) | [TDDUIObservationRepas](StructureDefinition-tddui-observation-repas.md) | Profil de la ressource Observation permettant de représenter si l'usager bénéficie ou non des repas. |
| [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization) | [TDDUIOrganization](StructureDefinition-tddui-organization.md) | Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques. |
| [FR Core Patient Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient) | [TDDUIPatient](StructureDefinition-tddui-patient.md) | Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis. |
| [FR Core Patient INS Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins) | [TDDUIPatientINS](StructureDefinition-tddui-patient-ins.md) | Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis. |
| [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner) | [TDDUIPractitioner](StructureDefinition-tddui-practitioner.md) | Profil de la ressource FRCorePractitionerProfile permettant de représenter un professionnel du médicosocial dans le cadre de TDDUI. Le profil AsPractitionerRoleProfile n'a pas été utilisé car il comportait trop de contraintes non présentes dans les DUI. |
| [FR Core Practitioner Role](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role) | [TDDUIPractitionerRole](StructureDefinition-tddui-practitioner-role.md) | Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel. |
| [QuestionnaireResponse](http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse) | [TDDUIQuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md) | Profil de la ressource QuestionnaireResponse utilisé pour transmettre les réponses aux questionnaires dans le cadre des évaluations. |
| [FR Core Related Person Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person) | [TDDUIRelatedPersonContact](StructureDefinition-tddui-related-person-contact.md) | Profil de la ressource FRCoreRelatedPersonProfile permettant de représenter un contact de l'usager. |
| [FR Core Schedule Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule) | [TDDUISchedule](StructureDefinition-tddui-schedule.md) | Profil de la ressource FRCoreScheduleProfile permettant de contenir l'ensemble des présences et absences de l'usager. |
| [ServiceRequest](http://hl7.org/fhir/StructureDefinition/ServiceRequest) | [TDDUIServiceRequestBesoin](StructureDefinition-tddui-service-request-besoin.md) | Profil de la ressource ServiceRequest permettant de représenter les besoins de l'usager. |
| [ServiceRequest](http://hl7.org/fhir/StructureDefinition/ServiceRequest) | [TDDUIServiceRequestDemandeOrientation](StructureDefinition-tddui-service-request-demande-orientation.md) | Profil de la ressource ServiceRequest permettant de représenter la demande d'orientation adressée à la CDAPH. |
| [FR Core Slot Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot) | [TDDUISlotPresenceAbsence](StructureDefinition-tddui-slot-presence-absence.md) | Profil de la ressource FRCoreSlotProfile permettant de représenter les présences et absences de l'usager. |
| [Task](http://hl7.org/fhir/StructureDefinition/Task) | [TDDUITaskAction](StructureDefinition-tddui-task-action.md) | Profil de la ressource Task permettant de représenter les actions réalisées dans le cadre du projet personnalisé. |
| [Task](http://hl7.org/fhir/StructureDefinition/Task) | [TDDUITaskBilan](StructureDefinition-tddui-task-bilan.md) | Profil de la ressource Task permettant de représenter le bilan du projet personnalisé. |
| [Task](http://hl7.org/fhir/StructureDefinition/Task) | [TDDUITaskMoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md) | Profil de la ressource Task permettant de représenter les moyens ou ressources utilisées dans le cadre du projet personnalisé. |
| [Task](http://hl7.org/fhir/StructureDefinition/Task) | [TDDUITaskPrestation](StructureDefinition-tddui-task-prestation.md) | Profil de la ressource Task permettant de représenter les prestations du projet personnalisé. |
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














