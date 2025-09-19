Instance: tddui-task-transport-professionel-example
InstanceOf: TDDUITaskTransportProfessionnel
Usage: #example
Description: "Exemple du transport du professionnel."

* identifier.value = "3480787529/147720425367411-TPPro-154674"

* status = #completed

* intent = #plan

* for = Reference(tddui-practitioner-example)

* owner = Reference(tddui-organization-example)

* encounter = Reference(tddui-encounter-evenement-example)

* executionPeriod.start = "2023-04-14T10:30:00+02:00"
* executionPeriod.end = "2023-04-14T11:15:00+02:00"

* code.coding.code = #ORG-202
* code.coding.display = "Véhicule individuel"

* input[typeMotorisation].valueCodeableConcept.coding.code = #GEN-355
* input[typeMotorisation].valueCodeableConcept.coding.display = "Véhicule électrique"
* input[typeMotorisation].valueCodeableConcept.coding.system = "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis"

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
