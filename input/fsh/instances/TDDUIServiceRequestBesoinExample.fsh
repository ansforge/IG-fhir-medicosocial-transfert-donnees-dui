Instance: tddui-servicerequest-besoin-example
InstanceOf: TDDUIServiceRequestBesoin
Usage: #example
Description: "Exemple d'un besoin de l'usager." 

* identifier.value = "3480787529/147720425367411-PPBesoin-12548"

* basedOn = Reference(tddui-careplan-projet-perso-example)

* status = #active

* intent = #plan

* code.text = "Besoin d'accompagnement dans les activités de la vie quotidienne."

* subject = Reference(tddui-patient-ins-example)