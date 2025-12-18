Profile: TDDUITaskTransport
Parent: Task
Id: tddui-task-transport
Title: "TDDUI Task Transport"
Description: "Profil de la ressource Task permettant de représenter le transport."

* ^purpose = """
    > **Note** : La ressource Task en FHIR R4 est utilisée pour représenter le Transport. Lors d'une montée de version vers FHIR R5, il conviendra d'utiliser la ressource Transport.
  """

// Identifiant du trajet
* identifier 1..1

// Type de transport
* code 0..1
* code from $JDV-ModeDeTransport-CISIS

// Transporteur
* owner 0..1
* owner only Reference(TDDUIOrganization)

// Date début / fin de transport
* executionPeriod 1..1 
* executionPeriod.start 1..1
* executionPeriod.end 1..1

// Événement
* encounter 1..1
* encounter only Reference(TDDUIEncounterEvenement)

* input.type from InputTDDUITaskTransportValueSet (required)

* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input contains
    typeMotorisation 0..1 and
    adresseDepart 0..1 and
    adresseDestination 0..1 and
    budgetPrevisionnel 0..1 and
    budgetReel 0..1 and
    distance 0..1 and
    dureeTheorique 0..1

// Type de motorisation
* input[typeMotorisation].value[x] only CodeableConcept
* input[typeMotorisation].valueCodeableConcept from $JDV-TypeMotorisation-CISIS
* input[typeMotorisation].type = InputTDDUITaskTransportCodeSystem#typeMotorisation
* input[typeMotorisation] ^short = "Type de motorisation"

// Adresse de départ
* input[adresseDepart].value[x] only Address
* input[adresseDepart].type = InputTDDUITaskTransportCodeSystem#adresseDepart
* input[adresseDepart] ^short = "Adresse de départ"

// Adresse de destination
* input[adresseDestination].value[x] only Address
* input[adresseDestination].type = InputTDDUITaskTransportCodeSystem#adresseDestination
* input[adresseDestination] ^short = "Adresse de destination"

// Budget prévisionnel
* input[budgetPrevisionnel].value[x] only Money
* input[budgetPrevisionnel].type = InputTDDUITaskTransportCodeSystem#budgetPrevisionnel
* input[budgetPrevisionnel] ^short = "Budget prévisionnel"

// Budget réel
* input[budgetReel].value[x] only Money
* input[budgetReel].type = InputTDDUITaskTransportCodeSystem#budgetReel
* input[budgetReel] ^short = "Budget réel"

// Distance
* input[distance].value[x] only Distance
* input[distance].type = InputTDDUITaskTransportCodeSystem#distance
* input[distance] ^short = "Distance du trajet"

// Durée théorique
* input[dureeTheorique].value[x] only Duration
* input[dureeTheorique].type = InputTDDUITaskTransportCodeSystem#dureeTheorique
* input[dureeTheorique] ^short = "Durée théorique du trajet"

Mapping:  ConceptMetier_TDDUITaskTransport
Source:   TDDUITaskTransport
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUITaskTransport
Title:    "Modèle de contenu DUI"
* -> "Transport"

* insert TDDUITaskTransportMapping
