
RuleSet: TDDUIPatientCommonConstraints

* identifier contains
    InitialNumberMDPH 0..1
  
* identifier[PI] ..1
* identifier[PI] ^short = "Hospital assigned patient identifier | IPP; Dans le cadre de ce volet, représente l'Identifiant local de l’usager au sein de la structure."
* identifier[PI].value ^example[0].label = "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS."
* identifier[PI].value ^example[0].valueIdentifier.value = "3480787529/194704032"
* identifier[PI].system = "https://identifiant-medicosocial-localusager.cnsa.fr"
* identifier[InitialNumberMDPH] ^short = "Numéro de l’individu attribué par la MDPH ayant créé le dossier Individu (= MDPH initiale)."
* identifier[InitialNumberMDPH].use = #usual
* identifier[InitialNumberMDPH].type = TDDUIIdentifier#PIN "Patient initial number"
* identifier[InitialNumberMDPH].system 1..
* identifier[InitialNumberMDPH].value 1..

* name[usualName] 0..1
* name only tddui-humanname
