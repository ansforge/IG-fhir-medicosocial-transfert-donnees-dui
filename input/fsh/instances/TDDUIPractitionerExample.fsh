Instance: tddui-practitioner-example
InstanceOf: TDDUIPractitioner
Usage: #example
Description: "Exemple d'un professionnel de santé"

* identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* identifier.value = "10103441234"

* qualification[degree].code.coding[degree].code = #DE09
* qualification[degree].code.coding[degree].display = "DE Infirmier"

* qualification[exercicePro].code.coding[profession].code = #60
* qualification[exercicePro].code.coding[profession].display = "Infirmier"

* name.family = "Martin"
* name.given = "Claire"
* name.prefix = "MME"
