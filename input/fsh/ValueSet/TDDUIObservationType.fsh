ValueSet: TDDUIObservationType
Id: tddui-observation-type
Title: "TDDUI Observation Type"
Description: "ValueSet for the Observation types."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from system TDDUIObservationType
* include $loinc#79378-6 "Cause of death"
* include $loinc#LP73551-1  "Transport mode"
