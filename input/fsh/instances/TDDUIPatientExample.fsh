Instance: tddui-patient-example
InstanceOf: TDDUIPatient
Title: "TDDUI Patient Example"
Description: "Exemple de la ressource TDDUIPatient"
Usage: #example

* extension[birthPlace].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding = https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM#63220
* extension[birthPlace].valueAddress.city = "Mazoires"
* extension[birthPlace].valueAddress.country = "FRA"

* extension[TDDUIHouseholdSituation].extension[familySituation].valueCodeableConcept = https://mos.esante.gouv.fr/NOS/TRE_R317-SituationVieQuotidienne/FHIR/TRE-R317-SituationVieQuotidienne#01 "Seul"

* identifier[PI].system = "https://identifiant-medicosocial-localusager.esante.gouv.fr"
* identifier[PI].value = "3480787529/194704032"

* identifier[driverLicense].value = "822146819"
* identifier[driverLicense].system = "https://ants.gouv.fr/"
* identifier[driverLicense].period.start = "1980-01-01"

* name[usualName].use = #usual
* name[usualName].family = "DUPONT"

* name[officialName].use = #official
* name[officialName].family = "DUPONT"
* name[officialName].given[0] = "Jean"
* name[officialName].extension[birth-list-given-name].valueString = "Jean Stéphane Patrick"

* gender = #male
* birthDate.extension[tddui-birth-order].valuePositiveInt = 2

* address.use = #home
* address.line[0] = "12 rue des Lilas"
* address.line[0].extension[houseNumber].valueString = "12"
* address.line[0].extension[streetNameBase].valueString = "rue des Lilas"
* address.postalCode = "76748"
* address.country = "99100"