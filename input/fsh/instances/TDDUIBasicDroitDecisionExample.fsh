Instance: tddui-basic-decision-example
InstanceOf: TDDUIBasicDecision
Title: "TDDUI Basic Decision Example"
Description: "Exemple de la ressource TDDUIBasicDroitDecision"
Usage: #example

* identifier[idDecision].use = #official
* identifier[idDecision].value = "1254"
* identifier[idDecision].system = "urn:oid:1.2.250.1.213.7.1" // OID MDPH de l'AIN

* subject = Reference(tddui-service-request-demande-orientation-example)

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateOuverture].valueDate = "2020-01-01"

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateEcheance].valueDate = "2020-12-31"

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[existencePAG].valueBoolean = false

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[structureAccueil].valueReference = Reference(tddui-organization-example)
