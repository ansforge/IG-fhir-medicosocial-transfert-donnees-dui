Instance: tddui-practitioner-role-example
InstanceOf: TDDUIPractitionerRole
Usage: #example
Description: "Exemple d'un professionnel de santé"

* code.coding.code = #330
* code.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge"
* code.coding.display = "Coordonnateur de parcours"

* code.extension[tddui-profession].valueCodeableConcept.coding.code = #314
* code.extension[tddui-profession].valueCodeableConcept.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge"
* code.extension[tddui-profession].valueCodeableConcept.coding.display = "Ambulancier"

* organization = Reference(tddui-organization-example)
* practitioner = Reference(tddui-practitioner-example)
