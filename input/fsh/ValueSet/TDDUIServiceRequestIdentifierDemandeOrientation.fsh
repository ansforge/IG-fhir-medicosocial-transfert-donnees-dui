ValueSet: TDDUIServiceRequestIdentifierDemandeOrientation
Id: tddui-service-request-identifier-demande-orientation
Title: "TDDUI ServiceRequest DemandeOrientation Identifier"
Description: "ValueSet pour la définition des codes d'identifiant de demande d'orientation"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include TDDUIServiceRequestIdentifier#DEMANDE_ORIENTATION
* include codes from valueset http://hl7.org/fhir/ValueSet/identifier-type