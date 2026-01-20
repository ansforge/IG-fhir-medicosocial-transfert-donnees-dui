# Artifacts Summary - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) | Le rôle du Consommateur est de recueillir les données d'un logiciel DUI. Il correspond à un SI tiers. |
| [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md) | Le rôle de Producteur est de transmettre des données de son logiciel DUI. Il correspond à un logiciel DUI. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Évaluation AGGIR PA SSIAD](Questionnaire-tddui-questionnaire-aggir-pa-ssiad.md) | Grille d'évaluation AGGIR PA SSIAD |
| [Évaluation AGGIR PH SSIAD](Questionnaire-tddui-questionnaire-aggir-ph-ssiad.md) | Grille d'évaluation AGGIR PH SSIAD |
| [Évaluation SERAFIN](Questionnaire-tddui-questionnaire-serafin.md) | Grille d'évaluation SERAFIN |
| [Évaluation de la situation SSIAD](Questionnaire-tddui-questionnaire-situation-ssiad.md) | Grille d'évaluation de la situation SSIAD |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [TDDUI Bundle](StructureDefinition-tddui-bundle.md) | Profil générique créé pour transmettre des données d'un logiciel DUI. |
| [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md) | Profil de la ressource CarePlan représentant le projet personnalisé d'un usager. |
| [TDDUI Consent Accord](StructureDefinition-tddui-consent-accord.md) | Profil de la ressource Consent permettant de représenter l'accord de l'usager, de son entourage ou de la structure. |
| [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md) | Profil de la ressource SimplifiedPublishDocumentReference permettant de véhiculer des pièces jointes que ce soit pour l'évaluation, l'évènement ou le projet personnalisé. |
| [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md) | Profil de la ressource Encounter permettant de regrouper les évènements liés à la prise en charge de l’usager dans une structure ESSMS. |
| [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md) | Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS |
| [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md) | Profil de la ressource Goal permettant de représenter les attentes pour un usager. |
| [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md) | Profil de la ressource Goal permettant de représenter les résultats à atteindre dans le cadre du projet personnalisé. |
| [TDDUI Organization](StructureDefinition-tddui-organization.md) | Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques. |
| [TDDUI Patient](StructureDefinition-tddui-patient.md) | Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis. |
| [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md) | Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis. |
| [TDDUI Practitioner](StructureDefinition-tddui-practitioner.md) | Profil de la ressource FRCorePractitionerProfile permettant de représenter un professionnel du médicosocial dans le cadre de TDDUI. Le profil AsPractitionerRoleProfile n'a pas été utilisé car il comportait trop de contraintes non présentes dans les DUI. |
| [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md) | Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel. |
| [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md) | Profil de la ressource QuestionnaireResponse utilisé pour transmettre les réponses aux questionnaires dans le cadre des évaluations. |
| [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md) | Profil de la ressource ServiceRequest permettant de représenter les besoins de l'usager. |
| [TDDUI Task Action](StructureDefinition-tddui-task-action.md) | Profil de la ressource Task permettant de représenter les actions réalisées dans le cadre du projet personnalisé. |
| [TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md) | Profil de la ressource Task permettant de représenter le bilan du projet personnalisé. |
| [TDDUI Task MoyenRessource](StructureDefinition-tddui-task-moyen-ressource.md) | Profil de la ressource Task permettant de représenter les moyens ou ressources utilisées dans le cadre du projet personnalisé. |
| [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md) | Profil de la ressource Task permettant de représenter les prestations du projet personnalisé. |
| [TDDUI Task Transport](StructureDefinition-tddui-task-transport.md) | Profil de la ressource Task permettant de représenter le transport. |
| [TDDUI Task Transport Professionnel](StructureDefinition-tddui-task-transport-professionnel.md) | Profil de la ressource TDDUITaskTransport permettant de représenter le transport du professionnel. |
| [TDDUI Task Transport Usager](StructureDefinition-tddui-task-transport-usager.md) | Profil de la ressource TDDUITaskTransport permettant de représenter le transport de l'usager. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [TDDUI Human Name DataType](StructureDefinition-tddui-human-name.md) | 
| | |
| :--- | :--- |
| French profile of datatype HumanName with constraints on prefix and suffix | Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix |
 |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Commentaire](StructureDefinition-tddui-comment.md) | * **Séjour** : commentaire relatif au séjour.
* **Événement** : commentaires sur le déroulé de l’évènement.
* **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.
* **Champ évalué** : commentaire spécifique à un item ou sous-item évalué.
 |
| [Date d’admission](StructureDefinition-tddui-admission-date.md) | Date d’admission dans la structure ESSMS. |
| [Evénement hors prestation](StructureDefinition-tddui-outside-service.md) | Evénement hors prestation prévue dans le projet personnalisé de l’usager. |
| [Libellé de l'évènement](StructureDefinition-tddui-event-label.md) | Titre donné à l’évènement par la structure. |
| [Libellé mode d'entrée](StructureDefinition-tddui-entry-mode-label.md) | Libellé du mode d’entée du séjour. |
| [Libellé mode de sortie](StructureDefinition-tddui-exit-mode-label.md) | Libellé du mode de sortie du séjour. |
| [Lien vers l'évaluation](StructureDefinition-tddui-evaluation-reference.md) | Liens vers l'évaluation, utilisables dans le profil TDDUIGoalObjectif. |
| [Lien vers le projet personnalisé](StructureDefinition-tddui-careplan-reference.md) | Liens vers le projet personnalisé, utilisables dans le profil TDDUIGoalObjectif. |
| [Mode d'exercice](StructureDefinition-tddui-exercise-mode.md) | Extension permettant de représenter le mode d'exercice du professionnel. |
| [Motif de l’évènement](StructureDefinition-tddui-event-reason.md) | Contexte justifiant la réalisation de l’évènement. |
| [Ordre de naissance dans le registre d'état civil](StructureDefinition-tddui-birth-order.md) | Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période. Il est obligatoire si le NIR n'est pas transmis. |
| [Pièce jointe](StructureDefinition-tddui-attachment.md) | Extension permettant de véhiculer des pièces jointes que ce soit pour l'évaluation, l'évènement ou le projet personnalisé. L'extension référence le profil PDSm_SimplifiedPublish. |
| [Rapport de l’évènement](StructureDefinition-tddui-event-report.md) | Zone de texte liée à l’événement pour compte rendu des actions réalisées. |
| [Repas](StructureDefinition-tddui-meal.md) | Repas du professionnel prévu dans le cadre de l'événement. |
| [Responsable et auteur du statut de l'évaluation](StructureDefinition-tddui-qr-participant.md) | Extension permettant d'ajouter le responsable de l'évaluation et l'auteur du statut de l'évaluation dans un QuestionnaireResponse. |
| [Ressources utilisées](StructureDefinition-tddui-ressources-used.md) | Ressources utilisées lors de l’évènement (ex : chambre, matériel médical, véhicule). |
| [TDDUI Auteur statut](StructureDefinition-tddui-status-author.md) | Extension permettant de représenter la profession du professionnel. |
| [TDDUI Discriminator Extension](StructureDefinition-tddui-discriminator.md) | Extension pour discriminer les éléments CarePlan.supportingInfo et Goal.note. |
| [TDDUI Profession](StructureDefinition-tddui-profession.md) | Extension permettant de représenter la profession du professionnel. |
| [Usager présent](StructureDefinition-tddui-patient-present.md) | Evènement nécessitant ou non la présence physique de l’usager. |
| [Évènement annulé](StructureDefinition-tddui-event-cancel-reason.md) | Motif associé au statut de non-réalisation de l’évènement. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [InputTDDUITaskActionValueSet](ValueSet-input-tddui-task-action-valueset.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé. |
| [InputTDDUITaskBilanValueSet](ValueSet-input-tddui-task-bilan-valueset.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé. |
| [InputTDDUITaskMoyenRessourceValueSet](ValueSet-input-tddui-task-moyen-ressource-valueset.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. |
| [InputTDDUITaskPrestationValueSet](ValueSet-input-tddui-task-prestation-valueset.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé. |
| [InputTaskTransportValueSet](ValueSet-input-tddui-task-transport-valueset.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI. |
| [OutputTDDUITaskBilanValueSet](ValueSet-output-tddui-task-bilan-valueset.md) | ValueSet pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé. |
| [TDDUI CarePlan supportingInfo ValueSet](ValueSet-tddui-care-plan-supportingInfo-vs.md) | ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo. |
| [TDDUI Discriminator ValueSet](ValueSet-tddui-discriminator-vs.md) | ValueSet définissant les codes discriminants. |
| [TDDUI Encounter Identifier Type ValueSet](ValueSet-tddui-encounter-identifier-vs.md) | ValueSet for TDDUI Encounter's identifier types |
| [TDDUI Encounter Participant ValueSet](ValueSet-tddui-encounter-participant-vs.md) | ValueSet for TDDUI Encounter's participants |
| [TDDUI Encounter Type ValueSet](ValueSet-tddui-encounter-type-vs.md) | ValueSet for TDDUI Encounter's types |
| [TDDUI Goal Attente Note ValueSet](ValueSet-tddui-goal-attente-note-vs.md) | ValueSet définissant les types de notes pour l'élément Goal.note. |
| [TDDUI Goal Objectif Note ValueSet](ValueSet-tddui-goal-objectif-note-vs.md) | ValueSet définissant les types de notes pour l'élément Goal.note. |
| [TDDUI Patient Identifier ValueSet](ValueSet-tddui-patient-identifier-vs.md) | ValueSet for TDDUI Patient's identifier types |
| [TDDUI SERAFIN ValueSet](ValueSet-tddui-serafin-valueset.md) | ValueSet contenant les codes SERAFIN (prestations directes et indirectes) pour le profil TDDUI Encounter Evenement. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [InputTDDUITaskActionCodeSystem](CodeSystem-input-tddui-task-action-codesystem.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé. |
| [InputTDDUITaskBilanCodeSystem](CodeSystem-input-tddui-task-bilan-codesystem.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé. |
| [InputTDDUITaskMoyenRessourceCodeSystem](CodeSystem-input-tddui-task-moyen-ressource-codesystem.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. |
| [InputTDDUITaskPrestationCodeSystem](CodeSystem-input-tddui-task-prestation-codesystem.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé. |
| [InputTaskTransportCodeSystem](CodeSystem-input-tddui-task-transport-codesystem.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI. |
| [OutputTDDUITaskBilanCodeSystem](CodeSystem-output-tddui-task-bilan-codesystem.md) | CodeSystem pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé. |
| [TDDUI Discriminator CodeSystem](CodeSystem-tddui-discriminator-cs.md) | CodeSystem définissant les codes discriminants. |
| [TDDUI Encounter FR Core CodeSystem v2-0203](CodeSystem-tddui-encounter-identifier-cs.md) | TDDUI Encounter's identifier |
| [TDDUI Encounter Participant Type](CodeSystem-TDDUIEncounterParticipant.md) | CodeSystem for the participant types in TDDUI Encounter |
| [TDDUI FR Core CodeSystem v2-0203](CodeSystem-tddui-identifier.md) | TDDUI Patient's identifier |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [TDDUIBundleExample](Bundle-ExampleTDDUIBundle.md) | Exemple de bundle conforme au profil TDDUIBundle |
| [fr-core-related-person-example](RelatedPerson-fr-core-related-person-example.md) | Exemple de la famille de l'usager. |
| [tddui-encounter-evenement-example](Encounter-tddui-encounter-evenement-example.md) | Exemple d'un évènement |
| [tddui-encounter-sejour-example](Encounter-tddui-encounter-sejour-example.md) | Exemple d'un séjour en ESSMS |
| [tddui-event-location-example](Location-tddui-event-location-example.md) | Lieu de l'évènement |
| [tddui-organization-example](Organization-tddui-organization-example.md) | ESSMS - Les Chênes Verts |
| [tddui-patient-example](Patient-tddui-patient-example.md) | Exemple de la ressource TDDUIPatient |
| [tddui-patient-ins-example](Patient-tddui-patient-ins-example.md) | Exemple de la ressource TDDUIPatientINS |
| [tddui-pp-ime-bundle-example](Bundle-tddui-pp-ime-bundle-example.md) | Exemple de bundle conforme au profil TDDUIBundle contenant le projet personnalisé en IME |
| [tddui-pp-ime-careplan-example](CarePlan-tddui-pp-ime-careplan-example.md) | Exemple du projet personnalisé d'un enfant en IME |
| [tddui-pp-ime-consent-accord-example](Consent-tddui-pp-ime-consent-accord-example.md) | Exemple d'un accord de la structure |
| [tddui-pp-ime-goal-objectif-1-example](Goal-tddui-pp-ime-goal-objectif-1-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé en IME. |
| [tddui-pp-ime-goal-objectif-2-example](Goal-tddui-pp-ime-goal-objectif-2-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé en IME. |
| [tddui-pp-ime-patient-example](Patient-tddui-pp-ime-patient-example.md) | Exemple de la ressource TDDUIPatient dans le cadre d'un projet personnalisé en IME |
| [tddui-pp-ime-task-action-1-aesh-example](Task-tddui-pp-ime-task-action-1-aesh-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'AESH dans le cadre du projet personnalisé en IME. |
| [tddui-pp-ime-task-action-1-educ-example](Task-tddui-pp-ime-task-action-1-educ-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'éducateur spécialisé dans le cadre du projet personnalisé en IME. |
| [tddui-pp-pa-bundle-example](Bundle-tddui-pp-pa-bundle-example.md) | Exemple de bundle conforme au profil TDDUIBundle contenant le projet personnalisé PA. |
| [tddui-pp-pa-careplan-example](CarePlan-tddui-pp-pa-careplan-example.md) | Exemple d'un projet personnalisé PA |
| [tddui-pp-pa-consent-accord-example](Consent-tddui-pp-pa-consent-accord-example.md) | Exemple d'un accord de la structure |
| [tddui-pp-pa-documentreference-bilan-objectif-1-example](DocumentReference-tddui-pp-pa-documentreference-bilan-objectif-1-example.md) | Bilan de l'objectif 1 du projet personnalisé PA au format PDF |
| [tddui-pp-pa-documentreference-entrant-example](DocumentReference-tddui-pp-pa-documentreference-entrant-example.md) | Entrant Projet Personnalisé PA au format PDF |
| [tddui-pp-pa-goal-attente-famille-example](Goal-tddui-pp-pa-goal-attente-famille-example.md) | Exemple des attentes de la famille dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-goal-attente-usager-example](Goal-tddui-pp-pa-goal-attente-usager-example.md) | Exemple des attentes de l'usager dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-goal-objectif-1-example](Goal-tddui-pp-pa-goal-objectif-1-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-goal-objectif-2-example](Goal-tddui-pp-pa-goal-objectif-2-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-goal-objectif-3-example](Goal-tddui-pp-pa-goal-objectif-3-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-patient-example-pp](Patient-tddui-pp-pa-patient-example-pp.md) | Exemple de la ressource TDDUIPatient dans le cadre d'un projet personnalisé PA |
| [tddui-pp-pa-practitioner-ide-example](Practitioner-tddui-pp-pa-practitioner-ide-example.md) | Exemple d'un IDE |
| [tddui-pp-pa-questionnaire-response-aggir-pa-example](QuestionnaireResponse-tddui-pp-pa-questionnaire-response-aggir-pa-example.md) | Grille de réponse AGGIR PA |
| [tddui-pp-pa-servicerequest-besoin-1-example](ServiceRequest-tddui-pp-pa-servicerequest-besoin-1-example.md) | Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-servicerequest-besoin-2-example](ServiceRequest-tddui-pp-pa-servicerequest-besoin-2-example.md) | Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-servicerequest-besoin-3-example](ServiceRequest-tddui-pp-pa-servicerequest-besoin-3-example.md) | Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-action-1-ergo-example](Task-tddui-pp-pa-task-action-1-ergo-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'ergothérapeute dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-action-1-ide-example](Task-tddui-pp-pa-task-action-1-ide-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'IDE dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-action-1-kine-example](Task-tddui-pp-pa-task-action-1-kine-example.md) | Exemple d'une action de l'objectif 1 réalisée par le kinésithérapeute dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-action-2-anim-example](Task-tddui-pp-pa-task-action-2-anim-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'animatrice dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-action-2-ide-example](Task-tddui-pp-pa-task-action-2-ide-example.md) | Exemple d'une action de l'objectif 2 réalisée par l'IDE dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-action-3-psy-example](Task-tddui-pp-pa-task-action-3-psy-example.md) | Exemple d'une action de l'objectif 3 réalisée par le psychologue dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-moyen-ressource-ergo-1-example](Task-tddui-pp-pa-task-moyen-ressource-ergo-1-example.md) | Exemple des moyens et ressources de l'objectif 1 dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-moyen-ressource-ide-1-example](Task-tddui-pp-pa-task-moyen-ressource-ide-1-example.md) | Exemple des moyens et ressources de l'objectif 1 dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-moyen-ressource-ide-2-example](Task-tddui-pp-pa-task-moyen-ressource-ide-2-example.md) | Exemple des moyens et ressources de l'objectif 2 dans le cadre du projet personnalisé PA. |
| [tddui-pp-pa-task-moyen-ressource-kine-1-example](Task-tddui-pp-pa-task-moyen-ressource-kine-1-example.md) | Exemple des moyens et ressources de l'objectif 1 dans le cadre du projet personnalisé PA. |
| [tddui-practitioner-example](Practitioner-tddui-practitioner-example.md) | Exemple d'un professionnel de santé |
| [tddui-practitioner-role-example](PractitionerRole-tddui-practitioner-role-example.md) | Exemple d'un professionnel de santé |
| [tddui-questionnaire-response-aggir-pa-example](QuestionnaireResponse-tddui-questionnaire-response-aggir-pa-example.md) | Grille de réponse AGGIR PA |
| [tddui-questionnaire-response-aggir-ph-example](QuestionnaireResponse-tddui-questionnaire-response-aggir-ph-example.md) | Grille de réponse AGGIR PH |
| [tddui-questionnaire-response-serafin-precision-example](QuestionnaireResponse-tddui-questionnaire-response-serafin-precision-example.md) | Evaluation SERAFIN pour un besoin d'hébergement adapté avec précision |
| [tddui-questionnaire-response-serafin-sans-precision-example](QuestionnaireResponse-tddui-questionnaire-response-serafin-sans-precision-example.md) | Evaluation SERAFIN pour un besoin d'hébergement adapté sans précision |
| [tddui-questionnaire-response-situation-ssiad-example](QuestionnaireResponse-tddui-questionnaire-response-situation-ssiad-example.md) | Grille de réponse de la situation SSIAD |
| [tddui-task-transport-example](Task-tddui-task-transport-example.md) | Exemple du transport. |
| [tddui-task-transport-professionel-example](Task-tddui-task-transport-professionel-example.md) | Exemple du transport du professionnel. |
| [tddui-task-transport-usager-example](Task-tddui-task-transport-usager-example.md) | Exemple du transport de l'usager. |

