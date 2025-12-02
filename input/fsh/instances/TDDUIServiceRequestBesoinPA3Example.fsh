Instance: tddui-pp-pa-servicerequest-besoin-3-example
InstanceOf: TDDUIServiceRequestBesoin
Usage: #example
Description: "Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-BESO-1236"
* identifier.system = "https://identifiant-medicosocial-besoin.esante.gouv.fr"

* basedOn = Reference(tddui-pp-pa-careplan-example)

* status = #active

* intent = #plan

* code.text = "Besoin de maintien du lien social et d'activités récréatives."

* subject = Reference(tddui-pp-pa-patient-example-pp)