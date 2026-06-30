CodeSystem: TDDUIServiceRequestIdentifier
Id: tddui-service-request-identifier
Title: "TDDUI ServiceRequest Identifier"
Description: "CodeSystem pour la définition des codes d'identifiant des observations"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"

* ^caseSensitive = true
* ^content = #complete
* #BES "Identifiant du besoin"
* #DEMANDE_ORIENTATION "Identifiant de la demande d'orientation"
// SCS profile
* ^experimental = false