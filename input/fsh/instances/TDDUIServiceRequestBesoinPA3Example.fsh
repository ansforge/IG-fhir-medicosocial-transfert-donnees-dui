Instance: tddui-servicerequest-besoin-3-pa-example
InstanceOf: TDDUIServiceRequestBesoin
Usage: #example
Description: "Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-BESO-1236"
* identifier.system = "https://identifiant-medicosocial-besoin.esante.gouv.fr"

* basedOn = Reference(tddui-careplan-projet-personnalise-pa-example)

* status = #active

* intent = #plan

* code.text = "Besoin de maintien du lien social et d'activités récréatives."

* subject = Reference(tddui-patient-pa-example-pp)