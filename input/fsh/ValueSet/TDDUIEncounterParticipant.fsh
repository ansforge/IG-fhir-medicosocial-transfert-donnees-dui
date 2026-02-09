ValueSet: TDDUIEncounterParticipant
Id: tddui-encounter-participant
Title: "TDDUI Encounter Participant"
Description: "ValueSet pour la définition des codes de participant d'un événement"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from system TDDUIEncounterParticipant
* include codes from valueset http://hl7.org/fhir/ValueSet/encounter-participant-type
