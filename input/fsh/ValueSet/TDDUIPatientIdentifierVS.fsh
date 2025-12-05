ValueSet: TDDUIPatientIdentifierVs
Id: tddui-patient-identifier-vs
Title: "TDDUI Patient Identifier ValueSet"
Description: "ValueSet for TDDUI Patient's identifier types"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from system TDDUIIdentifier
* include codes from valueset http://hl7.org/fhir/ValueSet/identifier-type
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203
* include codes from system https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203