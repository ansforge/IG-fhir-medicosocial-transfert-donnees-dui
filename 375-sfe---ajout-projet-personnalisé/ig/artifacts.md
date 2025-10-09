# Artifacts Summary - Médicosocial - Transfert de données DUI v2.0.0

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
| [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md) | Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS |
| [TDDUI Organization](StructureDefinition-tddui-organization.md) | Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques. |
| [TDDUI Patient](StructureDefinition-tddui-patient.md) | Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis. |
| [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md) | Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis. |

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
| [Commentaire](StructureDefinition-tddui-comment.md) | Commentaire relatif au séjour. |
| [Date d’admission](StructureDefinition-tddui-admission-date.md) | Date d’admission dans la structure ESSMS. |
| [Libellé mode d'entrée](StructureDefinition-tddui-entry-mode-label.md) | Libellé du mode d’entée du séjour. |
| [Libellé mode de sortie](StructureDefinition-tddui-exit-mode-label.md) | Libellé du mode de sortie du séjour. |
| [Ordre de naissance dans le registre d'état civil](StructureDefinition-tddui-birth-order.md) | Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période. Il est obligatoire si le NIR n'est pas transmis. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [TDDUI Encounter FR Core CodeSystem v2-0203](CodeSystem-tddui-encounter-identifier.md) | TDDUI Encounter's identifier |
| [TDDUI FR Core CodeSystem v2-0203](CodeSystem-tddui-identifier.md) | TDDUI Patient's identifier |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [TDDUIBundleExample](Bundle-ExampleTDDUIBundle.md) | Exemple de bundle conforme au profil TDDUIBundle |
| [tddui-encounter-sejour-example](Encounter-tddui-encounter-sejour-example.md) | Exemple d'un séjour en ESSMS |
| [tddui-organization-example](Organization-tddui-organization-example.md) | ESSMS - Les Chênes Verts |
| [tddui-patient-example](Patient-tddui-patient-example.md) | Exemple de la ressource TDDUIPatient |
| [tddui-patient-ins-example](Patient-tddui-patient-ins-example.md) | Exemple de la ressource TDDUIPatientINS |

