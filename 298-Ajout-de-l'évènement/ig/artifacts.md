# Artifacts Summary - Médicosocial - Transfert de données DUI v2.0.0-ballot

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

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [TDDUI Bundle](StructureDefinition-tddui-bundle.md) | Profil générique créé pour transmettre des données d'un logiciel DUI. |
| [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md) | Profil de la ressource SimplifiedPublishDocumentReference pour les pièces jointes liées à l’événement et à l'évaluation. |
| [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md) | Profil de la ressource Encounter permettant de regrouper les évènements liés à la prise en charge de l’usager dans une structure ESSMS. |
| [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md) | Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS |
| [TDDUI Organization](StructureDefinition-tddui-organization.md) | Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques. |
| [TDDUI Patient](StructureDefinition-tddui-patient.md) | Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis. |
| [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md) | Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis. |
| [TDDUI Practitioner](StructureDefinition-tddui-practitioner.md) | Profil de la ressource FRCorePractitionerProfile permettant de représenter un Profesionnel. |
| [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md) | Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel. |
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
| [Mode d'exercice](StructureDefinition-tddui-exercise-mode.md) | Extension permettant de représenter le mode d'exercice du professionnel. |
| [Motif de l’évènement](StructureDefinition-tddui-event-reason.md) | Contexte justifiant la réalisation de l’évènement. |
| [Ordre de naissance dans le registre d'état civil](StructureDefinition-tddui-birth-order.md) | Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période. Il est obligatoire si le NIR n'est pas transmis. |
| [Pièce jointe](StructureDefinition-tddui-attachment.md) | Pièces jointes liées à l’événement et à l'évaluation. L'extension référence le profil PDSm_SimplifiedPublish. |
| [Profession](StructureDefinition-tddui-profession.md) | Extension permettant de représenter la profession du professionnel. |
| [Rapport de l’évènement](StructureDefinition-tddui-event-report.md) | Zone de texte liée à l’événement pour compte rendu des actions réalisées. |
| [Repas](StructureDefinition-tddui-meal.md) | Repas du professionnel prévu dans le cadre de l'événement. |
| [Ressources utilisées](StructureDefinition-tddui-ressources-used.md) | Ressources utilisées lors de l’évènement. |
| [Usager présent](StructureDefinition-tddui-patient-present.md) | Evènement nécessitant ou non la présence physique de l’usager. |
| [Évènement annulé](StructureDefinition-tddui-event-cancel-reason.md) | Motif associé au statut de non-réalisation de l’évènement. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [TDDUI SERAFIN ValueSet](ValueSet-tddui-serafin-valueset.md) | ValueSet contenant les codes SERAFIN (prestations directes et indirectes) pour le profil TDDUI Encounter Evenement. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [InputTaskTransportCodeSystem](CodeSystem-input-tddui-task-transport-codesystem.md) | CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI. |
| [TDDUI Encounter FR Core CodeSystem v2-0203](CodeSystem-tddui-encounter-identifier.md) | TDDUI Encounter's identifier |
| [TDDUI Encounter Participant Type](CodeSystem-TDDUIEncounterParticipant.md) | CodeSystem for the participant types in TDDUI Encounter |
| [TDDUI FR Core CodeSystem v2-0203](CodeSystem-tddui-identifier.md) | TDDUI Patient's identifier |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [TDDUIBundleExample](Bundle-ExampleTDDUIBundle.md) | Exemple de bundle conforme au profil TDDUIBundle |
| [tddui-encounter-evenement-example](Encounter-tddui-encounter-evenement-example.md) | Exemple d'un évènement |
| [tddui-encounter-sejour-example](Encounter-tddui-encounter-sejour-example.md) | Exemple d'un séjour en ESSMS |
| [tddui-event-location-example](Location-tddui-event-location-example.md) | Lieu de l'évènement |
| [tddui-organization-example](Organization-tddui-organization-example.md) | ESSMS - Les Chênes Verts |
| [tddui-patient-example](Patient-tddui-patient-example.md) | Exemple de la ressource TDDUIPatient |
| [tddui-patient-ins-example](Patient-tddui-patient-ins-example.md) | Exemple de la ressource TDDUIPatientINS |
| [tddui-practitioner-example](Practitioner-tddui-practitioner-example.md) | Exemple d'un professionnel de santé |
| [tddui-practitioner-role-example](PractitionerRole-tddui-practitioner-role-example.md) | Exemple d'un professionnel de santé |
| [tddui-task-transport-example](Task-tddui-task-transport-example.md) | Exemple du transport. |
| [tddui-task-transport-professionel-example](Task-tddui-task-transport-professionel-example.md) | Exemple du transport du professionnel. |
| [tddui-task-transport-usager-example](Task-tddui-task-transport-usager-example.md) | Exemple du transport de l'usager. |

