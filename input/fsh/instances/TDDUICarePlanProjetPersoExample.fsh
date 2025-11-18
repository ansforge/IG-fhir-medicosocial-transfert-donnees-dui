Instance: tddui-careplan-projet-perso-example
InstanceOf: TDDUICarePlanProjetPerso
Usage: #example
Description: "Exemple d'un projet personnalisé"

* identifier.value = "3480787529/147720425367411-PPER-12548"

* title = "Projet personnalisé de Mme Dupont"

* status = #active

* intent = #plan

* subject = Reference(tddui-patient-ins-example)

* supportingInfo[structure] = Reference(tddui-consent-accord-example)
* supportingInfo[structure].display = "Consentement structure"