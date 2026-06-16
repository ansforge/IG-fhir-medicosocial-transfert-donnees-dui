CodeSystem: TDDUIIdentifier
Id: tddui-identifier
Title: "TDDUI Patient Identifier"
Description: "CodeSystem pour la définition des codes d'identifiant de l'usager"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"

* ^caseSensitive = true
* ^content = #complete
* #PIN "Patient initial number"
// SCS profile
* ^experimental = false