Instance: tddui-basic-decision-example
InstanceOf: TDDUIBasicDecision
Title: "TDDUI Basic Decision Example"
Description: "Exemple de la ressource TDDUIBasicDroitDecision"
Usage: #example

* identifier[idDecision].use = #official
* identifier[idDecision].value = "1254"
* identifier[idDecision].system = "urn:oid:1.2.250.1.213.7.1" // OID MDPH de l'AIN
* identifier[idDecisionMAJ].value = "1255"
* identifier[idDecisionMAJ].system = "urn:oid:1.2.250.1.213.7.1" // OID MDPH de l'AIN

* subject = Reference(tddui-service-request-demande-orientation-example)

* extension[TDDUIDecision].extension[decision].extension[typeDecision].valueCodeableConcept = TRE-R327-TypeDecision#1

* extension[TDDUIDecision].extension[decision].extension[motivation].valueCodeableConcept = tre-r419-motivation#215

* extension[TDDUIDecision].extension[decision].extension[dateEffetCloture].valueDate = "2020-01-01"

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[categorieDroitPrestation].valueCodeableConcept = tre-r420-droit-prestation#8

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[typeDroitPrestation].valueCodeableConcept = tre-r420-droit-prestation#13.1

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[natureDroitPrestation].valueCodeableConcept = TRE-R327-TypeDecision#6

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateOuverture].valueDate = "2020-01-01"

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateEcheance].valueDate = "2020-12-31"

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[existencePAG].valueBoolean = false

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[formation].valueString = "Formation pour la prestation"

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil].valueCodeableConcept = TRE-R240-TemporaliteAccueil#01

//* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[precisionOrientation].valueCodeableConcept = tre-r426-orientation#1

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[structureAccueil].valueReference = Reference(tddui-organization-example)

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[qualificationOrientation].valueCodeableConcept = tre-r422-qualification-orientation#1

* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[creton].valueBoolean = true

* extension[TDDUIDecision].extension[decision].extension[motivationLocale].valueString = "Motivation locale pour la décision"