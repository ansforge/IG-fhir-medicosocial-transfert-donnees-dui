Instance: tddui-related-person-contact-example
InstanceOf: TDDUIRelatedPersonContact
Title: "TDDUI Related Person Contact Example"
Description: "Exemple d'un contact."
Usage: #example

* identifier.value = "3480787529/123456789-PPAttente-1234-enfant"

* relationship[Role] =  https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass#GUARD "Responsable légal"

* relationship[RelationType] = https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode#FTH "Père"

* patient = Reference(tddui-patient-ins-example)