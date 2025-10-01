CodeSystem: InputTDDUITaskTransportCodeSystem
Id: input-tddui-task-transport-codesystem
Title: "InputTaskTransportCodeSystem"
Description: "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^caseSensitive = true
* ^compositional = false
* ^content = #complete
* ^experimental = false

* #typeMotorisation "Type de motorisation associée au véhicule utilisé lors du transport."
* #adresseDepart "Adresse de départ du transport."
* #adresseDestination "Adresse de destination du transport."
* #budgetPrevisionnel "Budget prévisionnel pour assurer le transport de la personne physique."
* #budgetReel "Budget réel pour assurer le transport de la personne physique."
* #distance "Distance du transport de la personne physique."
* #dureeTheorique "Durée théorique du transport de la personne physique."
* #accompagnement "Accompagnement nécessaire ou non de l'usager."
* #asepsie "Lors du transport de l'usager l'asepsie est rigoureusement respectée ou n'est pas nécessaire."
* #natureTransport "Nature du transport de l'usager."