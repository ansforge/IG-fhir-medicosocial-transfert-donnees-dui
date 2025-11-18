CodeSystem: InputTDDUITaskBilanCodeSystem
Id: input-tddui-task-bilan-codesystem
Title: "InputTDDUITaskBilanCodeSystem"
Description: "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour le bilan du projet personnalisé."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^caseSensitive = true
* ^compositional = false
* ^content = #complete
* ^experimental = false

* #perimetre "Périmètre du bilan."
* #problematique "Problématique liée à l'usager."
* #invite "Liste des personnes invitées à participer au bilan."
* #dateProchainBilan "Date du prochain bilan."
* #synthesePreparationBilan "Préparation du bilan."