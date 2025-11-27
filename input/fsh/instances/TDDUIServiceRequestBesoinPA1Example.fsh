Instance: tddui-servicerequest-besoin-1-pa-example
InstanceOf: TDDUIServiceRequestBesoin
Usage: #example
Description: "Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-BESO-1234"
* identifier.system = "https://identifiant-medicosocial-besoin.esante.gouv.fr"

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* status = #active

* intent = #plan

* code.text = "Besoin d'aide pour la mobilité et les déplacements."

* subject = Reference(tddui-patient-pa-example-pp)