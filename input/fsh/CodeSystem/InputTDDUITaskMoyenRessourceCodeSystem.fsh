CodeSystem: InputTDDUITaskMoyenRessourceCodeSystem
Id: input-tddui-task-moyen-ressource-codesystem
Title: "InputTDDUITaskMoyenRessourceCodeSystem"
Description: "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les moyens et ressources du projet personnalisé."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^caseSensitive = true
* ^compositional = false
* ^content = #complete
* ^experimental = false

* #type "Type du moyen ou de la ressource. Distinction entre moyen et ressource si nécessaire."
* #evaluation "Evaluation du moyen ou de la ressource."
* #pieceJointe "Pièce jointe du moyen/ressource."
* #evaluationNonStructuree "Evaluation si elle n’est pas structurée."