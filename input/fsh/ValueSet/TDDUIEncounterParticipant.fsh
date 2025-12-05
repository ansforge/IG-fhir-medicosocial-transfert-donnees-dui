ValueSet: TDDUIEncounterParticipantVs
Id: tddui-encounter-participant-vs
Title: "TDDUI Encounter Participant ValueSet"
Description: "ValueSet for TDDUI Encounter's participants"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from system TDDUIEncounterParticipant
* include codes from valueset http://hl7.org/fhir/ValueSet/encounter-participant-type
