Profile: TDDUIRelatedPersonContact
Parent: FRCoreRelatedPersonProfile
Id: tddui-related-person-contact
Title: "TDDUI RelatedPerson Contact"
Description: "Profil de la ressource FRCoreRelatedPersonProfile permettant de représenter le contact PersonnePhysique."

* extension contains 
    tddui-nationality named nationality 0..* and
    tddui-comment named comment 0..1 and 
    tddui-related-person-contact-description named description 0..1

* patient only Reference(TDDUIPatient or TDDUIPatientINS)

* relationship contains
    LegalProtection 0..1

// Slice Role à ajouter lorsque les NOS du mois de janvier seront disponibles

* relationship[RelationType] from TDDUIRelation (required)
* relationship[RelationType].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"

* relationship[LegalProtection] from TDDUIProtectionJuridique (required)
* relationship[LegalProtection].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique"

* name only tddui-humanname

* gender from fr-core-vs-patient-gender-INS
* gender ^short = "male | female | unknown"

* address 0..1

Mapping:  ConceptMetier_TDDUIRelatedPersonContact
Source:   TDDUIRelatedPersonContact
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIRelatedPersonContact
Title:    "Modèle de contenu DUI"
* -> "ContactPersonnePhysique"
 
* identifier -> "identifiantPP"
* name.family -> "nomNaissance"
* name.given -> "prenom"
* name.prefix -> "civilite"
* gender -> "sexe"
* extension[nationality] -> "paysNationalite"
* birthDate -> "dateNaissance"
* address -> "adresse"
* telecom -> "telecommunication"
* extension[comment] -> "commentaire"
* extension[description] -> "description"
* relationship[Role] -> "role"
* relationship[RelationType] -> "Relation"
* relationship[LegalProtection] -> "Relation"
