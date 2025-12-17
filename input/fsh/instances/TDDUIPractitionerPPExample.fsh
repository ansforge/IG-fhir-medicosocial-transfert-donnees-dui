Instance: tddui-pp-pa-practitioner-ide-example
InstanceOf: TDDUIPractitioner
Usage: #example
Description: "Exemple d'un IDE"

* identifier[idNatPs].value = "10101234567"

* qualification[degree].code.coding[degree].code = #DE09
* qualification[degree].code.coding[degree].display = "DE Infirmier"
* qualification[degree].code.coding[degree].system = "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais"

* name.family = "Bernard"
* name.given = "Élodie"
* name.prefix = "MME"
