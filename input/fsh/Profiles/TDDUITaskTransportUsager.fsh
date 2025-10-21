Profile: TDDUITaskTransportUsager
Parent: TDDUITaskTransport
Id: tddui-task-transport-usager
Title: "TDDUI Task Transport Usager"
Description: "Profil de la ressource TDDUITaskTransport permettant de représenter le transport de l'usager."

* identifier ^short = "Identifiant du transport de l'usager"
* identifier.value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-TPPat-idTransport."
* identifier.value ^example[0].valueIdentifier.value = "3480787529/147720425367411-TPPat-21564655"
* identifier.system = "https://identifiant-medicosocial-transportusager.cnsa.fr"

* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input contains
    accompagnement 0..1 and
    asepsieRigoureuse 0..1 and
    natureTransport 0..1

// Accompagnement
* input[accompagnement].value[x] only boolean
* input[accompagnement].type = InputTDDUITaskTransportCodeSystem#accompagnement
* input[accompagnement] ^short = "Accompagnement nécessaire ou non de l'usager"

// Asepsie rigoureuse
* input[asepsieRigoureuse].value[x] only boolean
* input[asepsieRigoureuse].type = InputTDDUITaskTransportCodeSystem#asepsie
* input[asepsieRigoureuse] ^short = "Asepsie nécessaire ou non nécessaire"

// Nature du transport
* input[natureTransport].value[x] only CodeableConcept
* input[natureTransport].valueCodeableConcept from $JDV-J282-TransportsLiesAuProjetIndividuel-SERAFIN
* input[natureTransport].type = InputTDDUITaskTransportCodeSystem#natureTransport
* input[natureTransport] ^short = "Nature du transport de l'usager"

Mapping:  ConceptMetier_TDDUITaskTransportusager
Source:   TDDUITaskTransportUsager
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUITaskTransportUsager
Title:    "Modèle de contenu DUI"
* -> "TransportUsager"

* insert TDDUITaskTransportMapping
* input[accompagnement] -> "accompagnement"
* input[asepsieRigoureuse] -> "asepsieRigoureuse"
* input[natureTransport] -> "natureTransport"
