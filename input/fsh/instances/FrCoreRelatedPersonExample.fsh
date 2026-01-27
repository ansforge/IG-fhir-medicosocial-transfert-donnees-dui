Instance: tddui-related-person-contact-example
InstanceOf: TDDUIRelatedPersonContact
Usage: #example
Description: "Exemple de la famille de l'usager."

* identifier.value = "3480787529/123456789-PPAttente-1234-enfant"

* relationship[Role].coding.code = #PAT
* relationship[Role].coding.display = "aidé"

* relationship[RelationType] = https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode#CHILD "Enfant"

* patient = Reference(tddui-patient-ins-example)