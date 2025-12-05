ValueSet: TDDUIEncounterTypeVs
Id: tddui-encounter-type-vs
Title: "TDDUI Encounter Type ValueSet"
Description: "ValueSet for TDDUI Encounter's types"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false

* include codes from valueset FRCoreValueSetEncounterType
* include codes from valueset TDDUISerafinValueSet
* include codes from valueset $JDV-TypeEvenement-SSIAD-CISIS
* include codes from system http://terminology.hl7.org/CodeSystem/data-absent-reason
