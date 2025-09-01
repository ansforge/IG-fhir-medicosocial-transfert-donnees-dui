Profile: TDDUITransportTaskUsager
Parent: TDDUITransportTask
Id: tddui-task-transport-usager
Title: "Transport Usager"
Description: "Profil de la ressource TDDUITaskTransport permettant de représenter le transport de l'usager."

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
* input[natureTransport].valueCodeableConcept from https://mos.esante.gouv.fr/NOS/JDV_J282-TransportsLiesAuProjetIndividuel_SERAFIN/FHIR/JDV-J282-TransportsLiesAuProjetIndividuel-SERAFIN
* input[natureTransport].type = InputTDDUITaskTransportCodeSystem#natureTransport
* input[natureTransport] ^short = "Nature du transport de l'usager"
