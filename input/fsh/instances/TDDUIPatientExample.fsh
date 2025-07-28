Instance: tddui-patient-example
InstanceOf: TDDUIPatient
Usage: #example
Description: "Exemple de la ressource TDDUIPatient"

* extension[birthPlace].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM#63220
* extension[birthPlace].valueAddress.city = "Mazoires"
* extension[birthPlace].valueAddress.country = "FRA"

* name[usualName].use = #usual
* name[usualName].family = "DUPONT"

* name[officialName].use = #official
* name[officialName].family = "DUPONT"
* name[officialName].given[0] = "Jean"
* name[officialName].extension[birth-list-given-name].valueString = "Jean Stéphane Patrick"

* gender = #male
* birthDate = "1947-04-03"
* birthDate.extension[tddui-birth-order].valuePositiveInt = 2
* address.use = #home
* address.text = "12 rue des Lilas, 76748 Vittefleur, France"
* address.line = "12 rue des Lilas"
* address.city = "Vittefleur"
* address.postalCode = "76748"
