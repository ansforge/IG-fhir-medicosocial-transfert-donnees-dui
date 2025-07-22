Profile: TDDUIPatientINS
Parent: FRCorePatientINSProfile
Id: tddui-patient-ins
Title: "TDDUI Patient INS"
Description: "Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis."

* meta.profile contains tddui-patient-canonical 0..1
* meta.profile[tddui-patient-canonical] = Canonical(tddui-patient)

* identifier contains 
    localIdentifier 0..1 and 
    initialNumber 0..1
    
* identifier[localIdentifier] ^short = "Identifiant local de l’usager au sein de la structure. Cet identifiant est obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature TRE_G08-TypeIdentifiantPersonne), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS) : 3+FINESS/identifiantLocalUsagerESSMS"
* identifier[localIdentifier].use = #usual
* identifier[localIdentifier].type = TDDUIIdentifier#PLI "Patient local identifier"
* identifier[localIdentifier].system 1..
* identifier[localIdentifier].value 1..

* identifier[initialNumber] ^short = "Numéro de l’individu attribué par la MDPH ayant créé le dossier Individu (= MDPH initiale)."
* identifier[initialNumber].use = #usual
* identifier[initialNumber].type = TDDUIIdentifier#PIN "Patient initial number"
* identifier[initialNumber].system 1..
* identifier[initialNumber].value 1..

* identifier[INS-NIR] 0..1
* identifier[INS-NIR-TEST] 0..1
* identifier[INS-NIR-DEMO] 0..1
* identifier[INS-NIA] 0..1

* name[usualName] 0..1
