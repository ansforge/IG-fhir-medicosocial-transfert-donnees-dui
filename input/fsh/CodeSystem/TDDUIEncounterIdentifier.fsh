CodeSystem: TDDUIEncounterIdentifier
Id: tddui-encounter-identifier
Title: "TDDUI Encounter Identifier"
Description: "CodeSystem pour la définition des codes d'identifiant de séjour"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"

* ^caseSensitive = true
* ^content = #complete
* #SEJ "Identifiant du séjour"
* #NUMDOSS "Numéro de dossier administratif du séjour"
// SCS profile
* ^experimental = false