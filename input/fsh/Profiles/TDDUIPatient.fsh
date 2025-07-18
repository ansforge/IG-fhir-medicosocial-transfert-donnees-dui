Profile: TDDUIPatient
Parent: FRCorePatientProfile
Id: tddui-patient
Title: "Usager"
Description: "Profil de la ressource FrCorePatientProfile permettant de de représenter un usager lorsque l'INS-NIR n'est pas transmis."

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

* birthDate.extension contains
    TDDUIBirthOrder named tddui-birth-order 1..1

* birthDate.extension[tddui-birth-order] ^short = "Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période.  Il est obligatoire si le NIR n'est pas transmis."

* gender from fr-core-vs-patient-gender-INS (required)
* gender ^short = "male | female | unknown"

* name[officialName] 1..1

* name obeys prefix-restriction

Invariant: prefix-restriction
Description: "La civilité est limitée à Monsieur ou Madame."
Expression: "prefix.empty() or (prefix = 'Monsieur' or prefix = 'Madame')"
Severity: #error
