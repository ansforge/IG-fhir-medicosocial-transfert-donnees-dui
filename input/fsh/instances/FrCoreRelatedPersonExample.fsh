Instance: fr-core-related-person-example
InstanceOf: FRCoreRelatedPersonProfile
Usage: #example
Description: "Exemple de la famille de l'usager."

* identifier.value = "3480787529/123456789-PPAttente-1234-enfant"

* relationship[RelationType] = https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode#HUSB "Epoux"
* relationship[RelationType].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"

* relationship[RelationType] = https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode#CHILD "Enfant"
* relationship[RelationType].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"

* patient = Reference(tddui-patient-ins-example)