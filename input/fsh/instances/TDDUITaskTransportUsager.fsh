Instance: tddui-task-transport-usager-example
InstanceOf: TDDUITaskTransportUsager
Usage: #example
Description: "Exemple du transport de l'usager."

* identifier.value = "3480787529/147720425367411-TPU-154675"
* identifier.system = "https://identifiant-medicosocial-transportusager.cnsa.fr"

* status = #completed
* intent = #plan

* encounter = Reference(tddui-encounter-evenement-example)

* executionPeriod.start = "2023-04-14T10:30:00+02:00"
* executionPeriod.end = "2023-04-14T11:15:00+02:00"

* code.coding.code = #ORG-156
* code.coding.display = "Taxi"
* code.coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"

* input[budgetPrevisionnel].valueMoney.value = 2
* input[budgetPrevisionnel].valueMoney.currency = #EUR

* input[budgetReel].valueMoney.value = 2
* input[budgetReel].valueMoney.currency = #EUR

* input[distance].valueDistance.value = 4
* input[distance].valueDistance.unit = "kilometers"
* input[distance].valueDistance.code = #km
* input[distance].valueDistance.system = "http://unitsofmeasure.org"

* input[dureeTheorique].valueDuration.value = 10
* input[dureeTheorique].valueDuration.unit = "minutes"
* input[dureeTheorique].valueDuration.code = #min
* input[dureeTheorique].valueDuration.system = "http://unitsofmeasure.org"

* input[accompagnement].valueBoolean = true
* input[asepsieRigoureuse].valueBoolean = false
* input[natureTransport].valueCodeableConcept.coding.code = #3.2.4
* input[natureTransport].valueCodeableConcept.coding.display = "Transports liés au projet individuel"
* input[natureTransport].valueCodeableConcept.coding.system = "https://smt.esante.gouv.fr/terminologie-SERAFINPH"
