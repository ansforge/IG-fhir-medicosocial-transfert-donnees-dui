# Artifacts Summary - Médicosocial - Transfert de données DUI v2.2.0

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
| [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md) | Profil de la ressource FRCoreRelatedPersonProfile permettant de représenter un contact de l'usager. |
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
| [Description](StructureDefinition-tddui-related-person-contact-description.md) | Description du contact PersonnePhysique. |
| [TDDUI Admission Date](StructureDefinition-tddui-admission-date.md) | Date d’admission dans la structure ESSMS. |
| [TDDUI Attachment](StructureDefinition-tddui-attachment.md) | Extension permettant de véhiculer des pièces jointes que ce soit pour l'évaluation, l'évènement ou le projet personnalisé. L'extension référence le profil PDSm_SimplifiedPublish. |
| [TDDUI Birth Order](StructureDefinition-tddui-birth-order.md) | Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période. Il est obligatoire si le NIR n'est pas transmis. |
| [TDDUI CarePlan Projet Perso Ref](StructureDefinition-tddui-careplan-reference.md) | Liens vers le projet personnalisé, utilisables dans le profil TDDUIGoalObjectif. |
| [TDDUI Comment](StructureDefinition-tddui-comment.md) | * **Séjour** : commentaire relatif au séjour.
* **Événement** : commentaires sur le déroulé de l’évènement.
* **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.
* **Champ évalué** : commentaire spécifique à un item ou sous-item évalué.
 |
| [TDDUI Discriminator](StructureDefinition-tddui-discriminator.md) | Extension pour discriminer les éléments CarePlan.supportingInfo et Goal.note. |
| [TDDUI Entry Mode label](StructureDefinition-tddui-entry-mode-label.md) | Libellé du mode d’entée du séjour. |
| [TDDUI Evaluation Ref](StructureDefinition-tddui-evaluation-reference.md) | Liens vers l'évaluation, utilisables dans le profil TDDUIGoalObjectif. |
| [TDDUI Event Cancel Reason](StructureDefinition-tddui-event-cancel-reason.md) | Motif associé au statut de non-réalisation de l’évènement. |
| [TDDUI Event Label](StructureDefinition-tddui-event-label.md) | Titre donné à l’évènement par la structure. |
| [TDDUI Event Outside Service](StructureDefinition-tddui-outside-service.md) | Evénement hors prestation prévue dans le projet personnalisé de l’usager. |
| [TDDUI Event Reason](StructureDefinition-tddui-event-reason.md) | Contexte justifiant la réalisation de l’évènement. |
| [TDDUI Event Report](StructureDefinition-tddui-event-report.md) | Zone de texte liée à l’événement pour compte rendu des actions réalisées. |
| [TDDUI Exercise Mode](StructureDefinition-tddui-exercise-mode.md) | Extension permettant de représenter le mode d'exercice du professionnel. |
| [TDDUI Exit Mode Label](StructureDefinition-tddui-exit-mode-label.md) | Libellé du mode de sortie du séjour. |
| [TDDUI Meal](StructureDefinition-tddui-meal.md) | Repas du professionnel prévu dans le cadre de l'événement. |
| [TDDUI Nationality Extension](StructureDefinition-tddui-nationality.md) | The nationality of the patient or a related person. |
| [TDDUI Patient Present](StructureDefinition-tddui-patient-present.md) | Evènement nécessitant ou non la présence physique de l’usager. |
| [TDDUI Profession](StructureDefinition-tddui-profession.md) | Extension permettant de représenter la profession du professionnel. |
| [TDDUI QR Participant](StructureDefinition-tddui-qr-participant.md) | Extension permettant d'ajouter le responsable de l'évaluation et l'auteur du statut de l'évaluation dans un QuestionnaireResponse. |
| [TDDUI Ressources Used](StructureDefinition-tddui-ressources-used.md) | Ressources utilisées lors de l’évènement (ex : chambre, matériel médical, véhicule). |
| [TDDUI Status Author](StructureDefinition-tddui-status-author.md) | Extension permettant de représenter la profession du professionnel. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [TDDUI CarePlan supportingInfo](ValueSet-tddui-care-plan-supporting-info.md) | ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo. |
| [TDDUI Contact Protection Juridique](ValueSet-tddui-contact-protection-juridique.md) | ValueSet définissant la protection juridique. |
| [TDDUI Contact Relation](ValueSet-tddui-contact-relation.md) | ValueSet définissant les relations. |
| [TDDUI Discriminator](ValueSet-tddui-discriminator.md) | ValueSet définissant les codes discriminants. |
| [TDDUI Encounter Identifier](ValueSet-tddui-encounter-identifier.md) | ValueSet pour la définition des codes d'identifiant de séjour |
| [TDDUI Encounter Participant](ValueSet-tddui-encounter-participant.md) | ValueSet pour la définition des codes de participant d'un événement |
| [TDDUI Encounter Type](ValueSet-tddui-encounter-type.md) | ValueSet pour la définition des codes de type de séjour |
| [TDDUI Goal Attente Note](ValueSet-tddui-goal-attente-note.md) | ValueSet définissant les types de notes pour l'élément Goal.note. |
| [TDDUI Goal Objectif Note](ValueSet-tddui-goal-objectif-note.md) | ValueSet définissant les types de notes pour l'élément Goal.note. |
| [TDDUI Patient Identifier](ValueSet-tddui-patient-identifier.md) | ValueSet pour la définition des codes d'identifiant de l'usager |
| [TDDUI Related Person Relashionship](ValueSet-tddui-contact-related-person-relashionship.md) | ValueSet définissant les slices de RelatedPerson.relationship. |
| [TDDUI SERAFIN](ValueSet-tddui-serafin.md) | ValueSet contenant les codes SERAFIN (prestations directes et indirectes) pour le profil TDDUI Encounter Evenement. |
| [TDDUI Task Input Action](ValueSet-tddui-task-input-action.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé. |
| [TDDUI Task Input Bilan](ValueSet-tddui-task-input-bilan.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé. |
| [TDDUI Task Input Moyen Ressource](ValueSet-tddui-task-input-moyen-ressource.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. |
| [TDDUI Task Input Prestation](ValueSet-tddui-task-input-prestation.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé. |
| [TDDUI Task Input Transport](ValueSet-tddui-task-input-transport.md) | ValueSet pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI. |
| [TDDUI Task Output Bilan](ValueSet-tddui-task-output-bilan.md) | ValueSet pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [TDDUI Discriminator](CodeSystem-tddui-discriminator.md) | CodeSystem définissant les codes discriminants. |
| [TDDUI Encounter Identifier](CodeSystem-tddui-encounter-identifier.md) | CodeSystem pour la définition des codes d'identifiant de séjour |
| [TDDUI Encounter Participant](CodeSystem-tddui-encounter-participant.md) | CodeSystem définissant les types de participants dans le profil TDDUIEncounterEvenement. |
| [TDDUI Patient Identifier](CodeSystem-tddui-identifier.md) | CodeSystem pour la définition des codes d'identifiant de l'usager |
| [TDDUI Task Input Action](CodeSystem-tddui-task-input-action.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les actions du projet personnalisé. |
| [TDDUI Task Input Bilan](CodeSystem-tddui-task-input-bilan.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé. |
| [TDDUI Task Input Moyen Ressource](CodeSystem-tddui-task-input-moyen-ressource.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé. |
| [TDDUI Task Input Prestation](CodeSystem-tddui-task-input-prestation.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les prestations du projet personnalisé. |
| [TDDUI Task Input Transport](CodeSystem-tddui-task-input-transport.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI. |
| [TDDUI Task Output Bilan](CodeSystem-tddui-task-output-bilan.md) | CodeSystem pour la définition des éléments spécifiques des output dans la ressource Task utilisée pour le bilan du projet personnalisé. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [TDDUI Bundle Example](Bundle-tddui-bundle-example.md) | Exemple de bundle conforme au profil TDDUIBundle |
| [TDDUI Encounter Evenement Example](Encounter-tddui-encounter-evenement-example.md) | Exemple d'un évènement |
| [TDDUI Encounter Sejour Example](Encounter-tddui-encounter-sejour-example.md) | Exemple d'un séjour en ESSMS |
| [TDDUI Event Location Example](Location-tddui-event-location-example.md) | Lieu de l'évènement |
| [TDDUI Organization Example](Organization-tddui-organization-example.md) | ESSMS - Les Chênes Verts |
| [TDDUI PP IME Bundle Example](Bundle-tddui-pp-ime-bundle-example.md) | Exemple de bundle conforme au profil TDDUIBundle contenant le projet personnalisé en IME |
| [TDDUI PP IME CarePlan Example](CarePlan-tddui-pp-ime-careplan-example.md) | Exemple du projet personnalisé d'un enfant en IME |
| [TDDUI PP IME Consent Accord Example](Consent-tddui-pp-ime-consent-accord-example.md) | Exemple d'un accord de la structure |
| [TDDUI PP IME Goal Objectif 1 Example](Goal-tddui-pp-ime-goal-objectif-1-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé en IME. |
| [TDDUI PP IME Goal Objectif 2 Example](Goal-tddui-pp-ime-goal-objectif-2-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé en IME. |
| [TDDUI PP IME Patient Example](Patient-tddui-pp-ime-patient-example.md) | Exemple de la ressource TDDUIPatient dans le cadre d'un projet personnalisé en IME |
| [TDDUI PP IME Task Action 1 AESH Example](Task-tddui-pp-ime-task-action-1-aesh-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'AESH dans le cadre du projet personnalisé en IME. |
| [TDDUI PP IME Task Action 1 Educ Example](Task-tddui-pp-ime-task-action-1-educ-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'éducateur spécialisé dans le cadre du projet personnalisé en IME. |
| [TDDUI PP PA Bundle Example](Bundle-tddui-pp-pa-bundle-example.md) | Exemple de bundle conforme au profil TDDUIBundle contenant le projet personnalisé PA. |
| [TDDUI PP PA CarePlan Example](CarePlan-tddui-pp-pa-careplan-example.md) | Exemple d'un projet personnalisé PA |
| [TDDUI PP PA Consent Accord Example](Consent-tddui-pp-pa-consent-accord-example.md) | Exemple d'un accord de la structure |
| [TDDUI PP PA DocumentReference Bilan Objectif 1 Example](DocumentReference-tddui-pp-pa-documentreference-bilan-objectif-1-example.md) | Bilan de l'objectif 1 du projet personnalisé PA au format PDF |
| [TDDUI PP PA DocumentReference Entrant Example](DocumentReference-tddui-pp-pa-documentreference-entrant-example.md) | Entrant Projet Personnalisé PA au format PDF |
| [TDDUI PP PA Goal Attente Famille Example](Goal-tddui-pp-pa-goal-attente-famille-example.md) | Exemple des attentes de la famille dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Goal Attente Usager Example](Goal-tddui-pp-pa-goal-attente-usager-example.md) | Exemple des attentes de l'usager dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Goal Objectif 1 Example](Goal-tddui-pp-pa-goal-objectif-1-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Goal Objectif 2 Example](Goal-tddui-pp-pa-goal-objectif-2-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Goal Objectif 3 Example](Goal-tddui-pp-pa-goal-objectif-3-example.md) | Exemple d'un objectif dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Patient Example](Patient-tddui-pp-pa-patient-example-pp.md) | Exemple de la ressource TDDUIPatient dans le cadre d'un projet personnalisé PA |
| [TDDUI PP PA Practitioner IDE Example](Practitioner-tddui-pp-pa-practitioner-ide-example.md) | Exemple d'un IDE |
| [TDDUI PP PA Questionnaire Response AGGIR PA Example](QuestionnaireResponse-tddui-pp-pa-questionnaire-response-aggir-pa-example.md) | Grille de réponse AGGIR PA |
| [TDDUI PP PA ServiceRequest Besoin 1 Example](ServiceRequest-tddui-pp-pa-servicerequest-besoin-1-example.md) | Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA ServiceRequest Besoin 2 Example](ServiceRequest-tddui-pp-pa-servicerequest-besoin-2-example.md) | Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA ServiceRequest Besoin 3 Example](ServiceRequest-tddui-pp-pa-servicerequest-besoin-3-example.md) | Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Action 1 Ergo Example](Task-tddui-pp-pa-task-action-1-ergo-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'ergothérapeute dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Action 1 IDE Example](Task-tddui-pp-pa-task-action-1-ide-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'IDE dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Action 1 Kine Example](Task-tddui-pp-pa-task-action-1-kine-example.md) | Exemple d'une action de l'objectif 1 réalisée par le kinésithérapeute dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Action 2 Anim Example](Task-tddui-pp-pa-task-action-2-anim-example.md) | Exemple d'une action de l'objectif 1 réalisée par l'animatrice dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Action 2 IDE Example](Task-tddui-pp-pa-task-action-2-ide-example.md) | Exemple d'une action de l'objectif 2 réalisée par l'IDE dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Action 3 Psy Example](Task-tddui-pp-pa-task-action-3-psy-example.md) | Exemple d'une action de l'objectif 3 réalisée par le psychologue dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Moyen Ressource Ergo 1 Example](Task-tddui-pp-pa-task-moyen-ressource-ergo-1-example.md) | Exemple des moyens et ressources de l'objectif 1 dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Moyen Ressource IDE 1 Example](Task-tddui-pp-pa-task-moyen-ressource-ide-1-example.md) | Exemple des moyens et ressources de l'objectif 1 dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Moyen Ressource IDE 2 Example](Task-tddui-pp-pa-task-moyen-ressource-ide-2-example.md) | Exemple des moyens et ressources de l'objectif 2 dans le cadre du projet personnalisé PA. |
| [TDDUI PP PA Task Moyen Ressource Kine 1 Example](Task-tddui-pp-pa-task-moyen-ressource-kine-1-example.md) | Exemple des moyens et ressources de l'objectif 1 dans le cadre du projet personnalisé PA. |
| [TDDUI Patient Example](Patient-tddui-patient-example.md) | Exemple de la ressource TDDUIPatient |
| [TDDUI Patient INS Example](Patient-tddui-patient-ins-example.md) | Exemple de la ressource TDDUIPatientINS |
| [TDDUI Practitioner Example](Practitioner-tddui-practitioner-example.md) | Exemple d'un professionnel de santé |
| [TDDUI Practitioner Role Example](PractitionerRole-tddui-practitioner-role-example.md) | Exemple d'un professionnel de santé |
| [TDDUI Questionnaire Response AGGIR PA Example](QuestionnaireResponse-tddui-questionnaire-response-aggir-pa-example.md) | Grille de réponse AGGIR PA |
| [TDDUI Questionnaire Response AGGIR PH Example](QuestionnaireResponse-tddui-questionnaire-response-aggir-ph-example.md) | Grille de réponse AGGIR PH |
| [TDDUI Questionnaire Response SERAFIN Precision Example](QuestionnaireResponse-tddui-questionnaire-response-serafin-precision-example.md) | Evaluation SERAFIN pour un besoin d'hébergement adapté avec précision |
| [TDDUI Questionnaire Response SERAFIN Sans Precision Example](QuestionnaireResponse-tddui-questionnaire-response-serafin-sans-precision-example.md) | Evaluation SERAFIN pour un besoin d'hébergement adapté sans précision |
| [TDDUI Questionnaire Response Situation SSIAD Example](QuestionnaireResponse-tddui-questionnaire-response-situation-ssiad-example.md) | Grille de réponse de la situation SSIAD |
| [TDDUI Related Person Contact Example](RelatedPerson-tddui-related-person-contact-example.md) | Exemple d'un contact. |
| [TDDUI Task Transport Example](Task-tddui-task-transport-example.md) | Exemple du transport. |
| [TDDUI Task Transport Professionel Example](Task-tddui-task-transport-professionel-example.md) | Exemple du transport du professionnel. |
| [TDDUI Task Transport Usager Example](Task-tddui-task-transport-usager-example.md) | Exemple du transport de l'usager. |

