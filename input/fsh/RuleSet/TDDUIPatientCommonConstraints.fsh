
RuleSet: TDDUIPatientCommonConstraints

* extension contains
    TDDUIHouseholdSituation named TDDUIHouseholdSituation 0..1

* identifier.type from TDDUIPatientIdentifier (required)

* identifier contains
    InitialNumberMDPH 0..1 and 
    driverLicense 0..*

* identifier[PI] ..1
* identifier[PI] ^short = "Hospital assigned patient identifier | IPP; Dans le cadre de ce volet, représente l'Identifiant local de l’usager au sein de la structure."
* identifier[PI].value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS"
* identifier[PI].value ^example[0].valueString = "3480787529/194704032"
* identifier[PI].system = "https://identifiant-medicosocial-localusager.esante.gouv.fr"

* identifier[InitialNumberMDPH] ^short = "Numéro de l’individu attribué par la MDPH ayant créé le dossier Individu (= MDPH initiale)."
* identifier[InitialNumberMDPH].use = #usual
* identifier[InitialNumberMDPH].type = TDDUIIdentifier#PIN "Patient initial number"
* identifier[InitialNumberMDPH].system 1..
* identifier[InitialNumberMDPH].value 1..

* identifier[driverLicense] ^short = "Permis de conduire"
* identifier[driverLicense].type = http://terminology.hl7.org/CodeSystem/v2-0203#DL "Driver's license number"
* identifier[driverLicense].system 1..
* identifier[driverLicense].value 1..


* name[usualName] 0..1
* name only tddui-humanname

* extension[birthPlace].valueAddress.district from $JDV-J258-Departement
* communication.language from $JDV-J115-Langue-ENREG
