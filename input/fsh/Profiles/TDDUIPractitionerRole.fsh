Profile: TDDUIPractitionerRole
Parent: FRCorePractitionerRole
Id: tddui-practitioner-role
Title: "TDDUI Practitioner Role"
Description: "Profil de la ressource FRCorePractitionerRole permettant de représenter un Profesionnel."

// Role/Profession
* code 0..*
* code ^slicing.discriminator.type = #pattern
* code ^slicing.discriminator.path = "coding.code"
* code ^slicing.rules = #open

* code contains
    role 0..* and
    profession 0..*

* code[role] ^short = "Rôle fonctionnel du professionnel."
* code[role].coding.code from https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS

* code[profession] ^short = "Profession / Spécialité du professionnel."
* code[profession].coding.code from https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS

// Etablissement de rattachement 
* organization only Reference(TDDUIOrganization)

// Practioner
* practitioner only Reference(TDDUIPractitioner)
