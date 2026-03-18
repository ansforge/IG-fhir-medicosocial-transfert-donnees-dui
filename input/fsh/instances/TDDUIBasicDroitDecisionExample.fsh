Instance: tddui-basic-decision-example
InstanceOf: TDDUIBasicDecision
Title: "TDDUI Basic Decision Example"
Description: "Exemple de la ressource TDDUIBasicDroitDecision"
Usage: #example

* identifier[idDecision].use = #official
* identifier[idDecision].value = "1254"
* identifier[idDecision].system = "2.16.840.1.113883.2.8.3.75.1"

* subject = Reference(tddui-service-request-demande-orientation-example)

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateOuverture].valueDate = "2020-01-01"

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateEcheance].valueDate = "2020-12-31"

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[existencePAG].valueBoolean = false
