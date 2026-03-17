Instance: tddui-basic-droit-decision-example
InstanceOf: TDDUIBasicDroitDecision
Title: "TDDUI Basic Droit Decision Example"
Description: "Exemple de la ressource TDDUIBasicDroitDecision"
Usage: #example

* identifier[idDecision].value = "1254/194704032"

* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[dateOuverture].valueDate = "2020-01-01"

* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[dateEcheance].valueDate = "2020-12-31"

* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[existencePAG].valueBoolean = false
