ValueSet: TDDUIRelatedPersonRelashionship
Id: tddui-contact-related-person-relashionship
Title: "TDDUI Related Person Relashionship"
Description: "ValueSet définissant les slices de RelatedPerson.relationship."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from valueset $JDV-J384-Role-Membre-Famille-MS
* include codes from valueset TDDUIContactRelation
* include codes from valueset TDDUIContactProtectionJuridique
