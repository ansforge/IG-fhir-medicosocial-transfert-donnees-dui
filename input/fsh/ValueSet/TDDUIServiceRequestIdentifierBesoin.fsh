ValueSet: TDDUIServiceRequestIdentifierBesoin
Id: tddui-service-request-identifier-besoin
Title: "TDDUI ServiceRequest Besoin Identifier"
Description: "ValueSet pour la définition des codes d'identifiant de besoin"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include TDDUIServiceRequestIdentifier#BES
* include codes from valueset http://hl7.org/fhir/ValueSet/identifier-type