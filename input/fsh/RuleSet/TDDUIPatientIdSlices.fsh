
RuleSet: TDDUIPatientIdSlices


* identifier contains
    InitialNumbeMDPH 0..1
 
* identifier[PI] ^short = "Hospital assigned patient identifier | IPP; Dans le cadre de ce volet, représente l'Identifiant local de l’usager au sein de la structure. Cet identifiant est obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature TRE_G08-TypeIdentifiantPersonne), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS) : 3+FINESS/identifiantLocalUsagerESSMS"
* identifier[InitialNumbeMDPH] ^short = "Numéro de l’individu attribué par la MDPH ayant créé le dossier Individu (= MDPH initiale)."
* identifier[InitialNumbeMDPH].use = #usual
* identifier[InitialNumbeMDPH].type = TDDUIIdentifier#PIN "Patient initial number"
* identifier[InitialNumbeMDPH].system 1..
* identifier[InitialNumbeMDPH].value 1..
