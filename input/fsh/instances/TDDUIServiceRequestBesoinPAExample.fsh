Instance: tddui-servicerequest-besoin-pa-example
InstanceOf: TDDUIServiceRequestBesoin
Usage: #example
Description: "Exemple d'un besoin de l'usager dans le cadre du projet personnalisé PA." 

* identifier.value = "3480787529/123456789-PPBesoin-1234"

* basedOn = Reference(tddui-careplan-projet-perso-pa-example)

* status = #active

* intent = #plan

* code.text = "Besoin d'aide pour la mobilité et les déplacements.
Besoin en terme de nutrition et alimentation.
Besoin de maintien du lien social et d'activités récréatives."

* subject = Reference(tddui-patient-pa-example-pp)