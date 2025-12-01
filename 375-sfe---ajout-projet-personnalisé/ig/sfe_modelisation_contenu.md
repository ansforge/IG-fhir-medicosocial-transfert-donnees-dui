# Modélisation du contenu du DUI - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Volume 1 - Etude fonctionnelle**](sfe.md)
* **Modélisation du contenu du DUI**

## Modélisation du contenu du DUI

### Représentation globale du DUI

### Données administratives

#### Identification et coordonnées

##### Classe Usager

Terme générique “usager” permet de désigner une personne qui bénéficie d’une prestation ou d’un service lié à la prise en charge de son handicap ou de sa perte d’autonomie, que ce soit à domicile ou en établissement. L’usager est donc la personne qui reçoit une aide ou un accompagnement dans le cadre d’une politique publique visant à soutenir les personnes âgées en perte d’autonomie ou les personnes en situation de handicap. Le terme inclut aussi bien les bénéficiaires directs de ces prestations que leurs familles, lorsqu’elles sont impliquées dans l’organisation de la prise en charge.

Synonymes : résident, résident AN, personne accompagnée, personne accueillie, bénéficiaire, patient, personne, personne prise en charge, individu, client

* Nom: matriculeINS : [0..1] Identifiant
  * Description: Le matricule INS est le numéro d’inscription au répertoire national d’identification des personnes physiques (NIR) ou le numéro identifiant d’attente (NIA) pour les personnes en instance d’attribution d’un NIR (Art. R. 1111-8-1.-I du CSP).Si le matricule INS de l'usager existe, il doit être véhiculé en priorité. Dans le cas où le matricule INS est renseigné, les traits INS (traits d'identité et traits complémentaires issus du RNIV) doivent être transmis conformément à l'[annexe prise en charge de l'INS dans les volets du ci-sis](https://esante.gouv.fr/annexe-prise-en-charge-de-lins-dans-les-volets-du-ci-sis).
* Nom: numSecuriteSociale : [0..1] Identifiant
  * Description: Numéro de sécurité sociale de l'usager NIR (NSS-NIR) ou NIA (NSS-NIA) si l'usager est en attente de l'attribution d’un NIR.Le numéro de sécurité sociale est utilisé pour la facturation et le remboursement des prestations de santé de la personne prise en charge.
* Nom: identifiantLocalUsagerESSMS : [0..1] Identifiant
  * Description: Identifiant local de l’usager au sein de la structure.Cet identifiant est obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS) : 3+FINESS/identifiantLocalUsagerESSMS
* Nom: numeroIndividuInitial : [0..1] Identifiant
  * Description: Numéro de l’individu attribué par la MDPH ayant créé le dossier Individu (= MDPH initiale).Synonyme = identifiantMDPH
* Nom: nomNaissance : [1..1] Texte
  * Description: Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.
* Nom: nomUsage : [0..1] Texte
  * Description: Un nom d'usage de la personne.Rappel : Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.Il est néanmoins possible d'utiliser, dans la vie quotidienne, un autre nom (par exemple le nom marital) appelé nom d'usage.Ce nom d'usage ne remplace en aucun cas le nom de famille qui reste le seul nom mentionné sur les actes d'état civil (acte de naissance ou de mariage, livret de famille, etc.).S’il s’agit de l’identité qualifiée INS, il est obligatoire lorsqu’il est différent du nom de naissance. C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).
* Nom: prenom : [0..1] Texte
  * Description: Liste des prénoms de naissance de l'usager.La liste des prénoms de naissance fait partie des traits INS. Elle est obligatoire si l’identité INS est qualifiée.Ils sont préconisés si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.
* Nom: premierPrenomActeNaissance : [0..1] Texte
  * Description: Premier prénom dans la liste des prénoms de naissance de l'usagerCet élément est obligatoire s’il s’agit de l’identité qualifiée INS. C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.
* Nom: prenomUtilise : [0..1] Texte
  * Description: Prénom réellement porté par la personne physique dans la vie courante. Il peut s'agir du prénom usuel, du surnom ou du pseudonyme de la personne physique.S’il s’agit de l’identité qualifiée INS, il est obligatoire lorsqu’il est différent du premier prénom de naissance. C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).
* Nom: sexe : [0..1] Code
  * Description: Sexe de la personne physique.Jeu(x) de valeur(s) associé(s) :[JDV-J143-AdministrativeGender-CISIS](https://mos.esante.gouv.fr/NOS/JDV_J143-AdministrativeGender-CISIS/FHIR/JDV-J143-AdministrativeGender-CISIS)Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.
* Nom: civilite : [0..1] Code
  * Description: Civilité de l’usager.Jeu(x) de valeur(s) associé(s) :[JDV_J245-Civilite-CISIS](https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS)
* Nom: dateNaissance : [0..1] Date
  * Description: Date de naissance de l’usager. Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.
* Nom: ordreNaissanceEtatCivil : [0..1] Numerique
  * Description: Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les[3 derniers chiffres du NIR de l'usager avant](https://www.ameli.fr/llle-et-vilaine/assure/droits-demarches/principes/numero-securite-sociale)la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période.Il est obligatoire si le NIR n'est pas transmis.
* Nom: CommuneNaissance : [0..1] Code
  * Description: Commune de naissance de l’usager. Code officiel géographique (COG) de la commune.Jeu(x) de valeur(s) associé(s) :[JDV_J120-CommuneHistorisee](https://mos.esante.gouv.fr/NOS/JDV_J120-CommuneHistorisee/FHIR/JDV-J120-CommuneHistorisee)Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.
* Nom: departementNaissance : [0..1] Code
  * Description: Département de naissance de la personne. Code officiel géographique (COG) du département.Jeu(x) de valeur(s) associé(s) :[JDV-J258-Departement](https://mos.esante.gouv.fr/NOS/JDV_J258-Departement/FHIR/JDV-J258-Departement)
* Nom: paysNaissance : [0..1] Code
  * Description: Pays de naissance de la personne.Nomenclature(s) associée(s) : ISO 3166Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.
* Nom: situationFamiliale : [0..1] Code
  * Description: Situation familiale de l’usager.Nomenclature(s) associée(s) : à définir
* Nom: compositionFoyer : [0..1] Code
  * Description: Désigne avec qui vit l’usager dans son logement.Nomenclature(s) associée(s) : à définir
* Nom: paysNationalite : [0..*] Code
  * Description: Pays de nationalité actuelle ou rattachement de la nationalité à un espace de pays conventionné.Nomenclature(s) associée(s) :[TRE_R89-RegroupementPays](https://mos.esante.gouv.fr/NOS/TRE_R89-RegroupementPays/FHIR/TRE-R89-RegroupementPays)
* Nom: langueParlee : [0..*] Code
  * Description: Langue parlée par l’usager.Jeu(x) de valeur(s) associé(s) :[JDV_J115-Langue-ENREG](https://mos.esante.gouv.fr/NOS/JDV_J115-Langue-ENREG/FHIR/JDV-J115-Langue-ENREG)
* Nom: dateDeces : [0..1] DateHeure
  * Description: Date et heure de décès de l’usager.
* Nom: causeMortalite : [0..*] Code
  * Description: Une ou plusieurs causes ayant entraîné la mort de l’usager.Nomenclature(s) associée(s) :[Terminologie CIM-10](https://smt.esante.gouv.fr/terminologie-cim-10)
* Nom: communeDeces : [0..1] Code
  * Description: Commune de décès de l’usager. Code officiel géographique (COG) de la commune.Jeu(x) de valeur(s) associé(s) :[JDV-J120-CommuneHistorisee](https://mos.esante.gouv.fr/NOS/JDV_J120-CommuneHistorisee/FHIR/JDV-J120-CommuneHistorisee)
* Nom: departementDeces : [0..1] Code
  * Description: Département de décès de l’usager. Code officiel géographique (COG) du département.Jeu(x) de valeur(s) associé(s) :[JDV-J258-Departement](https://mos.esante.gouv.fr/NOS/JDV_J258-Departement/FHIR/JDV-J258-Departement)
* Nom: paysDeces : [0..1] Code
  * Description: Pays de décès de l’usager.Nomenclature(s) associée(s) : Norme ISO 3166
* Nom: photo : [0..*] ObjetBinaire
  * Description: Photo de l’usager.
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire relatif à l’identité de l’usager.

##### Classe Adresse

Adresse géopostale. Un emplacement auquel l’usager peut être trouvée, d'après la norme AFNOR NF Z10-011.

* Nom: idAdresse : [0..1] Identifiant
  * Description: Identifiant fonctionnel de l’adresse.
* Nom: type : [0..1] Code
  * Description: Indique le ou les types d'adresse tel que "Adresse du domicile", "Adresse du domicile de secours", etc.
* Nom: numeroVoie : [0..1] Texte
  * Description: Un numéro dans la voie ; dans les cas de numérotation sans extension, il est composé de 0 à 4 caractères numériques au maximum.
* Nom: libelleVoie : [0..1] Texte
  * Description: Appellation qui est donnée à la voie par les municipalités. Ce libellé figure in extenso ou en abrégé sur les plaques aux différents angles de chaque rue.
* Nom: complementPointGeographique : [0..1] Texte
  * Description: Un complément de l'adresse au point géographique constitué des éléments suivants :* Bâtiment : les bâtiments sont désignés par leur type (bâtiment, immeuble, tour,...), éventuellement des mentions d'orientation (est, ouest,...), une dénomination littérale ou une numérotation ; exemple: Tour DELTA
* Accès au bâtiment : l'accès au bâtiment est identifié par un numéro, une lettre, une combinaison alphanumérique. Ces éléments identifient une entrée, porte, etc. ; exemple: Entrée A
* Ensemble immobilier : ensemble d'habitations reliées à la voie publique par un ou plusieurs points d'accès (résidence, zone industrielle,...) ; exemple : Résidence des Fleurs.

* Nom: mentionDistribution : [0..1] Texte
  * Description: Mentions particulières de distribution. Il s'agit de mentions identifiant le service proposé par La Poste au destinataire. Ces mentions sont formées d'un libellé et d'un numéro de séparation (exemple : BP 42534).
* Nom: codePostal : [0..1] Code
  * Description: Code Postal : Code Postal ou code postal spécifique CEDEX* Code postal : Un code à 5 chiffres servant à l'acheminement et/ou à la distribution des envois. Il identifie un bureau distributeur dans la chaîne de traitement du courrier.
* Code CEDEX (Courrier d'Entreprise à Distribution Exceptionnelle ); le CEDEX est une modalité d'acheminement du courrier associée à des services particuliers de distribution offerts aux entreprises caractérisées par un adressage spécifique; le code postal spécifique CEDEX est un code attribué aux organismes, entreprises, services publics recevant un fort trafic. Il identifie un client ou un ensemble de clients. Il est positionné aux lieu et place du code postal général dans le cas des adresses CEDEX. Ainsi, un code peut être associé à un client (code individuel) ou partagé entre plusieurs clients (code collectif).

* Nom: localite : [0..1] Texte
  * Description: Localité ou Libellé du bureau distributeur CEDEX* Localité: Zone d'habitation, en général la commune d'implantation du destinataire. Elle est identifiée par son libellé INSEE sauf dans quelques cas où le libellé postal diffère du libellé INSEE, généralement pour lever des ambiguïtés.
* Libellé du bureau distributeur CEDEX.
 Libellé du bureau distributeur c'est-à-dire (dans la très grande majorité des cas) le libellé de la commune siège du bureau CEDEX ; la mention CEDEX doit obligatoirement suivre le libellé du bureau CEDEX ; dans le cas où il existe plusieurs bureaux CEDEX pour une même entité ou commune, chaque bureau CEDEX sera identifié par un numéro (exemple : ROUBAIX CEDEX 2) ; ce numéro correspond au numéro d'arrondissement dans le cas des villes à arrondissements, à un numéro d'ordre dans les autres cas.

* Nom: pays : [0..1] Code
  * Description: Nom du pays pour les adresses internationales.
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire relatif à l’adresse.

##### Classe Telecommunication

Adresse de télécommunication à laquelle l’usager peut être contactée (téléphone, fax, e-mail, URL, etc.).

* Nom: canal : [0..1] Code
  * Description: Code spécifiant le canal ou la manière dont s'établit la communication (téléphone, e-mail, URL, etc.).Nomenclature(s) associée(s) :[JDV-J225-CanalCommunication-ROR](https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR)
* Nom: adresseTelecom : [0..1] Texte
  * Description: Valeur de l'adresse de télécommunication dans le format induit par le canal de communication, par exemple un numéro de téléphone, une adresse de courrier électronique, une adresse URL, etc.
* Nom: utilisation : [0..1] Texte
  * Description: Précise l'utilisation du canal de communication (par exemple à des fins professionnelles, privées, etc.).

##### Classe Courrier

Adresse de courrier de l’usager.

* Nom: typeCourrier : [0..1] Code
  * Description: Type de courrier.Nomenclature(s) associée(s) : à définir
* Nom: idAdresse : [0..1] Identifiant
  * Description: Adresse à utiliser pour l’envoi du type de courrier.
* Nom: libelleDestinataire : [0..1] Texte
  * Description: Libellé du destinataire du courrier.Par exemple nom et prénom dans le cas d’une personne physique.
* Nom: organismeDomiciliation : [0..1] Texte
  * Description: Nom et/ou service de l’organisme de domiciliation.

#### Autorisations administratives

##### Classe AutorisationAdministrative

Autorisation administrative de l’usager.
 Droit temporel et exceptionnel conféré à une personne ou une organisation.

* Nom: type : [0..1] Code
  * Description: Type d’autorisation administrative.Nomenclature(s) associée(s) : à définir
* Nom: auteur : [0..*] PersonnePhysique
  * Description: Signataire de l’autorisation administrative.
* Nom: dateSignature : date [0..1]
  * Description: Date de signature de l’autorisation administrative.
* Nom: dateDebut : [0..1] Date
  * Description: Date de début de l’autorisation administrative.
* Nom: dateFin : [0..1] Date
  * Description: Date de fin de l’autorisation administrative.
* Nom: pieceJointe : [0..*] ObjetBinaire
  * Description: Pièce jointe relative à l’autorisation administrative.
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire relatif à l’autorisation administrative.

#### Droits sociaux et de santé

##### Classe AssuranceMaladieObligatoire

Assurance maladie obligatoire de l’usager.

* Nom: ouvrantDroit : [0..1] Identifiant
  * Description: Identifiant (NIR) de l’ouvrant droit (assuré).
* Nom: ayantsDroit : [0..*] Identifiant
  * Description: Identifiants (NIR) des bénéficiaires du contrat d'assurance maladie obligatoire.
* Nom: nomOrganisme : [0..1] Texte
  * Description: Nom de l’organisme d’assurance maladie obligatoire.
* Nom: numeroCodeOrganisme : [0..1] Identifiant
  * Description: Numéro de code de l’organisme d’assurance maladie obligatoire.
* Nom: adresseOrganisme : [0..1] Adresse
  * Description: Adresse de l’organisme d’assurance maladie obligatoire.
* Nom: codeRisque : [0..1] Code
  * Description: Code risque.
* Nom: dateDebutDroit : [0..1] Date
  * Description: Date de début des droits à l’assurance maladie obligatoire.
* Nom: dateFinDroit : [0..1] Date
  * Description: Date de fin des droits à l’assurance maladie obligatoire.
* Nom: ticketModerateur : [0..1] Mesure
  * Description: Partie des dépenses de santé qui reste à la charge de l’usager une fois que l'Assurance Maladie a remboursé sa part (pourcentage).
* Nom: dateFinCentPourCent : [0..1] Date
  * Description: Date de fin de la prise en charge 100%.
* Nom: droitPUMa : [0 ..1] Indicateur
  * Description: Droit à la Protection Universelle Maladie (PUMa).0 = non ; 1 = oui.
* Nom: dateFinDroitPUMa : [0..1] Date
  * Description: Date de fin des droits à la Protection Universelle Maladie (PUMa).

##### Classe AssuranceMaladieComplementaire

Assurance maladie complémentaire de l’usager.

* Nom: numeroContrat : [0..1] Identifiant
  * Description: Numéro de contrat.
* Nom: ouvrantDroit : [0..1] identifiant
  * Description: Identifiant (NIR) de l’ouvrant droit (bénéficiaire) si ce n’est pas l’usager.
* Nom: ayantsDroit : [0..*] Identifiant
  * Description: Identifiants (NIR) des bénéficiaires du contrat d'assurance maladie complémentaire.
* Nom: nomOrganisme : [0..1] Texte
  * Description: Nom de l’organisme d’assurance maladie complémentaire.
* Nom: libelleOrganisme : [0..1] Texte
  * Description: Libellé de l’organisme d’assurance maladie complémentaire.
* Nom: adresseOrganisme : [0..1] Adresse
  * Description: Adresse de l’organisme d’assurance maladie complémentaire.
* Nom: dateDebutDroit : [0..1] Date
  * Description: Date de début des droits à l’assurance maladie complémentaire.
* Nom: dateFinDroit : [0..1] Date
  * Description: Date de fin des droits à l’assurance maladie complémentaire.
* Nom: aideComplementaireSante : [0..1] Indicateur
  * Description: Alerte « aide à la complémentaire santé ».0 = non ; 1 = oui.
* Nom: typeFinDroit : [0..1] Code
  * Description: Raison de la fin des droits à l’assurance maladie complémentaire.Nomenclature(s) associée(s) : à définir

##### Classe Decision

La décision est une réponse à une demande de l'individu ou de son représentant légal. Elle est prise par la CDAPH.

* Nom: idDecision : [1..1] Identifiant
  * Description: Numéro de la décision prise par la MDPH.
* Nom: numeroEnregistrement : [0..1] Identifiant
  * Description: Numéro d’enregistrement au conseil général si différent du numéro d’identification MDPH.
* Nom: idDecisionMAJ : [0..*] Identifiant
  * Description: Identifiants de la ou des décisions révisées ou renouvelées à l'origine du droit ou identifiant de la décision clôturée (concerne une seule décision) en cas de clôture de droit.
* Nom: idNat_Decision : [0..1] Identifiant
  * Description: Identifiant unique de la décision généré par ViaTrajectoire. Cet identifiant unique est créé par ViaTrajectoire lorsque la décision est enregistrée dans le SI-SdO.
* Nom: dateDecision : [0..1] Date
  * Description: Date à laquelle se réunit la CDAPH pour prendre la décision.
* Nom: typeDecision : [0..1] Code
  * Description: Type de décision.Nomenclature(s) associée(s) : à définir
* Nom: motivation : [0..*] Code
  * Description: Considération(s) de droit ou de fait qui constituent le fondement de la décision.Nomenclature(s) associée(s) : à définir
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire relatif à la décision.

##### Classe DroitPrestation

Ensemble des droits et prestations prévus par le Code de l'Action Sociale et des Familles, le Code de l'Education, le Code de la Sécurité Sociale et le Code de la Route auxquels la décision de la CDAPH donne accès.

* Nom: idDroitPrestation : [1..1] Identifiant
  * Description: Identifiant du droit ou de la prestation.
* Nom: contactOrganisme : [0..1] ContactPersonneMorale
  * Description: Contact de l’organisme responsable du droit ou de la prestation.
* Nom: numeroAllocataire : [0..1] Identifiant
  * Description: Numéro d’allocataire pour le droit ou la prestation.
* Nom: typeDroitPrestation : [0..1] Code
  * Description: Type de droit et prestation caractérisant la décision d'orientation.Nomenclature(s) associée(s) : à définir
* Nom: natureDroit : [0..1] Code
  * Description: Nature du droit s’appliquant à tous les droits ou prestations ouverts par la CDAPH. Elle permet de gérer, le cas échéant, le lien entre la date d’ouverture du droit et la date de fin d’un droit précédent. Elle est déterminée par l’équipe pluridisciplinaire ou par la CDAPH.Nomenclature(s) associée(s) : à définir
* Nom: dateOuverture : [0..1] Date
  * Description: La date d'ouverture de droit est la date à laquelle le droit devient effectif.Sauf disposition spécifique, la date d’ouverture des droits est la date de la décision de la CDAPH sur le fondement du principe de non-rétroactivité des décisions.
* Nom: dateEcheance : [0..1] Date
  * Description: La date d'échéance de droit est la date à laquelle le droit ou la prestation ouvert prend fin. L'équipe pluridisciplinaire peut moduler les dates selon les besoins de la personne, tout en restant dans le minimum et dans le maximum prévu par la loi pour chacune des prestations.
* Nom: existencePAG : [0..1] Indicateur
  * Description: Indicateur de l'existence d'un Plan d’Accompagnement Global (PAG).1 = si la décision est associée à un PAG au statut "élaboré" ou "validé" ;0 = pour tous les autres cas (la décision n'est pas associée à un PAG ou est associée à un PAG ayant un statut différent de "élaboré" ou "validé").
* Nom: creton : [0..1] Indicateur
  * Description: Amendement Creton. Il s’agit d’un dispositif législatif permettant le maintien temporaire de jeunes adultes de plus de 20 ans en établissement pour enfants dans l’attente d’une place dans un établissement pour adultes.Obligatoire pour les décisions orientations ESSMS enfant, non prévu pour les autres orientations.0 = l'usager ne bénéficie pas de l'amendement Creton ;1 = l'usager bénéficie de l'amendement Creton.
* Nom: taux : [0..1] Mesure
  * Description: Taux dans le cas d’une aide sociale.
* Nom: typeCompensation : [0..1] Code
  * Description: Type de compensation dans le cas d’une aide sociale.Nomenclature(s) associée(s) : à définir
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire relatif au droit ou à la prestation.

##### Classe DetailPrestation

Détails de la prestation.

* Nom: temporaliteAccueil : [0..1] Code
  * Description: Fréquence d'accueil lors d'une prise en charge en ESSMS.Nomenclature(s) associée(s) :[JDV_J30-TemporaliteAccueil-ROR](https://mos.esante.gouv.fr/NOS/JDV_J30-TemporaliteAccueil-ROR/FHIR/JDV-J30-TemporaliteAccueil-ROR)
* Nom: precisionOrientation : [0..1] Code
  * Description: Précision de l'orientation à renseigner en fonction du type de droit.Nomenclature(s) associée(s) : à définir
* Nom: frequence : [0..1] Mesure
  * Description: Fréquence de versement dans le cas d’une aide sociale.
* Nom: qualification : [0..1] Code
  * Description: Il existe deux types d’orientation :* Orientation cible (appelée aussi orientation hors contrainte de l’offre, théorique ou idéale) : qualification d'une décision basée uniquement sur les attentes et les besoins évalués de la personne et considérée par l'équipe pluridisciplinaire ou la CDAPH comme la réponse la plus adaptée à ces attentes et besoins sans prendre en compte la réalité de l'offre disponible.
*  Orientation alternative (appelée aussi orientation par défaut) : qualification d'une décision, partiellement adaptée au regard des attentes et des besoins évalués de la personne pour prendre en compte la réalité de l'offre disponible, afin d'augmenter la possibilité de réalisation effective de cette orientation.
 Nomenclature(s) associée(s) : à définir

* Nom: montantAttribue : [0..1] Montant
  * Description: Montant attribué dans le cas d’une aide sociale.

##### Classe PriseCharge

Description des modalités d'accueil.

* Nom: modePriseCharge : [0..1] Code
  * Description: Mode de prise en charge.Nomenclature(s) associée(s) : à définir

##### Classe Quantification

Quantification de la prise en charge.

* Nom: quantificationNombre : [0..1] Numerique
  * Description: Valeur de la quantification.
* Nom: quantificationUnite : [0..1] Code
  * Description: Unité de la quantification (journée ou demi-journée).Nomenclature(s) associée(s) : à définir
* Nom: quantificationPeriodicite : [0..1] Code
  * Description: Périodicité de la quantification (quotidienne, hebdomadaire, mensuelle, annuelle).Nomenclature(s) associée(s) : à définir

#### Environnement et ressources

##### Classe ContactPersonnePhysique

Personne physique qui agit comme point de contact auprès d'une autre personne ou d'un autre service.

* Nom: identifiantContactPP : [0..1] Identifiant
  * Description: Identifiant du contact
* Nom: nom : [0..1] Texte
  * Description: Nom de la personne contact.
* Nom: prenom : [0..1] Texte
  * Description: Prénom de la personne contact.
* Nom: civilite : [0..1] Code
  * Description: Civilité du contact.jeu(x) de valeur(s) associé(s) :[JDV_J245-Civilite-CISIS](https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS)
* Nom: paysNationalite : [0..*] Code
  * Description: Pays de nationalité de la personne contact, actuelle ou rattachement de la nationalité à un espace de pays conventionnéNomenclature(s) associée(s) : Norme ISO 3166
* Nom: profession : [0..1] Texte
  * Description: Profession de la personne contact.
* Nom: situationFamiliale : [0..1] Code
  * Description: Situation familiale de la personne contact (célibataire, divorcée, etc.).Nomenclature(s) associée(s) : à définir
* Nom: dateNaissance : [0..1] Date
  * Description: Date de naissance de la personne contact.
* Nom: telecommunication : [0..*] Telecommunication
  * Description: Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.).
* Nom: adresse : [0..1] Adresse
  * Description: Adresse géopostale du point de contact.
* Nom: role : [0..1] Code
  * Description: Rôle de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce rôle indique si le point de contact est la personne à prévenir en cas d'urgence, la personne de confiance, etc.Nomenclature(s) associée(s) :[TRE_R260-HL7RoleClass](https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass)
* Nom: relation : [0..1] Code
  * Description: Lien de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce lien indique si le point de contact est son enfant, son frère, etc.Nomenclature(s) associée(s) :[TRE_R216-HL7RoleCode](https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode)[TRE_R217-ProtectionJuridique](https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique)
* Nom: fonction : [0..1] Code
  * Description: Un titre, une position ou une fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.).[TRE_R251-FonctionContact](https://mos.esante.gouv.fr/NOS/TRE_R251-FonctionContact/FHIR/TRE-R251-FonctionContact)
* Nom: ordreAppel : [0..1] Numérique
  * Description: Ordre de priorité d’appel du contact (1 = priorité maximale).
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire relatif au contact.

##### Classe ContactPersonneMorale

Personne morale qui agit comme point de contact auprès d'une autre personne ou d'un autre service.

* Nom: identifiantContactPP : [0..1] Identifiant
  * Description: Identifiant du contact
* Nom: libelle : [0..1] Texte
  * Description: Libellé du contact.
* Nom: raisonSociale : [0..1] Texte
  * Description: Raison sociale du contact.
* Nom: typeOrgansime : [0..1] Code
  * Description: Type d’organisme du contact.
* Nom: telecommunication : [0..*] Telecommunication
  * Description: Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.).
* Nom: adresse : [0..1] Adresse
  * Description: Adresse géopostale du point de contact.
* Nom: role : [0..1] Code
  * Description: Rôle de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce rôle indique si le point de contact est la personne à prévenir en cas d'urgence, la personne de confiance, etc.Nomenclature(s) associée(s) :[TRE_R260-HL7RoleClass](https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass)
* Nom: ordreAppel : [0..1] Numérique
  * Description: Ordre de priorité d’appel du contact (1 = priorité maximale).
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire relatif au contact.

##### Classe Ressource

Ressource perçue par l’usager.

* Nom: type : [0..*] Code
  * Description: Type de ressource.
* Nom: contactOrgansime : [0..1] ContactPersonneMorale
  * Description: Contact de l’organisme responsable de la ressource.
* Nom: montant : [0..1] Montant
  * Description: Montant de la ressource.
* Nom: frequence : [0..1] Mesure
  * Description: Fréquence de la ressource.
* Nom: dateDebut : [0..1] Date
  * Description: Date de début de la ressource.
* Nom: dateFin : [0..1] Date
  * Description: Date de fin de la ressource.
* Nom: pieceJointe : [0..*] ObjetBinaire
  * Description: Pièce jointe relative à la ressource.
* Nom: idDroitPrestation : [0..1] Identifiant
  * Description: Identifiant du droit ou de la prestation liée à la ressource.

##### Classe CompteBancaire

* Nom: adresseBanque : [0..1] Adresse
  * Description: Adresse de la banque à laquelle est rattaché le compte bancaire.
* Nom: identifantBanque : [0..1] Identifiant
  * Description: Identifiant de la banque à laquelle est rattaché le compte bancaire.
* Nom: identifantGestionnaire : [0..1] Identifiant
  * Description: Identifiant du gestionnaire du compte bancaire.
* Nom: dateSouscription : [0..1] Date
  * Description: Date de souscription du compte bancaire.
* Nom: dureeSouscription : [0..1] Mesure
  * Description: Durée de souscription du compte bancaire.
* Nom: dateOuverture : [0..1] Date
  * Description: Date d’ouverture du compte bancaire.
* Nom: dateEcheance : [0..1] Date
  * Description: Date d’échéance du compte bancaire.
* Nom: dateFinPropagation : [0..1] Date
  * Description: Date de fin de propagation du compte bancaire.
* Nom: dateCloture : [0..1] Date
  * Description: Date de clotûre du compte bancaire.
* Nom: domiciliationBancaire : [0..1] Indicateur
  * Description: Domiciliation bancaire des revenus sur ce compte.0 = non ; 1 = oui.
* Nom: echeanceRevenus : [0..1] Date
  * Description: Date d’échéance des revenus sur le compte bancaire.
* Nom: typeCompteBancaire : [0..1] Code
  * Description: Type de compte bancaire.

##### Classe RIB

Relevé d'Identité Bancaire.

* Nom: IBAN : [0..1] Identifiant
  * Description: International Bank Account Number.
* Nom: BIC : [0..1] Identifiant
  * Description: Bank Identifer Code.

##### Classe Transport

Moyen de transport utilisé par l’usager.

* Nom: type : [0..1] Code
  * Description: Type de moyen de transport.
* Nom: observationAmenagement : [0..1] Texte
  * Description: Observation sur l’aménagement du moyen de transport.

##### Classe PermisConduire

Permis de conduire de l’usager.

* Nom: categorie : [0..1] Code
  * Description: Catégorie du permis de conduire.
* Nom: type : [0..1] Code
  * Description: Type du permis de conduire.
* Nom: dateObtention : [0..1] Date
  * Description: Date d’obtention du permis de conduire.
* Nom: dateValidite : [0..1] Date
  * Description: Date limite de validité du permis de conduire.

##### Classe MesureProctection

Décision du juge des tutelles de désigner une personne morale ou physique en vue de lui confier des responsabilités normalement exercées par la personne majeure pour protéger ses biens.

* Nom: typeMesureProtection : [0..1] Code
  * Description: Type de mesure de protection (tuteur, curateur, ...).Nomenclature(s) associée(s) : à définir
* Nom: nom : [0..1] Texte
  * Description: Nom de la personne ou de l'organisme.
* Nom: prenom : [0..1] Texte
  * Description: Prénom de la personne.
* Nom: destinataireCourrier : [0..*] Contact
  * Description: Destinataire du courrier relatif la mesure de protection.
* Nom: adresse : [0..1] Adresse
  * Description: Adresse géopostale de la mesure de protection
* Nom: telecommunication : [0..1] Telecommunication
  * Description: Adresse(s) disponible(s) de télécommunication de la mesure de protection (possibilité de renseigner deux numéros de téléphone et une adresse email).
* Nom: dateFin : Date [0..1]
  * Description: Date de fin de la mesure de protection (18 ans de l’usager ou échéance du placement).
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire relatif à la mesure de protection.

#### Sejours

##### Classe Sejour

Séjour d’un usager dans un ESSMS.

La classe EntiteJuridique est définie dans le MOS et est profilée pour ce volet.

* Nom: idSejour : [1..1] Identifiant
  * Description: Cet identifiant est obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de six caractères "SEJOUR" et numéro de dossier administratif du séjour dans le DUI (numeroDossier) :idSejour = 3+FINESS/identifiantLocalUsagerESSMS-SEJOUR-numeroDossier
* Nom: ESSMS : [1..1] EntiteJuridique
  * Description: Établissement ou service social ou médico-social.
* Nom: dateAdmission : [0..1] DateHeure
  * Description: Date d’admission de l'usager dans la structure ESSMS.
* Nom: dateEntreePrevisionnelle : [0..1] DateHeure
  * Description: Date d’entrée prévisionnelle dans le séjour.
* Nom: dateEntree : [0..1] DateHeure
  * Description: Date d’entrée dans le séjour.
* Nom: libelleModeEntree : [0..1] Texte
  * Description: Libellé du mode d’entée du séjour.
* Nom: dateSortiePrevisionnelle : [0..1] DateHeure
  * Description: Date de sortie prévisionnelle du séjour.
* Nom: dateSortie : [0..1] DateHeure
  * Description: Date de sortie du séjour.
* Nom: libelleModeSortie : [0..1] Texte
  * Description: Libellé du mode de sortie du séjour.
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire relatif au séjour.

##### Classe Contrat

Contrant définissant une prestation proposée par l’ESSMS dont l’usager a bénéficié durant son séjour.

* Nom: libellePrestation : [0..1] Texte
  * Description: Libellé de la prestation.
* Nom: prixUnitaire : [0..1] Montant
  * Description: Prix unitaire de la prestation.
* Nom: tauxTVA : [0..1] Mesure
  * Description: Taux de TVA de la prestation.
* Nom: dateEffet : [0..1] Date
  * Description: Date d’effet du paiement de la prestation.
* Nom: termePaiement : [0..1] Indicateur
  * Description: Paiement de la prestation.0 = à échoir ; 1 = échu.

##### Classe Inventaire

Inventaire des biens d’un usager à son arrivé dans l’ESSMS.

* Nom: trousseau : [0..1] Texte
  * Description: Liste des objets avec lesquels l’usager est pris en charge qui sont mis au coffre ou liste des objets qui sont transmis à l’arrivée.

##### Classe Solde

Solde utilisé pour la gestion de l’argent de l’usager durant son séjour.

* Nom: dateSoldeFinal : [0..1] Date
  * Description: Date du solde final.
* Nom: soldeFinalRecette : [0..1] Montant
  * Description: Recette du solde final.
* Nom: soldeFinalDepense : [0..1] Montant
  * Description: Dépense du solde final.
* Nom: dateSoldeJour : [0..1] Date
  * Description: Date du solde du jour.
* Nom: soldeJourRecette : [0..1] Montant
  * Description: Recette du solde du jour.
* Nom: soldeJourDepense : [0..1] Montant
  * Description: Dépense du solde jour.

##### Classe Reservation

Admission prévisionnelle d’un usager dans un ESSMS.

* Nom: type : [0..1] Code
  * Description: Type de réservation.Nomenclature(s) associée(s) : à définir
* Nom: dateDepot : [0..1] Date
  * Description: Date de dépôt de la réservation.
* Nom: dateAdmissionPrevue : [0..1] Date
  * Description: Date d’admission prévue dans l’ESSMS.
* Nom: etablissementSouhaite : [0..*] Identifiant
  * Description: Identifiant de l’ESSMS souhaité.

### Partie Accompagnement

#### Evaluation

##### Classe Evaluation

Résultat de l'évaluation globale d'un usager.

* Nom: idEvaluation : Identifiant [1..1]
  * Description: Identifiant technique de l’évaluation obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "EVAL" et du numéro de l’évaluation dans le DUI (numEvaluation) :idEvaluation = 3+FINESS/identifiantLocalUsagerESSMS-EVAL-numEvaluation
* Nom: typeEvaluation : [1..1] Code
  * Description: Type de l’évaluation.Jeu(x) de valeur(s) associé(s) : JDV_TypeEvaluation_CISIS avec l'OID 1.2.250.1.213.1.1.5.802 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)
* Nom: dateEvaluation : [0..1] DateHeure
  * Description: Date et heure de l’évaluation.
* Nom: resultatEvaluation : [0..1] Le type du résultat est dépendant du type d'évaluation
  * Description: Résultat global de l’évaluation. Le resultat est à renseigner uniquement lorsqu'il s'agit d'une Evaluation AGGIR PH SSIAD ou Evaluation AGGIR PA SSIAD- Evaluation AGGIR PH SSIAD : JDV_GIR_CISIS avec l'OID 1.2.250.1.213.1.1.5.53 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)- Evaluation AGGIR PA SSIAD : JDV_GIR_CISIS avec l'OID 1.2.250.1.213.1.1.5.53 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)
* Nom: commentaireEvaluation : [0..1] Texte
  * Description: Commentaire libre sur l’évaluation.
* Nom: pieceJointeEvaluation : [0..*] ObjetBinaire
  * Description: Pièces jointes relatives à l’évaluation.

##### Classe DetailEvaluation

Informations relatives au détail de l'évaluation de la personne prise en charge.

Cette classe permet de porter le détail structuré d'une grille d'évaluation sous forme de champs évalués associés à un résultat d'évaluation (premier niveau). Le détail de l’évaluation de ce champ peut être transmis à travers un deuxième niveau de détail sous la forme d'une deuxième itération cette classe.

_Premier niveau de détail_

Ce niveau permet d'associer à un champ évalué de la classe "DetailEvaluation", un résultat d'évaluation.

* Nom: champsEvalue : [1..1] Code
  * Description: Critère d'évaluation de la grille.Jeu(x) de valeur(s) associé(s) : un jeu de valeur par type d'évaluation- Evaluation AGGIR PH SSIAD : JDV_EvaluationAGGIRPH_CISIS avec l'OID 1.2.250.1.213.1.1.5.805 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)- Evaluation AGGIR PA SSIAD : JDV_EvaluationAGGIRPA_CISIS avec l'OID 1.2.250.1.213.1.1.5.806 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)- Evaluation de la situation SSIAD : JDV_EvaluationSSIAD_CISIS avec l'OID 1.2.250.1.213.1.1.5.804 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)- Evaluation Serafin : Jeu de valeur issue de la terminologie Serafin correspondant à la famille 1-Besoin. Jeu(x) de valeur(s) associé(s) :[JDV-J285-Besoins_SERAFIN](https://mos.esante.gouv.fr/NOS/JDV_J285-Besoins_SERAFIN/FHIR/JDV-J285-Besoins-SERAFIN)
* Nom: resultatChampsEvalue : [1..1]
  * Description: Résultat du champs évalué dont le type est défini selon la grille d'évaluation.- Evaluation AGGIR PH PA SSIAD : Le résultat du champ évalué peut véhiculer un code intermédiaire : JDV_ResultatEvaluation_CISIS avec l'OID 1.2.250.1.213.1.1.5.816 publié sur[annexe-vocabulaire-et-jeux-de-valeurs.](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)Pour les évaluations AGGIR PH PA SSIAD, chaque champ évalué doit être détaillé selon 4 critères dans un deuxième niveau de détail.- Evaluation de la situation SSIAD : Indicateur.- Evaluation Serafin : Numérique.
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire libre à l'évaluation du champ évalué.

_Deuxième niveau de détail_

Ce niveau permet d'associer à un champ évalué de la classe "DetailEvaluation" (premier niveau), un niveau additionnel de détail de l'évaluation de ce champ.

* Nom: champsEvalue : [1..1] Code
  * Description: Critère évalué.Jeu(x) de valeur(s) associé(s) :- Evaluation AGGIR PH PA SSIAD : JDV_ResultatQuestionEvaluation_CISIS avec l'OID 1.2.250.1.213.1.1.5.817 publié sur[annexe-vocabulaire-et-jeux-de-valeurs.](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)
* Nom: resultatChampsEvalue : [1..1]
  * Description: Résultat du champs évalué dont le type est défini selon la grille d'évaluation.- Evaluation AGGIR PH PA SSIAD : Indicateur.
* Nom: commentaire : [0..1] Texte
  * Description: Commentaire libre relatif à l'évaluation du champ évalué.

##### Classe Evaluateur

** Classe spécialisée, hérite de la classe Professionnel du MOS profilée pour ce volet.

Cette classe regroupe les items pouvant caractériser la personne ayant réalisé l'évaluation.

Dans le cas d'une auto évaluation, l'évaluateur étant l'usager cet élément n'est pas requis.

##### Classe Responsable

** Classe spécialisée, hérite de la classe Professionnel du MOS profilée pour ce volet.

Cette classe regroupe les items pouvant caractériser le professionnel prenant la responsabilité de l'évaluation, par exemple dans le cas où l'évaluation aurait été rédigée par une secrétaire médicale

Dans le cas d'une auto évaluation, le responsable étant l'usager cet élément n'est pas requis.

##### Classe Auteur

** Classe spécialisée, hérite de la classe Professionnel du MOS profilée pour ce volet.

Cette classe regroupe les items pouvant caractériser la personne ayant rédigé l'évaluation mais ne l'ayant pas réalisée et ne pouvant pas en assumer la responsabilité (ex : secrétaire médical).

Dans le cas d'une auto évaluation, l'auteur étant l'usager cet élément n'est pas requis.
 
 _Remarque_ : Hormis le cas de l'auto évaluation, au moins un des 3 éléments (Evaluateur, Responsable, Auteur) doit être renseigné.

#### Projet personnalisé

##### Classe Projet personnalisé

Le projet personnalisé est un document co-construit par l'usager, son entourage et les professionnels du médico-social. Il s'agit d'un outil de coordination visant à répondre à long terme aux besoins et attentes de l'usager. Il regroupe les attentes, définit les objectifs et met en place un accompagnement pour favoriser le développement et l'autonomie de l'usager. Le projet personnalisé est mis à jour à chaque événement de vie de l'usager ou au minimum une fois par an.

* Nom: idProjetPersonnalise : [1..1] Identifiant
  * Description: Identifiant technique du projet personnalisé obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "PPER" et de l'identifiant du projet personnalisé dans le DUI (numProjetPersonnalise) :idProjetPersonnalise = 3+FINESS/identifiantLocalUsagerESSMS-PPER-numProjetPersonnalise
* Nom: titreProjetPersonnalise : [1..1] Texte
  * Description: Titre du projet personnalisé.
* Nom: descriptionProjetPersonnalise : [0..1] Texte
  * Description: Description du projet personnalisé.
* Nom: typeProjetPersonnalise : [0..1] Code
  * Description: Type de projet personnalisé.Jeu(x) de valeur(s) associé(s) :[JDV-J367-type-projet-personnalise-ms](https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j367-type-projet-personnalise-ms)
* Nom: modaliteCommunicationProjetPersonnalise : [0..1] Texte
  * Description: Modalité de communication ou de transmission du projet personnalisé à l'usager et/ou à son entourage.
* Nom: accordUsagerProjetPersonnalise : [0..*][Accord](#classe-accord)
  * Description: Accord de l'usager et/ou de son entourage.
* Nom: accordStructureProjetPersonnalise : [1..*][Accord](#classe-accord)
  * Description: Accord de la structure.
* Nom: dateDebutMiseEnOeuvreProjetPersonnalise : [0..1] DateHeure
  * Description: Date de début de mise en œuvre du projet personnalisé.
* Nom: dateFinMiseEnOeuvreProjetPersonnalise : [0..1] DateHeure
  * Description: Date de fin de mise en œuvre du projet personnalisé.
* Nom: entrantProjetPersonnalise : [0..*] ObjetBinaire
  * Description: Entrant(s) du projet personnalisé.

##### Classe Besoin

Chaque usager a des attentes et des besoins singuliers, que le professionnel s’emploie à intégrer dans le projet personnalisé en tenant compte de l'évolution de sa situation, de ses aspirations et ses spécificités. Le besoin peut découler des attentes.

* Nom: idBesoin : [1..1] Identifiant
  * Description: Identifiant technique du besoin obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "BESO" et de l'identifiant du besoin dans le DUI (numBesoin) :idBesoin = 3+FINESS/identifiantLocalUsagerESSMS-BESO-numBesoin
* Nom: typeBesoin : [0..1] Code
  * Description: Type de besoin.Jeu(x) de valeur(s) associé(s) :[JDV-J285-Besoins-SERAFIN](https://mos.esante.gouv.fr/NOS/JDV_J285-Besoins_SERAFIN/FHIR/JDV-J285-Besoins-SERAFIN)
* Nom: descriptionBesoin : [1..1] Texte
  * Description: Description du besoin.
* Nom: analyseProfessionnelBesoin : [0..*] Texte
  * Description: Analyse du besoin par un professionnel.
* Nom: commentaireBesoin : [0..*] Texte
  * Description: Permet de compléter ou éclairer la description du besoin.
* Nom: pieceJointeBesoin : [0..*] ObjetBinaire
  * Description: Pièce(s) jointe(s)du besoin.

##### Classe Objectif

L'objectif correspond au résultat à atteindre dans le cadre du projet personnalisé. Il peut être rattaché au besoin.

* Nom: idObjectif : [1..1] Identifiant
  * Description: Identifiant technique de l'objectif obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "OBJE" et de l'identifiant de l'objectif dans le DUI (numObjectif) :idObjectif = 3+FINESS/identifiantLocalUsagerESSMS-OBJE-numObjectif
* Nom: titreObjectif : [1..1] Texte
  * Description: Titre de l'objectif.
* Nom: descriptionObjectif : [1..1] Texte
  * Description: Description de l'objectif.
* Nom: domaineObjectif : [0..*] ConceptCode
  * Description: Domaine de l'objectif. La notion de domaine renvoi à des référentiels locaux au sein des structures ESMS.
* Nom: dateDebutObjectif : [0..1] Date
  * Description: Date de début de l'objectif.
* Nom: dateFinObjectif : [0..1] Date
  * Description: Date de fin de l'objectif.
* Nom: avisUsagerObjectif : [0..1] Texte
  * Description: Avis de l'usager sur l'objectif.
* Nom: resultatAttenduObjectif : [0..1] Texte
  * Description: Résultat attendu sur l'objectif.
* Nom: strategieMiseEnOeuvreObjectif : [0..1] Texte
  * Description: Stratégie mise en œuvre de l'objectif.
* Nom: referentObjectif : [0..1][Professionnel](#classe-professionnel)
  * Description: Référent de l'objectif.

##### Classe Action

L'action est un acte mené dans le cadre du projet personnalisé. Elle peut être ratachée à un ou plusieurs objectifs.

* Nom: idAction : [1..1] Identifiant
  * Description: Identifiant technique de l'action obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "ACTI" et de l'identifiant de l'action dans le DUI (numAction) :idAction = 3+FINESS/identifiantLocalUsagerESSMS-ACTI-numAction
* Nom: titreAction : [1..1] Texte
  * Description: Titre de l'action à mener.
* Nom: descriptionAction : [0..1] Texte
  * Description: Description de l'action à mener.
* Nom: dateDebutAction : [0..1] DateHeure
  * Description: Date de début de l'action à mener.
* Nom: dateFinAction : [0..1] DateHeure
  * Description: Date de fin de l'action à mener.
* Nom: avisUsagerAction : [0..1] Texte
  * Description: Avis de l'usager sur l'action.
* Nom: resultatAttenduAction : [0..1] Texte
  * Description: Résultat attendu de l'action.
* Nom: referentAction : [0..1][Professionnel](#classe-professionnel)
  * Description: Référent de l'action.
* Nom: pieceJointeAction : [0..*] ObjetBinaire
  * Description: Pièce(s) jointe(s) de l'action.

##### Classe MoyenRessource

Le moyen ou la ressource sert à réaliser le projet personnalisé. Le moyen ou la ressource peut être rattaché à une action.

* Nom: idMoyenRessource : [1..1] Identifiant
  * Description: Identifiant technique du moyen ou de la ressource obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "MORE" et de l'identifiant du moyen ou de la ressource dans le DUI (numMoyenRessource) :idMoyenRessource = 3+FINESS/identifiantLocalUsagerESSMS-MORE-numMoyenRessource
* Nom: titreMoyenRessource : [1..1] Texte
  * Description: Titre du moyen ou de la ressource à utiliser.
* Nom: descriptionMoyenRessource : [0..1] Texte
  * Description: Description du moyen ou de la ressource.
* Nom: typeMoyenRessource : [0..1] Texte
  * Description: Type du moyen ou de la ressource.Distinction entre moyen et ressource si nécessaire.
* Nom: dateDebutMoyenRessource : [0..1] DateHeure
  * Description: Date de début du moyen ou de la ressource.
* Nom: dateFinMoyenRessource : [0..1] DateHeure
  * Description: Date de fin du moyen ou de la ressource.
* Nom: pieceJointeMoyenRessource : [0..*] ObjetBinaire
  * Description: Pièce(s) jointe(s) du moyen ou de la ressource.

##### Classe PrestationProjetPersonnalise

La prestation désigne ce qui doit être accompli ou fourni à l'usager.Elle peut être rattachée à une action.

* Nom: idPrestation : [1..1] Identifiant
  * Description: Identifiant technique de la prestation projet personalisé obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "PRES" et de l'identifiant de la prestation projet personalisé dans le DUI (numPrestation) :idPrestation = 3+FINESS/identifiantLocalUsagerESSMS-PRES-numPrestation
* Nom: titrePrestation : [1..1] Texte
  * Description: Titre de la prestation à utiliser.
* Nom: descriptionPrestation : [0..1] Texte
  * Description: Description de la prestation.
* Nom: typePrestation : [0..*] Code
  * Description: Type de la prestation.Jeu(x) de valeur(s) associé(s) :[JDV-J283-PrestationsIndirects-SERAFIN](https://mos.esante.gouv.fr/NOS/JDV_J283-PrestationsIndirects_SERAFIN/FHIR/JDV-J283-PrestationsIndirects-SERAFIN),[JDV-J284-PrestationsDirects-SERAFIN](https://mos.esante.gouv.fr/NOS/JDV_J284-PrestationsDirects_SERAFIN/FHIR/JDV-J284-PrestationsDirects-SERAFIN)
* Nom: dateDebutPrestation : [0..1] DateHeure
  * Description: Date de début de la prestation.
* Nom: dateFinPrestation : [0..1] DateHeure
  * Description: Date de fin de la prestation.
* Nom: pieceJointePrestation : [0..*] ObjetBinaire
  * Description: Pièce(s) jointe(s) de la prestation.

##### Classe Attente

L'attente de l'usager représente les souhaits, les désirs et les envies dans tous les domaines de sa vie. Elle peut être exprimée aussi bien par l'usager ainsi que par son entourage ou les professionnels du médico-social.

* Nom: idAttente : [1..1] Identifiant
  * Description: Identifiant technique de l'attente obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "ATTE" et de l'identifiant de l'attente dans le DUI (numAttente) :idAttente = 3+FINESS/identifiantLocalUsagerESSMS-ATTE-numAttente
* Nom: origineAttente : [1..1] Texte
  * Description: Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente.
* Nom: descriptionAttente : [1..1] Texte
  * Description: Description de l'attente, des souhaits de l'acteur pour l'usager.
* Nom: commentaireAttente : [0..*] Texte
  * Description: Permet de compléter ou éclairer la description de l'attente.

##### Classe Bilan

Un bilan est une évaluation du projet personnalisé qui est réalisé à la conclusion de celui-ci ou à une étape intermédiaire. La réévaluation du projet personnalisé s'effectue à minima une fois par an ou dès lors que l’usager le demande ou qu’un changement est observé.

* Nom: idBilan : [1..1] Identifiant
  * Description: Identifiant technique du bilan obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "BILA" et de l'identifiant du bilan dans le DUI (numBilan) :idBilan = 3+FINESS/identifiantLocalUsagerESSMS-BILA-numBilan
* Nom: dateBilan : [1..1] DateHeure
  * Description: Date et heure du bilan.
* Nom: categorieBilan : [0..1] Code
  * Description: Catégorie du bilan.Jeu(x) de valeur(s) associé(s) :[JdvJ366StatutBilanProjetPersonnaliseMs](https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j366-statut-bilan-projet-personnalise-ms)
* Nom: perimetreBilan : [0..1] Texte
  * Description: Périmètre du bilan.
* Nom: problematiqueGlobaleUsager : [0..1] Texte
  * Description: Problématique liée à l'usager.
* Nom: syntheseBilan : [0..1] Texte
  * Description: Synthèse du bilan.
* Nom: inviteBilan : [0..1] Texte
  * Description: Liste les personnes invitées à participer au bilan. Il peut s'agir de professionnels du médico-social ou de l'entourage familiale de l'usager.
* Nom: dateProchainBilan : [0..1] DateHeure
  * Description: Date du prochain bilan.
* Nom: pieceJointeBilan : [0..*] ObjetBinaire
  * Description: Pièce(s) jointe(s) au bilan.

###### Classe SynthèsePreparationBilan

Préparation du bilan du projet personnalisé.

* Nom: corps : [1..1] Texte
  * Description: Corps de la préparation.
* Nom: auteur : [1..1] ([Professionnel](#classe-professionnel),[Usager](#classe-usager),[Contact personne physique](#classe-contactpersonnephysique))
  * Description: Auteur de la préparation de bilan. Cet auteur peut référencer un professionnel, l'usager ou une personne de son entourage.

### Partie Coordination des acteurs

#### Evènement de l'agenda

##### Classe Evenement

Evènements liés à la prise en charge de l’usager dans une structure ESSMS.

Les classes EntiteJuridique, Lieu et Professionnel sont issues du MOS et sont profilées pour ce volet.

* Nom: idEvenement : [1..1] Identifiant
  * Description: Identifiant technique de l’évènement obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de trois caractères "EVN" et du numéro de l’évènement dans le DUI (numEvenement) :idEvenement = 3+FINESS/identifiantLocalUsagerESSMS-EVN-numEvenement
* Nom: typeEvenement : [0..*] Code ou Texte
  * Description: Type de l’évènement.Cas d’usage SSIAD : le type de l'évènement est issuAutre cas d'usage : le type de l'évènement est issu
* Nom: libelleEvenement : [0..1] Texte
  * Description: Titre donné à l’évènement par la structure.
* Nom: commentaireEvenement : [0..*] Texte
  * Description: Commentaires sur le déroulé de l'évènement.
* Nom: compteRenduEvenement : [0..1] Texte
  * Description: Zone de texte liée à l’événement pour compte rendu des actions réalisées.
* Nom: pieceJointeEvenement : [0..*] ObjetBinaire
  * Description: Pièces jointes liées à l’événement.
* Nom: lieuEvenement : [0..1] Lieu
  * Description: Localisation d’exécution de l’évènement.
* Nom: structureEnCharge : [0..1] EntiteJuridique
  * Description: Structure de rattachement de l'usager en charge de l'évènement.
* Nom: dateDebutEvenement : [1..1] DateHeure
  * Description: Date et heure de début de l'évènement.
* Nom: dateFinEvenement : [1..1] DateHeure
  * Description: Date et heure de fin de l'évènement.
* Nom: evenementHorsPrestation : [0..1] Indicateur
  * Description: Evénement hors prestation prévue dans le projet personnalisé de l’usager (ex : école).
* Nom: motifEvenement : [0..1] Texte
  * Description: Contexte justifiant la réalisation de l’évènement (souvent décrit dans le projet personnalisé).
* Nom: usagerPresent : [0..1] Indicateur
  * Description: Evènement nécessitant ou non la présence physique de l’usager.
* Nom: repas : [0..1] Indicateur
  * Description: Repas du professionnel prévu dans le cadre de l'événement.
* Nom: typeRessourceUtilisee: [0..*] Code
  * Description: Type de ressources utilisées dans le cadre de l’évènement (matériel, immobilier, véhicule).Jeu(x) de valeur(s) associé(s) : JDV_RessourceUtilisee_CISIS avec l'OID 1.2.250.1.213.1.1.5.807 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)
* Nom: detailTypeRessourceUtilisee: [0..*] Code
  * Description: Détail du type de ressources utilisées dans le cadre de l’évènement (pour matériel : matériel médical, matériel pédagogique ; pour immobilier : bâtiment, salle, chambre).Jeu(x) de valeur(s) associé(s) :- JDV_DetailMaterielSpecialise_CISIS avec l'OID 1.2.250.1.213.1.1.5.808 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)- JDV_DetailRessourceImmobiliereUtilisee_CISIS avec l'OID 1.2.250.1.213.1.1.5.809 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)
* Nom: dateModificationEvenement : [0..1] DateHeure
  * Description: Date de la dernière modification de l'événement.

##### Classe Transport

Classe générique socle décrivant le transport d’une personne physique (professionnel, usger) lors d’un évènement.

* Nom: idTrajet : [1..1] Identifiant
  * Description: Identifiant technique du transport.
* Nom: typeTransport : [0..1] Code
  * Description: Type de transport.Jeu(x) de valeur(s) associé(s) : JDV_ModeDeTransport_CISIS avec l'OID 1.2.250.1.213.1.1.5.140 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)
* Nom: typeMotorisation : [0..1] Code
  * Description: Type de motorisation associée au véhicule utilisé lors du transport.Jeu(x) de valeur(s) associé(s) : JDV_TypeMotorisation_CISIS avec l'OID 1.2.250.1.213.1.1.5.801 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)
* Nom: transporteur : [0..1] EntiteJuridique
  * Description: Structure juridique définissant le transporteur.
* Nom: adresseDepart : [0..1] Adresse
  * Description: Adresse de départ du transport.
* Nom: adresseDestination : [0..1] Adresse
  * Description: Adresse de destination du transport.
* Nom: budgetPrevisionnel : [0..1] Montant
  * Description: Budget prévisionnel pour assurer le transport de la personne physique.
* Nom: budgetReel : [0..1] Montant
  * Description: Budget réel pour assurer le transport de la personne physique.
* Nom: distance : [0..1] Mesure
  * Description: Distance du transport de la personne physique.
* Nom: dureeTheorique : [0..1] Mesure
  * Description: Durée théorique du transport de la personne physique.
* Nom: dateDebutTransport : [1..1] DateHeure
  * Description: Date de début du transport de la personne physique.
* Nom: dateFinTransport : [1..1] DateHeure
  * Description: Date de fin du transport de la personne physique.

##### Classe TransportProfessionnel

** Classe spécialisée, hérite de la classe Transport

Cette classe regroupe les items pouvant caractériser le transport du professionnel lors de l'évènement.

L'identifiant technique du transport est obtenu dans ce contexte par par la concaténation du type d'identifiant national de personne (provenant de la nomenclature [TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de cinq caractères "TPPro" et du numéro de transport du professionnel dans le DUI (idTransport) :
 idTrajet = 3+FINESS/identifiantLocalUsagerESSMS-TPPro-idTransport

##### Classe TransportUsager

** Classe spécialisée, hérite de la classe Transport

Cette classe regroupe les items pouvant caractériser le transport de l'usager lors de l'évènement.

L'identifiant technique du transport est obtenu dans ce contexte par par la concaténation du type d'identifiant national de personne (provenant de la nomenclature [TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de cinq caractères "TPPat" et du numéro de transport de l'usager dans le DUI (idTransport) :
 idTrajet = 3+FINESS/identifiantLocalUsagerESSMS-TPPat-idTransport

* Nom: accompagnement : [0..1] Indicateur
  * Description: Accompagnement nécessaire ou non de l'usager.
* Nom: asepsieRigoureuse : [0..1] Indicateur
  * Description: Lors du transport de l'usager l'asepsie est rigoureusement respectée ou n'est pas nécessaire.
* Nom: natureTransport : [0..1] Code
  * Description: Nature du transport de l'usager.Jeu de valeur issue de la terminologie Serafin correspondant aux familles (3.2.4.1, 3.2.4.2, 3.2.4.3).Jeu(x) de valeur(s) associé(s) :[JDV_J282-TransportsLiesAuProjetIndividuel_SERAFIN](https://mos.esante.gouv.fr/NOS/JDV_J282-TransportsLiesAuProjetIndividuel_SERAFIN/FHIR/JDV-J282-TransportsLiesAuProjetIndividuel-SERAFIN)

### Classes du MOS profilées pour ce volet

##### Classe Professionnel

Données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social.

* Nom: idNat_PS : [1..1] Identifiant
  * Description: Identification nationale principale du professionnel. Cette identification est obtenue par la concaténation du type d'identifiant national de personne (provenant de la nomenclature[TRE_G08-TypeIdentifiantPersonne](https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne)) et de l'identifiant de la personne physique. Voir la description complète de idNat_PS dans le MOS.
* Nom: civilite : [0..1] Code
  * Description: Civilité de la personne.Jeu(x) de valeur(s) associé(s) :[JDV_J245-Civilite-CISIS](https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS)
* Nom: nom : [0..1] Texte
  * Description: Nom d'usage de la personne.
* Nom: prenom : [0..1] Texte
  * Description: Prénom usuel de la personne.
* Nom: profession : [0..1] Code
  * Description: Profession / Spécialité du professionnel.Jeu(x) de valeur(s) associé(s) :[JDV_J01-XdsAuthorSpecialty-CISIS](https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS)
* Nom: role : [0..1] Code
  * Description: Rôle fonctionnel du professionnel.Jeu(x) de valeur(s) associé(s) :[JDV-J47-FunctionCode-CISIS](https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS)
* Nom: modeExercice : [0..1] Code
  * Description: Mode d'exercice du professionnel. Décrit selon quelle modalité est exercée l'activité du professionnel par rapport à son établissement de rattachement.Jeu(x) de valeur(s) associé(s) :[JDV-J117-ModeExercice-ENREG](https://mos.esante.gouv.fr/NOS/JDV_J117-ModeExercice-ENREG/FHIR/JDV-J117-ModeExercice-ENREG)
* Nom: etablissementDeRattachement : [0..1] EntiteJuridique
  * Description: Structure juridique de rattachement du professionnel.

_Remarque_: Certaines professions du médico-social n'ont pas de correspondance directe dans les référentiels du CI-SIS. L'annexe [Professions du médico-social](annexes_codes_professions_roles_modes_exercices.md) donne la correspondance entre la profession du médico-social et le triptyque "profession/rôle/mode d'exercice" référencé dans les jeux de valeurs du CI-SIS.

##### Classe Entité Juridique

Pour ce volet l'Entité Juridique est une personne morale inscrite dans le FINESS.

* Nom: idNat_Struct : [1..1] Identifiant
  * Description: Identification nationale de l'Entité juridique. Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature[TRE_G07-TypeIdentifiantStructure](https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure)) et de l'identifiant de la structure: ** 1 + N° FINESS.
* Nom: raisonSociale : [0..1] Texte
  * Description: La raison sociale est le nom de l'entité juridique. Elle figure obligatoirement dans les statuts de l'EJ.

##### Classe Lieu

Portion déterminée de l'espace où se sont déroulés des événements.

* Nom: identifiant : [0..*] Identifiant
  * Description: Identifiant(s) métier du lieu.
* Nom: nom : [0..1] Texte
  * Description: Nom, exprimé sous la forme de texte, du lieu.
* Nom: adresse : [0..1] Adresse
  * Description: Adresse géopostale du lieu.
* Nom: telecommunication : [0..1] Telecommunication
  * Description: Adresse(s) de télécommunication du lieu (numéro de téléphone, adresse email, URL, etc.).

### Classes génériques

##### Classe Statut

Cette classe décrit le statut des ressources (Evenement, Evaluation, Projet personnalisé, …).

* Nom: statut : [1..1] Code
  * Description: Statut de la ressource impactée.Jeu(x) de valeur(s) associé(s) :[JDV_J281-StatutsRessourcesMS](https://mos.esante.gouv.fr/NOS/JDV_J281-StatutsRessourcesMS/FHIR/JDV-J281-StatutsRessourcesMS)- Pour l'Evaluation seuls les codes suivants sont à utiliser : APPROUVE, VALIDE, TERMINE- Pour l'Evènement seuls les codes suivants sont à utiliser : PLANIFIE, VALIDE, REALISE, ANNULE- Pour le projet personnalisé seuls les codes suivants sont à utiliser : NONDEBUTE, ENPREPARATION, CREATION, ENREALISATION, TERMINE- Pour l'Objectif, l'Action et la Prestation du Projet personnalisé seuls les codes suivants sont à utiliser : ENPREPARATION, ACTIF, TERMINE, ANNULER
* Nom: motifNonRealisation : [0..1] Code
  * Description: Motif associé au statut de non-réalisation de l’évènement.Jeu(x) de valeur(s) associé(s) : JDV_MotifNonRealisationEvenement_CISIS avec l'OID 1.2.250.1.213.1.1.5.803 publié sur[annexe-vocabulaire-et-jeux-de-valeurs](https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs)
* Nom: dateStatut : [0..1] DateHeure
  * Description: Date et heure du renseignement du statut.
* Nom: auteur : [0..1] Professionnel
  * Description: Le professionnel ayant effectué la dernière modification du statut associé à la ressource.

##### Classe Accord

Cela correspond au consentement d'une personne physique ou morale.

* Nom: auteur : [1..1] ([Professionnel](#classe-professionnel),[Usager](#classe-usager),[Contact personne physique](#classe-contactpersonnephysique))
  * Description: Acteur (personne physique ou morale) qui donne son accord. L'auteur de l'accord peut référencer un professionnel, l'usager ou une personne de son entourage.
* Nom: dateSignature : [1..1] DateHeure
  * Description: Date de délivrance de l'accord.
* Nom: dureeValidite : [0..1] Periode
  * Description: Durée de validité de l'accord

