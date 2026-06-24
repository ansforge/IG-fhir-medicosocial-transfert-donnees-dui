ValueSet: TDDUIObservationIdentifierRepas
Id: tddui-observation-identifier-repas
Title: "TDDUI Observation Repas Identifier"
Description: "ValueSet pour la définition des codes d'identifiant du repas"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include TDDUIObservationIdentifier#REP
* include codes from valueset http://hl7.org/fhir/ValueSet/identifier-type