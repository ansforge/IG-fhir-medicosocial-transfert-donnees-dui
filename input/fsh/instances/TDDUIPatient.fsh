/*Alias: $fr-core-cs-v2-0445 = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445
Alias: $TRE-R13-Commune = https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune
Alias: $fr-core-cs-v2-0203 = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203

Instance: ExampleFRCorePatient001
InstanceOf: TDDUIPatient
Usage: #example
* extension[0].extension.url = "identityStatus"
* extension[=].extension.valueCoding = $fr-core-cs-v2-0445#VALI
* extension[=].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.extension.url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
* extension[=].valueAddress.extension.valueCoding = $TRE-R13-Commune#01006
* extension[=].valueAddress.city = "Ambléon"
* identifier.use = #official
* identifier.type = $fr-core-cs-v2-0203#INS-NIR
* identifier.system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier.value = "123456789012244"
* active = true
* name[0].extension.url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name"
* name[=].extension.valueString = "Pierre Yves"
* name[=].use = #official
* name[=].family = "Durand"
* name[=].given = "Pierre"
* name[=].prefix = "Madames"
* name[+].use = #usual
* name[=].family = "Durand2"
* name[=].given = "Pierre2"
* name[=].prefix = ""
* telecom[0].system = #phone
* telecom[=].value = "01 23 24 67 89"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "01 99 88 77 66"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "06 80 55 34 33"
* telecom[=].use = #mobile
* telecom[=].rank = 2
* gender = #male
* birthDate = "1974-12-25"
* deceasedBoolean = false
* address.use = #home
* address.type = #both
* address.text = "367 rue Troussier, 45100 Orléans, France"
* address.line = "367 rue Troussier"
* address.city = "Orléans"
* address.postalCode = "45100"
* address.period.start = "2018-06-01"
*/