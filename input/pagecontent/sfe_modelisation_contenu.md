### Représentation globale du DUI

<!-- object data="representation_globale.svg"  style="width:100%" type="image/svg+xml"></object -->
<div class="figure" style="width:100%; display: flex; align-items: center; justify-content: center;">
<!-- Note : le svg est déformé car impossible de modifier le style du svg -->
  {%include representation_globale.svg%}
</div>

### Données administratives

<!-- object data="donnees_admin.svg" style="width:100%" type="image/svg+xml"></object -->
<div class="figure" style="width:100%; display: flex; align-items: center; justify-content: center;">
  {%include donnees_admin.svg%}
</div>

#### Identification et coordonnées

<!-- object data="bloc_identification_coordonnees.svg" type="image/svg+xml"></object -->
<div style="text-align:center;">{%include bloc_identification_coordonnees.svg%}</div>

##### Classe Usager 

Terme générique “usager” permet de désigner une personne qui bénéficie d’une prestation ou d’un service lié à la prise en charge de son handicap ou de sa perte d’autonomie, que ce soit à domicile ou en établissement. L’usager est donc la personne qui reçoit une aide ou un accompagnement dans le cadre d’une politique publique visant à soutenir les personnes âgées en perte d’autonomie ou les personnes en situation de handicap. Le terme inclut aussi bien les bénéficiaires directs de ces prestations que leurs familles, lorsqu’elles sont impliquées dans l’organisation de la prise en charge.

Synonymes : résident, résident AN, personne accompagnée, personne accueillie, bénéficiaire, patient, personne, personne prise en charge, individu, client

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>matriculeINS : [0..1] Identifiant</td>
    <td>Le matricule INS est le numéro d’inscription au répertoire national d’identification des personnes physiques (NIR) ou le numéro identifiant d’attente (NIA) pour les personnes en instance d’attribution d’un NIR (Art. R. 1111-8-1.-I du CSP).<br>
    Si le matricule INS de l'usager existe, il doit être véhiculé en priorité. Dans le cas où le matricule INS est renseigné, les traits INS (traits d'identité et traits complémentaires issus du RNIV) doivent être transmis conformément à l'<a href="https://esante.gouv.fr/annexe-prise-en-charge-de-lins-dans-les-volets-du-ci-sis">annexe prise en charge de l'INS dans les volets du ci-sis</a>.</td>
  </tr>
  <tr>
    <td>numSecuriteSociale : [0..1] Identifiant</td>
    <td>Numéro de sécurité sociale de l'usager NIR (NSS-NIR) ou NIA (NSS-NIA) si l'usager est en attente de l'attribution d’un NIR.<br>
     Le numéro de sécurité sociale est utilisé pour la facturation et le remboursement des prestations de santé de la personne prise en charge.</td>
  </tr>
  <tr>
    <td>identifiantLocalUsagerESSMS : [0..1] Identifiant</td>
    <td>Identifiant local de l’usager au sein de la structure.<br>
    Cet identifiant est obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS) : 3+FINESS/identifiantLocalUsagerESSMS</td>
  </tr>
   <tr>
    <td>numeroIndividuInitial : [0..1] Identifiant</td>
    <td>Numéro de l’individu attribué par la MDPH ayant créé le dossier Individu (= MDPH initiale).<br>
    Synonyme = identifiantMDPH</td>
  </tr>
  <tr>
    <td>nomNaissance : [1..1] Texte</td>
    <td>Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.<br>
   Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.</td>
  </tr>
  <tr>
    <td>nomUsage : [0..1] Texte</td>
    <td>Un nom d'usage de la personne.<br>
    Rappel : Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.<br>
    Il est néanmoins possible d'utiliser, dans la vie quotidienne, un autre nom (par exemple le nom marital) appelé nom d'usage.<br>
    Ce nom d'usage ne remplace en aucun cas le nom de famille qui reste le seul nom mentionné sur les actes d'état civil (acte de naissance ou de mariage, livret de famille, etc.).<br>
    S’il s’agit de l’identité qualifiée INS, il est obligatoire lorsqu’il est différent du nom de naissance. C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).</td>
  </tr>
  <tr>
    <td>prenom : [0..1] Texte</td>
    <td>Liste des prénoms de naissance de l'usager.<br>
    La liste des prénoms de naissance fait partie des traits INS. Elle est obligatoire si l’identité INS est qualifiée.<br>
    Ils sont préconisés si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.
    </td>
  </tr>
  <tr>
    <td>premierPrenomActeNaissance : [0..1] Texte</td>
    <td>Premier prénom dans la liste des prénoms de naissance de l'usager<br>
    Cet élément est obligatoire s’il s’agit de l’identité qualifiée INS. C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).<br>
    Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.
    </td>
  </tr>
  <tr>
    <td>prenomUtilise : [0..1] Texte</td>
    <td>Prénom réellement porté par la personne physique dans la vie courante. Il peut s'agir du prénom usuel, du surnom ou du pseudonyme de la personne physique.<br>
    S’il s’agit de l’identité qualifiée INS, il est obligatoire lorsqu’il est différent du premier prénom de naissance. C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).<br>
    </td>
  </tr>
  <tr>
    <td>sexe : [0..1] Code</td>
    <td>Sexe de la personne physique.<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J143-AdministrativeGender-CISIS/FHIR/JDV-J143-AdministrativeGender-CISIS">JDV-J143-AdministrativeGender-CISIS</a><br>
    Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.<br>
    Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.
    </td>
  </tr>
  <tr>
    <td>civilite : [0..1] Code</td>
    <td>Civilité de l’usager.<br>
    Jeu(x) de valeur(s) associé(s) :  <a href="https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS">JDV_J245-Civilite-CISIS</a></td>
  </tr>
  <tr>
    <td>dateNaissance : [0..1] Date</td>
    <td>Date de naissance de l’usager.
    Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.<br>
    Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.</td>
  </tr>
   <tr>
    <td>ordreNaissanceEtatCivil : [0..1] Numerique </td>
    <td>Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les <a href="https://www.ameli.fr/llle-et-vilaine/assure/droits-demarches/principes/numero-securite-sociale">3 derniers chiffres du NIR de l'usager avant </a> la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période.<br>
    Il est obligatoire si le NIR n'est pas transmis.</td>
  </tr>
  <tr>
    <td>CommuneNaissance : [0..1] Code</td>
    <td>Commune de naissance de l’usager. Code officiel géographique (COG) de la commune.<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J120-CommuneHistorisee/FHIR/JDV-J120-CommuneHistorisee">JDV_J120-CommuneHistorisee</a><br>
    Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.<br>
    Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.</td>
  </tr>
   <tr>
    <td>departementNaissance : [0..1] Code</td>
    <td>Département de naissance de la personne. Code officiel géographique (COG) du département.<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J258-Departement/FHIR/JDV-J258-Departement">JDV-J258-Departement</a></td>
  </tr>
  <tr>
    <td>paysNaissance : [0..1] Code</td>
    <td>Pays de naissance de la personne.<br>
    Nomenclature(s) associée(s) : ISO 3166<br>
    Cet attribut fait partie des traits INS. Il est obligatoire si l’identité INS est qualifiée.<br>
    Il est préconisé si le NIR ou l'identifiant local est véhiculé et que l'identité n'est pas qualifiée.</td>
  </tr>
  <tr>
    <td>situationFamiliale : [0..1] Code</td>
    <td>Situation familiale de l’usager.<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>compositionFoyer : [0..1] Code</td>
    <td>Désigne avec qui vit l’usager dans son logement.<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>paysNationalite : [0..*] Code</td>
    <td>Pays de nationalité actuelle ou rattachement de la nationalité à un espace de pays conventionné.<br>
    Nomenclature(s) associée(s) : <a href="https://mos.esante.gouv.fr/NOS/TRE_R89-RegroupementPays/FHIR/TRE-R89-RegroupementPays">TRE_R89-RegroupementPays</a></td>
  </tr>
  <tr>
    <td>langueParlee : [0..*] Code</td>
    <td>Langue parlée par l’usager. <br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J115-Langue-ENREG/FHIR/JDV-J115-Langue-ENREG">JDV_J115-Langue-ENREG</a></td>
  </tr>
  <tr>
    <td>dateDeces : [0..1] DateHeure</td>
    <td>Date et heure de décès de l’usager.</td>
  </tr>
  <tr>
    <td>causeMortalite : [0..*] Code</td>
    <td>Une ou plusieurs causes ayant entraîné la mort de l’usager. <br>
    Nomenclature(s) associée(s) : <a href="https://smt.esante.gouv.fr/terminologie-cim-10">Terminologie CIM-10</a></td>
  </tr>
  <tr>
    <td>communeDeces : [0..1] Code</td>
    <td>Commune de décès de l’usager. Code officiel géographique (COG) de la commune.<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J120-CommuneHistorisee/FHIR/JDV-J120-CommuneHistorisee">JDV-J120-CommuneHistorisee</a></td>
  </tr>
  <tr>
    <td>departementDeces : [0..1] Code</td>
    <td>Département de décès de l’usager. Code officiel géographique (COG) du département.<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J258-Departement/FHIR/JDV-J258-Departement">JDV-J258-Departement</a></td>
  </tr>
  <tr>
    <td>paysDeces : [0..1] Code</td>
    <td>Pays de décès de l’usager.<br>
    Nomenclature(s) associée(s) : Norme ISO 3166</td>
  </tr>
  <tr>
    <td>photo : [0..*] ObjetBinaire </td>
    <td>Photo de l’usager.</td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire relatif à l’identité de l’usager.</td>
  </tr>
</table>

##### Classe Adresse

Adresse géopostale. Un emplacement auquel l’usager peut être trouvée, d'après la norme AFNOR NF Z10-011.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idAdresse : [0..1] Identifiant </td>
    <td>Identifiant fonctionnel de l’adresse.</td>
  </tr>
  <tr>
    <td>type : [0..1] Code</td>
    <td>Indique le ou les types d'adresse tel que "Adresse du domicile", "Adresse du domicile de secours", etc. </td>
  </tr>
  <tr>
    <td>numeroVoie : [0..1] Texte</td>
    <td>Un numéro dans la voie ; dans les cas de numérotation sans extension, il est composé de 0 à 4 caractères numériques au maximum.</td>
  </tr>
  <tr>
    <td>libelleVoie : [0..1] Texte</td>
    <td>Appellation qui est donnée à la voie par les municipalités. Ce libellé figure in extenso ou en abrégé sur les plaques aux différents angles de chaque rue.</td>
  </tr>
  <tr>
    <td>complementPointGeographique : [0..1] Texte</td>
    <td>Un complément de l'adresse au point géographique constitué des éléments suivants :
    <ul>
    <li>Bâtiment : les bâtiments sont désignés par leur type (bâtiment, immeuble, tour,...), éventuellement des mentions d'orientation (est, ouest,...), une dénomination littérale ou une numérotation ; exemple: Tour DELTA</li>
    <li>Accès au bâtiment : l'accès au bâtiment est identifié par un numéro, une lettre, une combinaison alphanumérique. Ces éléments identifient une entrée, porte, etc. ; exemple: Entrée A</li>
    <li>Ensemble immobilier : ensemble d'habitations reliées à la voie publique par un ou plusieurs points d'accès (résidence, zone industrielle,...) ; exemple : Résidence des Fleurs.</li>
    </ul>
    </td>
  </tr>
  <tr>
    <td>mentionDistribution : [0..1] Texte</td>
    <td>Mentions particulières de distribution. Il s'agit de mentions identifiant le service proposé par La Poste au destinataire. Ces mentions sont formées d'un libellé et d'un numéro de séparation (exemple : BP 42534).</td>
  </tr>
  <tr>
    <td>codePostal : [0..1] Code</td>
    <td>Code Postal : Code Postal ou code postal spécifique CEDEX 
    <ul>
    <li>Code postal : Un code à 5 chiffres servant à l'acheminement et/ou à la distribution des envois. Il identifie un bureau distributeur dans la chaîne de traitement du courrier.</li>
    <li>Code CEDEX (Courrier d'Entreprise à Distribution Exceptionnelle ); le CEDEX est une modalité d'acheminement du courrier associée à des services particuliers de distribution offerts aux entreprises caractérisées par un adressage spécifique; le code postal spécifique CEDEX est un code attribué aux organismes, entreprises, services publics recevant un fort trafic. Il identifie un client ou un ensemble de clients. Il est positionné aux lieu et place du code postal général dans le cas des adresses CEDEX. Ainsi, un code peut être associé à un client (code individuel) ou partagé entre plusieurs clients (code collectif).</li>
    </ul>
    </td>
  </tr>
  <tr>
    <td>localite : [0..1] Texte</td>
    <td>Localité ou Libellé du bureau distributeur CEDEX
    <ul>
    <li>Localité: Zone d'habitation, en général la commune d'implantation du destinataire. Elle est identifiée par son libellé INSEE sauf dans quelques cas où le libellé postal diffère du libellé INSEE, généralement pour lever des ambiguïtés.</li>
    <li>Libellé du bureau distributeur CEDEX.<br>
    Libellé du bureau distributeur c'est-à-dire (dans la très grande majorité des cas) le libellé de la commune siège du bureau CEDEX ; la mention CEDEX doit obligatoirement suivre le libellé du bureau CEDEX ; dans le cas où il existe plusieurs bureaux CEDEX pour une même entité ou commune, chaque bureau CEDEX sera identifié par un numéro (exemple : ROUBAIX CEDEX 2) ; ce numéro correspond au numéro d'arrondissement dans le cas des villes à arrondissements, à un numéro d'ordre dans les autres cas.</li>
    </ul>
    </td>
  </tr>
  <tr>
    <td>pays : [0..1] Code</td>
    <td>Nom du pays pour les adresses internationales.</td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire relatif à l’adresse.</td>
  </tr>
</table>

##### Classe Telecommunication

Adresse de télécommunication à laquelle l’usager peut être contactée (téléphone, fax, e-mail, URL, etc.).

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>canal : [0..1] Code</td>
    <td>Code spécifiant le canal ou la manière dont s'établit la communication (téléphone, e-mail, URL, etc.).<br>
    Nomenclature(s) associée(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR">JDV-J225-CanalCommunication-ROR</a></td>
  </tr>
  <tr>
    <td>adresseTelecom : [0..1] Texte</td>
    <td>Valeur de l'adresse de télécommunication dans le format induit par le canal de communication, par exemple un numéro de téléphone, une adresse de courrier électronique, une adresse URL, etc.</td>
  </tr>
    <tr>
    <td>utilisation : [0..1] Texte</td>
    <td>Précise l'utilisation du canal de communication (par exemple à des fins professionnelles, privées, etc.).</td>
  </tr>
</table>

##### Classe Courrier

Adresse de courrier de l’usager.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>typeCourrier : [0..1] Code</td>
    <td>Type de courrier.<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>idAdresse : [0..1] Identifiant</td>
    <td>Adresse à utiliser pour l’envoi du type de courrier.</td>
  </tr>
  <tr>
    <td>libelleDestinataire : [0..1] Texte</td>
    <td>Libellé du destinataire du courrier.<br>
    Par exemple nom et prénom dans le cas d’une personne physique.
    </td>
  </tr>
  <tr>
    <td>organismeDomiciliation : [0..1] Texte</td>
    <td>Nom et/ou service de l’organisme de domiciliation.</td>
  </tr>
</table>

#### Autorisations administratives

<!-- object data="bloc_autorisations_administratives.svg" type="image/svg+xml"></object -->
<div style="text-align:center;">{%include bloc_autorisations_administratives.svg%}</div>

##### Classe AutorisationAdministrative

Autorisation administrative de l’usager.  
Droit temporel et exceptionnel conféré à une personne ou une organisation.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>type : [0..1] Code</td>
    <td>Type d’autorisation administrative.<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>auteur : [0..*] PersonnePhysique</td>
    <td>Signataire de l’autorisation administrative.</td>
  </tr>
  <tr>
    <td>dateSignature : date [0..1]</td>
    <td>Date de signature de l’autorisation administrative.</td>
  </tr>
  <tr>
    <td>dateDebut : [0..1] Date</td>
    <td>Date de début de l’autorisation administrative.</td>
  </tr>
  <tr>
    <td>dateFin : [0..1] Date</td>
    <td>Date de fin de l’autorisation administrative. </td>
  </tr>
  <tr>
    <td>pieceJointe : [0..*] ObjetBinaire</td>
    <td>Pièce jointe relative à l’autorisation administrative.</td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire relatif à l’autorisation administrative.</td>
  </tr>
</table>

#### Droits sociaux et de santé 

<!-- object data="bloc_droits_sociaux_sante.svg" type="image/svg+xml"></object -->
<div style="text-align:center;">{%include bloc_droits_sociaux_sante.svg%}</div>

##### Classe AssuranceMaladieObligatoire

Assurance maladie obligatoire de l’usager.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>ouvrantDroit : [0..1] Identifiant</td>
    <td>Identifiant (NIR) de l’ouvrant droit (assuré).</td>
  </tr>
  <tr>
    <td>ayantsDroit : [0..*] Identifiant</td>
    <td>Identifiants (NIR) des bénéficiaires du contrat d'assurance maladie obligatoire.</td>
  </tr>
  <tr>
    <td>nomOrganisme : [0..1] Texte</td>
    <td>Nom de l’organisme d’assurance maladie obligatoire.</td>
  </tr>
  <tr>
    <td>numeroCodeOrganisme : [0..1] Identifiant</td>
    <td>Numéro de code de l’organisme d’assurance maladie obligatoire.</td>
  </tr>
  <tr>
    <td>adresseOrganisme : [0..1] Adresse</td>
    <td>Adresse de l’organisme d’assurance maladie obligatoire.</td>
  </tr>
  <tr>
    <td>codeRisque : [0..1] Code</td>
    <td>Code risque.</td>
  </tr>
  <tr>
    <td>dateDebutDroit : [0..1] Date</td>
    <td>Date de début des droits à l’assurance maladie obligatoire.</td>
  </tr>
  <tr>
    <td>dateFinDroit : [0..1] Date</td>
    <td>Date de fin des droits à l’assurance maladie obligatoire.</td>
  </tr>
  <tr>
    <td>ticketModerateur : [0..1] Mesure</td>
    <td>Partie des dépenses de santé qui reste à la charge de l’usager une fois que l'Assurance Maladie a remboursé sa part (pourcentage).</td>
  </tr>
  <tr>
    <td>dateFinCentPourCent : [0..1] Date</td>
    <td>Date de fin de la prise en charge 100%.</td>
  </tr>
  <tr>
    <td>droitPUMa : [0 ..1] Indicateur</td>
    <td>Droit à la Protection Universelle Maladie (PUMa).<br>
    0 = non ; 1 = oui.
    </td>
  </tr>
  <tr>
    <td>dateFinDroitPUMa : [0..1] Date</td>
    <td>Date de fin des droits à la Protection Universelle Maladie (PUMa).</td>
  </tr>
</table>

##### Classe AssuranceMaladieComplementaire

Assurance maladie complémentaire de l’usager.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>numeroContrat : [0..1] Identifiant</td>
    <td>Numéro de contrat.</td>
  </tr>
  <tr>
    <td>ouvrantDroit : [0..1]  identifiant</td>
    <td>Identifiant (NIR) de l’ouvrant droit (bénéficiaire) si ce n’est pas l’usager.</td>
  </tr>
  <tr>
    <td>ayantsDroit : [0..*] Identifiant</td>
    <td>Identifiants (NIR) des bénéficiaires du contrat d'assurance maladie complémentaire.</td>
  </tr>
  <tr>
    <td>nomOrganisme : [0..1] Texte</td>
    <td>Nom de l’organisme d’assurance maladie complémentaire.</td>
  </tr>
  <tr>
    <td>libelleOrganisme : [0..1] Texte</td>
    <td>Libellé de l’organisme d’assurance maladie complémentaire.</td>
  </tr>
  <tr>
    <td>adresseOrganisme : [0..1] Adresse</td>
    <td>Adresse de l’organisme d’assurance maladie complémentaire.</td>
  </tr>
  <tr>
    <td>dateDebutDroit : [0..1] Date</td>
    <td>Date de début des droits à l’assurance maladie complémentaire.</td>
  </tr>
  <tr>
    <td>dateFinDroit : [0..1] Date</td>
    <td>Date de fin des droits à l’assurance maladie complémentaire.</td>
  </tr>
  <tr>
    <td>aideComplementaireSante : [0..1] Indicateur</td>
    <td>Alerte « aide à la complémentaire santé ».<br>
    0 = non ; 1 = oui.
    </td>
  </tr>
  <tr>
    <td>typeFinDroit : [0..1] Code</td>
    <td>Raison de la fin des droits à l’assurance maladie complémentaire.<br>
    Nomenclature(s) associée(s) : à définir
    </td>
  </tr>
</table>

##### Classe Decision

La décision est une réponse à une demande de l'individu ou de son représentant légal. Elle est prise par la CDAPH.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idDecision : [1..1] Identifiant </td>
    <td>Numéro de la décision prise par la MDPH.</td>
  </tr>
  <tr>
    <td>numeroEnregistrement : [0..1] Identifiant</td>
    <td>Numéro d’enregistrement au conseil général si différent du numéro d’identification MDPH.</td>
  </tr>
  <tr>
    <td>idDecisionMAJ : [0..*] Identifiant</td>
    <td>Identifiants de la ou des décisions révisées ou renouvelées à l'origine du droit ou identifiant de la décision clôturée (concerne une seule décision) en cas de clôture de droit.</td>
  </tr>
  <tr>
    <td>idNat_Decision : [0..1] Identifiant</td>
    <td>Identifiant unique de la décision généré par ViaTrajectoire. Cet identifiant unique est créé par ViaTrajectoire lorsque la décision est enregistrée dans le SI-SdO.</td>
  </tr>
  <tr>
    <td>dateDecision : [0..1] Date</td>
    <td>Date à laquelle se réunit la CDAPH pour prendre la décision.</td>
  </tr>
  <tr>
    <td>typeDecision : [0..1] Code</td>
    <td>Type de décision.<br>
    Nomenclature(s) associée(s) : à définir
    </td>
  </tr>
  <tr>
    <td>motivation : [0..*] Code</td>
    <td>Considération(s) de droit ou de fait qui constituent le fondement de la décision.<br>
    Nomenclature(s) associée(s) : à définir
    </td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire relatif à la décision.</td>
  </tr>
</table>

##### Classe DroitPrestation

Ensemble des droits et prestations prévus par le Code de l'Action Sociale et des Familles, le Code de l'Education, le Code de la Sécurité Sociale et le Code de la Route auxquels la décision de la CDAPH donne accès.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idDroitPrestation : [1..1] Identifiant</td>
    <td>Identifiant du droit ou de la prestation.</td>
  </tr>
  <tr>
    <td>contactOrganisme : [0..1] ContactPersonneMorale</td>
    <td>Contact de l’organisme responsable du droit ou de la prestation.</td>
  </tr>
  <tr>
    <td>numeroAllocataire : [0..1] Identifiant</td>
    <td>Numéro d’allocataire pour le droit ou la prestation.</td>
  </tr>
  <tr>
    <td>typeDroitPrestation : [0..1] Code</td>
    <td>Type de droit et prestation caractérisant la décision d'orientation.<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>natureDroit : [0..1] Code</td>
    <td>Nature du droit s’appliquant à tous les droits ou prestations ouverts par la CDAPH. Elle permet de gérer, le cas échéant, le lien entre la date d’ouverture du droit et la date de fin d’un droit précédent. Elle est déterminée par l’équipe pluridisciplinaire ou par la CDAPH.<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>dateOuverture : [0..1] Date</td>
    <td>La date d'ouverture de droit est la date à laquelle le droit devient effectif.<br>
    Sauf disposition spécifique, la date d’ouverture des droits est la date de la décision de la CDAPH sur le fondement du principe de non-rétroactivité des décisions.
    </td>
  </tr>
  <tr>
    <td>dateEcheance : [0..1] Date</td>
    <td>La date d'échéance de droit est la date à laquelle le droit ou la prestation ouvert prend fin. L'équipe pluridisciplinaire peut moduler les dates selon les besoins de la personne, tout en restant dans le minimum et dans le maximum prévu par la loi pour chacune des prestations.</td>
  </tr>
  <tr>
    <td>existencePAG : [0..1] Indicateur</td>
    <td>Indicateur de l'existence d'un Plan d’Accompagnement Global (PAG).<br>
    1 = si la décision est associée à un PAG au statut "élaboré" ou "validé" ;<br>
    0 = pour tous les autres cas (la décision n'est pas associée à un PAG ou est associée à un PAG ayant un statut différent de "élaboré" ou "validé").
    </td>
  </tr>
  <tr>
    <td>creton : [0..1] Indicateur</td>
    <td>Amendement Creton. Il s’agit d’un dispositif législatif permettant le maintien temporaire de jeunes adultes de plus de 20 ans en établissement pour enfants dans l’attente d’une place dans un établissement pour adultes.<br>
    Obligatoire pour les décisions orientations ESSMS enfant, non prévu pour les autres orientations.<br>
    0 = l'usager ne bénéficie pas de l'amendement Creton ;<br>
    1 = l'usager bénéficie de l'amendement Creton.
    </td>
  </tr>
  <tr>
    <td>taux : [0..1] Mesure</td>
    <td>Taux dans le cas d’une aide sociale.</td>
  </tr>
  <tr>
    <td>typeCompensation : [0..1] Code</td>
    <td>Type de compensation dans le cas d’une aide sociale.<br>
    Nomenclature(s) associée(s) : à définir
    </td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire relatif au droit ou à la prestation.</td>
  </tr>
</table>

##### Classe DetailPrestation

Détails de la prestation.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>temporaliteAccueil : [0..1] Code</td>
    <td>Fréquence d'accueil lors d'une prise en charge en ESSMS.<br>
    Nomenclature(s) associée(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J30-TemporaliteAccueil-ROR/FHIR/JDV-J30-TemporaliteAccueil-ROR">JDV_J30-TemporaliteAccueil-ROR</a></td>
  </tr>
  <tr>
    <td>precisionOrientation : [0..1] Code</td>
    <td>Précision de l'orientation à renseigner en fonction du type de droit.<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>frequence : [0..1] Mesure</td>
    <td>Fréquence de versement dans le cas d’une aide sociale.</td>
  </tr>
  <tr>
    <td>qualification : [0..1] Code</td>
    <td>Il existe deux types d’orientation :
    <ul>
    <li>Orientation cible (appelée aussi orientation hors contrainte de l’offre, théorique ou idéale) : qualification d'une décision basée uniquement sur les attentes et les besoins évalués de la personne et considérée par l'équipe pluridisciplinaire ou la CDAPH comme la réponse la plus adaptée à ces attentes et besoins sans prendre en compte la réalité de l'offre disponible.</li>
    <li> Orientation alternative (appelée aussi orientation par défaut) : qualification d'une décision, partiellement adaptée au regard des attentes et des besoins évalués de la personne pour prendre en compte la réalité de l'offre disponible, afin d'augmenter la possibilité de réalisation effective de cette orientation.<br>
    Nomenclature(s) associée(s) : à définir</li>
    </ul>
    </td>
  </tr>
  <tr>
    <td>montantAttribue : [0..1] Montant</td>
    <td>Montant attribué dans le cas d’une aide sociale.</td>
  </tr>
</table>

##### Classe PriseCharge

Description des modalités d'accueil.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>modePriseCharge : [0..1] Code</td>
    <td>Mode de prise en charge.<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
</table>

##### Classe Quantification

Quantification de la prise en charge.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>quantificationNombre : [0..1] Numerique</td>
    <td>Valeur de la quantification.</td>
  </tr>
  <tr>
    <td>quantificationUnite : [0..1] Code</td>
    <td>Unité de la quantification (journée ou demi-journée).<br>
    Nomenclature(s) associée(s) : à définir
    </td>
  </tr>
  <tr>
    <td>quantificationPeriodicite : [0..1] Code</td>
    <td>Périodicité de la quantification (quotidienne, hebdomadaire, mensuelle, annuelle).<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
</table>

#### Environnement et ressources

<!-- object data="bloc_environnement_ressources.svg" type="image/svg+xml"></object -->
<div style="text-align:center;">{%include bloc_environnement_ressources.svg%}</div>


##### Classe ContactPersonnePhysique

Personne physique qui agit comme point de contact auprès d'une autre personne ou d'un autre service.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>identifiantContactPP : [0..1] Identifiant</td>
    <td>Identifiant du contact</td>
  </tr>
  <tr>
    <td>nom : [0..1] Texte</td>
    <td>Nom de la personne contact.</td>
  </tr>
  <tr>
    <td>prenom : [0..1] Texte</td>
    <td>Prénom de la personne contact.</td>
  </tr>
  <tr>
    <td>civilite : [0..1] Code</td>
    <td>Civilité du contact.<br>
    jeu(x) de valeur(s) associé(s) :  <a href="https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS">JDV_J245-Civilite-CISIS</a></td>
  </tr>
  <tr>
    <td>paysNationalite : [0..*] Code</td>
    <td>Pays de nationalité de la personne contact, actuelle ou rattachement de la nationalité à un espace de pays conventionné<br>
    Nomenclature(s) associée(s) : Norme ISO 3166</td>
  </tr>
  <tr>
    <td>profession : [0..1] Texte</td>
    <td>Profession de la personne contact.</td>
  </tr>
  <tr>
    <td>situationFamiliale : [0..1] Code</td>
    <td>Situation familiale de la personne contact (célibataire, divorcée, etc.).<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>dateNaissance : [0..1] Date</td>
    <td>Date de naissance de la personne contact.</td>
  </tr>
  <tr>
    <td>telecommunication : [0..*] Telecommunication</td>
    <td>Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.).</td>
  </tr>
  <tr>
    <td>adresse : [0..1] Adresse</td>
    <td>Adresse géopostale du point de contact.</td>
  </tr>
  <tr>
    <td>role : [0..1] Code</td>
    <td>Rôle de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce rôle indique si le point de contact est la personne à prévenir en cas d'urgence, la personne de confiance, etc.<br>
    Nomenclature(s) associée(s) : <a href="https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass">TRE_R260-HL7RoleClass</a></td>
  </tr>
  <tr>
    <td>relation : [0..1] Code</td>
    <td>Lien de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce lien indique si le point de contact est son enfant, son frère, etc.<br>
    Nomenclature(s) associée(s) : <br>
    <a href="https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode">TRE_R216-HL7RoleCode</a><br>
    <a href="https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique">TRE_R217-ProtectionJuridique</a></td>
  </tr>
  <tr>
    <td>fonction : [0..1] Code</td>
    <td>Un titre, une position ou une fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.).
    <a href="https://mos.esante.gouv.fr/NOS/TRE_R251-FonctionContact/FHIR/TRE-R251-FonctionContact">TRE_R251-FonctionContact</a></td>
  </tr>
  <tr>
    <td>ordreAppel : [0..1] Numérique</td>
    <td>Ordre de priorité d’appel du contact (1 = priorité maximale).</td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire relatif au contact.</td>
  </tr>
</table>

##### Classe  ContactPersonneMorale

Personne morale qui agit comme point de contact auprès d'une autre personne ou d'un autre service.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>identifiantContactPP : [0..1] Identifiant</td>
    <td>Identifiant du contact</td>
  </tr>
  <tr>
    <td>libelle : [0..1] Texte</td>
    <td>Libellé du contact.</td>
  </tr>
  <tr>
    <td>raisonSociale : [0..1] Texte</td>
    <td>Raison sociale du contact.</td>
  </tr>
  <tr>
    <td>typeOrgansime : [0..1] Code</td>
    <td>Type d’organisme du contact.</td>
  </tr>
  <tr>
    <td>telecommunication : [0..*] Telecommunication</td>
    <td>Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.).</td>
  </tr>
  <tr>
    <td>adresse : [0..1] Adresse</td>
    <td>Adresse géopostale du point de contact.</td>
  </tr>
  <tr>
    <td>role : [0..1] Code</td>
    <td>Rôle de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce rôle indique si le point de contact est la personne à prévenir en cas d'urgence, la personne de confiance, etc.<br>
    Nomenclature(s) associée(s) : <a href="https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass">TRE_R260-HL7RoleClass</a></td>
  </tr>
  <tr>
    <td>ordreAppel : [0..1] Numérique</td>
    <td>Ordre de priorité d’appel du contact (1 = priorité maximale).</td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire relatif au contact.</td>
  </tr>
</table>

##### Classe Ressource

Ressource perçue par l’usager.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>type : [0..*] Code</td>
    <td>Type de ressource.</td>
  </tr>
  <tr>
    <td>contactOrgansime : [0..1] ContactPersonneMorale</td>
    <td>Contact de l’organisme responsable de la ressource.</td>
  </tr>
  <tr>
    <td>montant : [0..1] Montant</td>
    <td>Montant de la ressource.</td>
  </tr>
  <tr>
    <td>frequence : [0..1] Mesure</td>
    <td>Fréquence de la ressource.</td>
  </tr>
  <tr>
    <td>dateDebut : [0..1] Date</td>
    <td>Date de début de la ressource.</td>
  </tr>
  <tr>
    <td>dateFin : [0..1] Date</td>
    <td>Date de fin de la ressource.</td>
  </tr>
  <tr>
    <td>pieceJointe : [0..*] ObjetBinaire</td>
    <td>Pièce jointe relative à la ressource.</td>
  </tr>
  <tr>
    <td>idDroitPrestation : [0..1] Identifiant</td>
    <td>Identifiant du droit ou de la prestation liée à la ressource.</td>
  </tr>
</table>

##### Classe CompteBancaire

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>adresseBanque : [0..1] Adresse</td>
    <td>Adresse de la banque à laquelle est rattaché le compte bancaire.</td>
  </tr>
  <tr>
    <td>identifantBanque : [0..1] Identifiant</td>
    <td>Identifiant de la banque à laquelle est rattaché le compte bancaire.</td>
  </tr>
  <tr>
    <td>identifantGestionnaire : [0..1] Identifiant</td>
    <td>Identifiant du gestionnaire du compte bancaire.</td>
  </tr>
  <tr>
    <td>dateSouscription : [0..1] Date</td>
    <td>Date de souscription du compte bancaire.</td>
  </tr>
  <tr>
    <td>dureeSouscription : [0..1] Mesure</td>
    <td>Durée de souscription du compte bancaire.</td>
  </tr>
  <tr>
    <td>dateOuverture : [0..1] Date</td>
    <td>Date d’ouverture du compte bancaire.</td>
  </tr>
  <tr>
    <td>dateEcheance : [0..1] Date</td>
    <td>Date d’échéance du compte bancaire.</td>
  </tr>
  <tr>
    <td>dateFinPropagation : [0..1] Date</td>
    <td>Date de fin de propagation du compte bancaire.</td>
  </tr>
  <tr>
    <td>dateCloture : [0..1] Date</td>
    <td>Date de clotûre du compte bancaire.</td>
  </tr>
  <tr>
    <td>domiciliationBancaire : [0..1] Indicateur</td>
    <td>Domiciliation bancaire des revenus sur ce compte.<br>
    0 = non ; 1 = oui.
</td>
  </tr>
  <tr>
    <td>echeanceRevenus : [0..1] Date</td>
    <td>Date d’échéance des revenus sur le compte bancaire.</td>
  </tr>
  <tr>
    <td>typeCompteBancaire : [0..1] Code</td>
    <td>Type de compte bancaire.</td>
  </tr>
</table>

##### Classe RIB

Relevé d'Identité Bancaire.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>IBAN : [0..1] Identifiant</td>
    <td>International Bank Account Number.</td>
  </tr>
  <tr>
    <td>BIC : [0..1] Identifiant</td>
    <td>Bank Identifer Code.</td>
  </tr>
</table>

##### Classe Transport

Moyen de transport utilisé par l’usager.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>type : [0..1] Code</td>
    <td>Type de moyen de transport.</td>
  </tr>
  <tr>
    <td>observationAmenagement : [0..1] Texte</td>
    <td>Observation sur l’aménagement du moyen de transport.</td>
  </tr>
</table>

##### Classe PermisConduire

Permis de conduire de l’usager.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>categorie : [0..1] Code</td>
    <td>Catégorie du permis de conduire.</td>
  </tr>
  <tr>
    <td>type : [0..1] Code</td>
    <td>Type du permis de conduire.</td>
  </tr>
  <tr>
    <td>dateObtention : [0..1] Date</td>
    <td>Date d’obtention du permis de conduire.</td>
  </tr>
  <tr>
    <td>dateValidite : [0..1] Date</td>
    <td>Date limite de validité du permis de conduire.</td>
  </tr>
</table>

##### Classe MesureProctection

Décision du juge des tutelles de désigner une personne morale ou physique en vue de lui confier des responsabilités normalement exercées par la personne majeure pour protéger ses biens.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>typeMesureProtection : [0..1] Code</td>
    <td>Type de mesure de protection (tuteur, curateur, ...).<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>nom : [0..1] Texte</td>
    <td>Nom de la personne ou de l'organisme.</td>
  </tr>
  <tr>
    <td>prenom : [0..1] Texte</td>
    <td>Prénom de la personne.</td>
  </tr>
  <tr>
    <td>destinataireCourrier : [0..*] Contact</td>
    <td>Destinataire du courrier relatif la mesure de protection.</td>
  </tr>
  <tr>
    <td>adresse : [0..1] Adresse </td>
    <td>Adresse géopostale de la mesure de protection</td>
  </tr>
  <tr>
    <td>telecommunication : [0..1] Telecommunication</td>
    <td>Adresse(s) disponible(s) de télécommunication de la mesure de protection (possibilité de renseigner deux numéros de téléphone et une adresse email).</td>
  </tr>
  <tr>
    <td>dateFin : Date [0..1]</td>
    <td>Date de fin de la mesure de protection (18 ans de l’usager ou échéance du placement).</td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire relatif à la mesure de protection.</td>
  </tr>
</table>

#### Sejours 

<!-- object data="bloc_sejours" type="image/svg+xml"></object -->
<div style="text-align:center;">{%include bloc_sejours.svg%}</div>

##### Classe Sejour

Séjour d’un usager dans un ESSMS.

La classe EntiteJuridique est définie dans le MOS et est profilée pour ce volet.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idSejour : [1..1] Identifiant</td>
    <td>Cet identifiant est obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de six caractères "SEJOUR" et numéro de dossier administratif du séjour dans le DUI (numeroDossier) : <br>idSejour = 3+FINESS/identifiantLocalUsagerESSMS-SEJOUR-numeroDossier</td>
  </tr>
   <tr>
    <td>ESSMS : [1..1] EntiteJuridique</td>
    <td>Établissement ou service social ou médico-social.</td>
  </tr>
  <tr>
    <td>dateAdmission : [0..1] DateHeure</td>
    <td>Date d’admission de l'usager dans la structure ESSMS.</td>
  </tr>
  <tr>
    <td>dateEntreePrevisionnelle : [0..1] DateHeure</td>
    <td>Date d’entrée prévisionnelle dans le séjour.</td>
  </tr>
  <tr>
    <td>dateEntree : [0..1] DateHeure</td>
    <td>Date d’entrée dans le séjour.</td>
  </tr>
  <tr>
    <td>libelleModeEntree : [0..1] Texte</td>
    <td>Libellé du mode d’entée du séjour.</td>
  </tr>
  <tr>
    <td>dateSortiePrevisionnelle : [0..1] DateHeure</td>
    <td>Date de sortie prévisionnelle du séjour.</td>
  </tr>
  <tr>
    <td>dateSortie : [0..1] DateHeure</td>
    <td>Date de sortie du séjour.</td>
  </tr>
  <tr>
    <td>libelleModeSortie : [0..1] Texte</td>
    <td>Libellé du mode de sortie du séjour.</td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire relatif au séjour.</td>
  </tr>
</table>

##### Classe Contrat

Contrant définissant une prestation proposée par l’ESSMS dont l’usager a bénéficié durant son séjour.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>libellePrestation : [0..1] Texte</td>
    <td>Libellé de la prestation.</td>
  </tr>
  <tr>
    <td>prixUnitaire : [0..1] Montant</td>
    <td>Prix unitaire de la prestation.</td>
  </tr>
  <tr>
    <td>tauxTVA : [0..1] Mesure</td>
    <td>Taux de TVA de la prestation.</td>
  </tr>
  <tr>
    <td>dateEffet : [0..1] Date</td>
    <td>Date d’effet du paiement de la prestation.</td>
  </tr>
  <tr>
    <td>termePaiement : [0..1] Indicateur</td>
    <td>Paiement de la prestation.<br>
    0 = à échoir ; 1 = échu.
    </td>
  </tr>
</table>

##### Classe Inventaire

Inventaire des biens d’un usager à son arrivé dans l’ESSMS.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>trousseau : [0..1] Texte</td>
    <td>Liste des objets avec lesquels l’usager est pris en charge qui sont mis au coffre ou liste des objets qui sont transmis à l’arrivée.</td>
  </tr>
</table>

##### Classe Solde

Solde utilisé pour la gestion de l’argent de l’usager durant son séjour.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>dateSoldeFinal : [0..1] Date</td>
    <td>Date du solde final.</td>
  </tr>
    <tr>
    <td>soldeFinalRecette : [0..1] Montant</td>
    <td>Recette du solde final.</td>
  </tr>
    <tr>
    <td>soldeFinalDepense : [0..1] Montant</td>
    <td>Dépense du solde final.</td>
  </tr>
    <tr>
    <td>dateSoldeJour : [0..1] Date</td>
    <td>Date du solde du jour.</td>
  </tr>
    <tr>
    <td>soldeJourRecette : [0..1] Montant</td>
    <td>Recette du solde du jour.</td>
  </tr>
    <tr>
    <td>soldeJourDepense : [0..1] Montant</td>
    <td>Dépense du solde jour.</td>
  </tr>
</table>

##### Classe Reservation

Admission prévisionnelle d’un usager dans un ESSMS.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>type : [0..1] Code</td>
    <td>Type de réservation.<br>
    Nomenclature(s) associée(s) : à définir</td>
  </tr>
  <tr>
    <td>dateDepot : [0..1] Date</td>
    <td>Date de dépôt de la réservation.</td>
  </tr>
  <tr>
    <td>dateAdmissionPrevue : [0..1] Date</td>
    <td>Date d’admission prévue dans l’ESSMS.</td>
  </tr>
  <tr>
    <td>etablissementSouhaite : [0..*] Identifiant</td>
    <td>Identifiant de l’ESSMS souhaité.</td>
  </tr>
</table>

### Partie Accompagnement

#### Evaluation

<div style="text-align:center;">{%include bloc_evaluation-grille.svg%}</div>

##### Classe Evaluation

Résultat de l'évaluation globale d'un usager.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idEvaluation : Identifiant [1..1]</td>
    <td>Identifiant technique de l’évaluation obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "EVAL" et du numéro de l’évaluation dans le DUI (numEvaluation) : <br>idEvaluation = 3+FINESS/identifiantLocalUsagerESSMS-EVAL-numEvaluation</td>
  </tr>
   <tr>
    <td>typeEvaluation : [1..1] Code</td>
    <td>Type de l’évaluation.<br>
    Jeu(x) de valeur(s) associé(s) : JDV_TypeEvaluation_CISIS avec l'OID 1.2.250.1.213.1.1.5.802 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a>
    </td>
  </tr>
    <tr>
    <td>dateEvaluation : [0..1] DateHeure</td>
    <td>Date et heure de l’évaluation.</td>
  </tr>
  <tr>
    <td>resultatEvaluation : [0..1] Le type du résultat est dépendant du type d'évaluation</td>
    <td>Résultat global de l’évaluation. Le resultat est à renseigner uniquement lorsqu'il s'agit d'une Evaluation AGGIR PH SSIAD ou Evaluation AGGIR PA SSIAD<br>
    - Evaluation AGGIR PH SSIAD : JDV_GIR_CISIS avec l'OID 1.2.250.1.213.1.1.5.53 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a><br>
    - Evaluation AGGIR PA SSIAD : JDV_GIR_CISIS avec l'OID 1.2.250.1.213.1.1.5.53 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a>
    </td>
  </tr>
   <tr>
    <td>commentaireEvaluation : [0..1] Texte</td>
    <td>Commentaire libre sur l’évaluation.</td>
  </tr>
   <tr>
    <td>pieceJointeEvaluation : [0..*] ObjetBinaire</td>
    <td>Pièces jointes relatives à l’évaluation.</td>
  </tr>
</table>

##### Classe DetailEvaluation

Informations relatives au détail de l'évaluation de la personne prise en charge. 

Cette classe permet de porter le détail structuré d'une grille d'évaluation sous forme de champs évalués associés à un résultat d'évaluation (premier niveau).
Le détail de l’évaluation de ce champ peut être transmis à travers un deuxième niveau de détail sous la forme d'une deuxième itération cette classe.<br>

<u>Premier niveau de détail</u>

Ce niveau permet d'associer à un champ évalué de la classe "DetailEvaluation", un résultat d'évaluation.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>champsEvalue : [1..1] Code</td>
    <td>Critère d'évaluation de la grille.<br>
    Jeu(x) de valeur(s) associé(s) : un jeu de valeur par type d'évaluation <br>
    - Evaluation AGGIR PH SSIAD :  JDV_EvaluationAGGIRPH_CISIS avec l'OID 1.2.250.1.213.1.1.5.805 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a><br>
    - Evaluation AGGIR PA SSIAD : JDV_EvaluationAGGIRPA_CISIS avec l'OID 1.2.250.1.213.1.1.5.806 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a><br>
    - Evaluation de la situation SSIAD : JDV_EvaluationSSIAD_CISIS avec l'OID 1.2.250.1.213.1.1.5.804
    publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a><br>
    - Evaluation Serafin : Jeu de valeur issue de la terminologie Serafin correspondant à la famille 1-Besoin. Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J285-Besoins_SERAFIN/FHIR/JDV-J285-Besoins-SERAFIN">JDV-J285-Besoins_SERAFIN</a>
    </td>
  </tr>
  <tr>
    <td>resultatChampsEvalue : [1..1]</td>
    <td>Résultat du champs évalué dont le type est défini selon la grille d'évaluation.<br>
    - Evaluation AGGIR PH PA SSIAD : Le résultat du champ évalué peut véhiculer un code intermédiaire : JDV_ResultatEvaluation_CISIS avec l'OID 1.2.250.1.213.1.1.5.816 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs.</a><br>
    Pour les évaluations AGGIR PH PA SSIAD, chaque champ évalué doit être détaillé selon 4 critères dans un deuxième niveau de détail.<br>
    - Evaluation de la situation SSIAD : Indicateur.<br>
    - Evaluation Serafin : Numérique.
    </td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire libre à l'évaluation du champ évalué.</td>
  </tr>
</table>

<u>Deuxième niveau de détail</u>

Ce niveau permet d'associer à un champ évalué de la classe "DetailEvaluation" (premier niveau), un niveau additionnel de détail de l'évaluation de ce champ.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>champsEvalue : [1..1] Code</td>
    <td>Critère évalué.<br>
    Jeu(x) de valeur(s) associé(s) : <br>
    - Evaluation AGGIR PH PA SSIAD : JDV_ResultatQuestionEvaluation_CISIS avec l'OID 1.2.250.1.213.1.1.5.817 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs.</a><br>
    </td>
  </tr>
  <tr>
    <td>resultatChampsEvalue : [1..1]</td>
    <td>Résultat du champs évalué dont le type est défini selon la grille d'évaluation.<br>
    - Evaluation AGGIR PH PA SSIAD : Indicateur.
    </td>
  </tr>
  <tr>
    <td>commentaire : [0..1] Texte</td>
    <td>Commentaire libre relatif à l'évaluation du champ évalué.</td>
  </tr>
</table>


##### Classe Evaluateur

** Classe spécialisée, hérite de la classe Professionnel du MOS profilée pour ce volet.

Cette classe regroupe les items pouvant caractériser la personne ayant réalisé l'évaluation.<br>

Dans le cas d'une auto évaluation, l'évaluateur étant l'usager cet élément n'est pas requis.

##### Classe Responsable

** Classe spécialisée, hérite de la classe Professionnel du MOS profilée pour ce volet.

Cette classe regroupe les items pouvant caractériser le professionnel prenant la responsabilité de l'évaluation, par exemple dans le cas où l'évaluation aurait été rédigée par une secrétaire médicale<br>

Dans le cas d'une auto évaluation, le responsable étant l'usager cet élément n'est pas requis.

##### Classe Auteur

** Classe spécialisée, hérite de la classe Professionnel du MOS profilée pour ce volet.

Cette classe regroupe les items pouvant caractériser la personne ayant rédigé l'évaluation mais ne l'ayant pas réalisée et ne pouvant pas en assumer la responsabilité (ex : secrétaire médical).<br>

Dans le cas d'une auto évaluation, l'auteur étant l'usager cet élément n'est pas requis.<br>
<br>
<u>Remarque</u> : Hormis le cas de l'auto évaluation, au moins un des 3 éléments (Evaluateur, Responsable, Auteur) doit être renseigné.

#### Projet personnalisé

<div style="text-align:center;">{%include bloc_projet_personnalise.svg%}</div>

##### Classe Projet personnalisé
Le projet personnalisé est un document co-construit par l'usager, son entourage et les professionnels du médico-social. Il s'agit d'un outil de coordination visant à répondre à long terme aux besoins et attentes de l'usager. Il regroupe les attentes, définit les objectifs et met en place un accompagnement pour favoriser le développement et l'autonomie de l'usager. Le projet personnalisé est mis à jour à chaque événement de vie de l'usager ou au minimum une fois par an.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr> 
  <tr>
    <td>idProjetPersonnalise : [1..1] Identifiant</td>
    <td>Identifiant technique du projet personnalisé obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "PPER" et de l'identifiant du projet personnalisé dans le DUI (numProjetPersonnalise) : <br>idProjetPersonnalise = 3+FINESS/identifiantLocalUsagerESSMS-PPER-numProjetPersonnalise</td>
  </tr>
  <tr>
    <td>titreProjetPersonnalise : [1..1] Texte</td>
    <td>Titre du projet personnalisé.</td>
  </tr>
   <tr>
    <td>descriptionProjetPersonnalise : [0..1] Texte</td>
    <td>Description du projet personnalisé.</td>
  </tr>
  <tr>
    <td>statutProjetPersonnalise : [1..1] <a href="#classe-statut">Statut</a></td>
    <td>Statut du projet personnalisé.</td>
  </tr>
  <tr>
    <td>typeProjetPersonnalise : [0..1] Code</td>
    <td>Type de projet personnalisé.<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j367-type-projet-personnalise-ms">JDV-J367-type-projet-personnalise-ms</a></td>
  </tr>
  <tr>
    <td>modaliteCommunicationProjetPersonnalise : [0..1] Texte</td>
    <td>Modalité de communication ou de transmission du projet personnalisé à l'usager et/ou à son entourage.</td>
  </tr>
  <tr>
    <td>accordUsagerProjetPersonnalise : [0..*] <a href="#classe-accord">Accord</a></td>
    <td>Accord de l'usager et/ou de son entourage.</td>
  </tr>
   <tr>
    <td>accordStructureProjetPersonnalise : [1..*] <a href="#classe-accord">Accord</a></td>
    <td>Accord de la structure.</td>
  </tr>
  <tr>
    <td>dateDebutMiseEnOeuvreProjetPersonnalise : [0..1] DateHeure</td>
    <td>Date de début de mise en œuvre du projet personnalisé.</td>
  </tr>
  <tr>
    <td>dateFinMiseEnOeuvreProjetPersonnalise : [0..1] DateHeure</td>
    <td>Date de fin de mise en œuvre du projet personnalisé.</td>
  </tr>
  <tr>
    <td>entrantProjetPersonnalisee : [0..*] ObjetBinaire</td>
    <td>Entrant(s) du projet personnalisé.</td>
  </tr>
</table>

##### Classe Besoin
Chaque usager a des attentes et des besoins singuliers, que le professionnel s’emploie à intégrer dans le projet personnalisé en tenant compte de l'évolution de sa situation, de ses aspirations et ses spécificités. Le besoin peut découler des attentes.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idBesoin : [1..1] Identifiant</td>
    <td>Identifiant technique du besoin obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "BESO" et de l'identifiant du besoin dans le DUI (numBesoin) : <br>idBesoin = 3+FINESS/identifiantLocalUsagerESSMS-BESO-numBesoin</td>
  </tr>
  <tr>
    <td>typeBesoin : [0..1] Code</td>
    <td>Type de besoin.<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J285-Besoins_SERAFIN/FHIR/JDV-J285-Besoins-SERAFIN">JDV-J285-Besoins-SERAFIN</a></td>
  </tr>
  <tr>
    <td>descriptionBesoin : [1..1] Texte</td>
    <td>Description du besoin.</td>
  </tr>
  <tr>
    <td>analyseProfessionnelBesoin : [0..*] Texte</td>
    <td>Analyse du besoin par un professionnel.</td>
  </tr>
  <tr>
    <td>commentaireBesoin : [0..*] Texte</td>
    <td>Permet de compléter ou éclairer la description du besoin.</td>
  </tr>
  <tr>
    <td>pieceJointeBesoin : [0..*] ObjetBinaire</td>
    <td>Pièce(s) jointe(s)du besoin.</td>
  </tr>
</table>

##### Classe Objectif
L'objectif correspond au résultat à atteindre dans le cadre du projet personnalisé. Il peut être rattaché au besoin.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idObjectif : [1..1] Identifiant</td>
    <td>Identifiant technique de l'objectif obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "OBJE" et de l'identifiant de l'objectif dans le DUI (numObjectif) : <br>idObjectif = 3+FINESS/identifiantLocalUsagerESSMS-OBJE-numObjectif</td>
  </tr>
  <tr>
    <td>titreObjectif : [1..1] Texte</td>
    <td>Titre de l'objectif.</td>
  </tr>
  <tr>
    <td>descriptionObjectif : [1..1] Texte</td>
    <td>Description de l'objectif.</td>
  </tr>
  <tr>
    <td>domaineObjectif : [0..*] ConceptCode</td>
    <td>Domaine de l'objectif. La notion de domaine renvoi à des référentiels locaux au sein des structures ESMS.</td>
  </tr>
  <tr>
    <td>dateDebutObjectif : [0..1] DateHeure</td>
    <td>Date de début de l'objectif.</td>
  </tr>
  <tr>
    <td>dateFinObjectif : [0..1] DateHeure</td>
    <td>Date de fin de l'objectif.</td>
  </tr>
  <tr>
    <td>avisUsagerObjectif : [0..1] Texte</td>
    <td>Avis de l'usager sur l'objectif.</td>
  </tr>
  <tr>
    <td>resultatAttenduObjectif : [0..1] Texte</td>
    <td>Résultat attendu sur l'objectif.</td>
  </tr>
  <tr>
    <td>statutObjectif : [1..1] <a href="#classe-statut">Statut</a></td>
    <td>Statut de l'action.</td>
  </tr>
  <tr>
    <td>strategieMiseEnOeuvreObjectif : [0..1] Texte</td>
    <td>Stratégie mise en œuvre de l'objectif.</td>
  </tr>
  <tr>
    <td>referentObjectif : [0..1] <a href="#classe-professionnel">Professionnel</a></td>
    <td>Référent de l'objectif.</td>
  </tr>
</table>

##### Classe Action
L'action est un acte mené dans le cadre du projet personnalisé. Elle peut être ratachée à un ou plusieurs objectifs.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idAction : [1..1] Identifiant</td>
    <td>Identifiant technique de l'action obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "ACTI" et de l'identifiant de l'action dans le DUI (numAction) : <br>idAction = 3+FINESS/identifiantLocalUsagerESSMS-ACTI-numAction</td>
  </tr> 
  <tr>
    <td>titreAction : [1..1] Texte</td>
    <td>Titre de l'action à mener.</td>
  </tr>
  <tr>
    <td>descriptionAction : [0..1] Texte</td>
    <td>Description de l'action à mener.</td>
  </tr>
  <tr>
    <td>dateDebutAction : [0..1] DateHeure</td>
    <td>Date de début de l'action à mener.</td>
  </tr>
  <tr>
    <td>dateFinAction : [0..1] DateHeure</td>
    <td>Date de fin de l'action à mener.</td>
  </tr>
  <tr>
    <td>avisUsagerAction : [0..1] Texte</td>
    <td>Avis de l'usager sur l'action.</td>
  </tr>
  <tr>
    <td>resultatAttenduAction : [0..1] Texte</td>
    <td>Résultat attendu de l'action.</td>
  </tr>
  <tr>
    <td>statutAction : [1..1] <a href="#classe-statut">Statut</a></td>
    <td>Statut de l'action.</td>
  </tr>
  <tr>
    <td>referentAction : [0..1] <a href="#classe-professionnel">Professionnel</a></td>
    <td>Référent de l'action.</td>
  </tr>
    <tr>
  <td>pieceJointeAction : [0..*] ObjetBinaire</td>
  <td>Pièce(s) jointe(s) de l'action.</td>
</tr>
</table>

##### Classe MoyenRessource
Le moyen ou la ressource sert à réaliser le projet personnalisé. Le moyen ou la ressource peut être rattaché à une action.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idMoyenRessource : [1..1] Identifiant</td>
    <td>Identifiant technique du moyen ou de la ressource obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "MORE" et de l'identifiant du moyen ou de la ressource dans le DUI (numMoyenRessource) : <br>idMoyenRessource = 3+FINESS/identifiantLocalUsagerESSMS-MORE-numMoyenRessource</td>
  </tr> 
  <tr>
    <td>titreMoyenRessource : [1..1] Texte </td>
    <td>Titre du moyen ou de la ressource à utiliser.</td>
  </tr>
  <tr>
    <td>descriptionMoyenRessource : [0..1] Texte </td>
    <td>Description du moyen ou de la ressource.</td>
  </tr>
  <tr>
    <td>typeMoyenRessource : [0..1] Texte </td>
    <td>Type du moyen ou de la ressource.<br>Distinction entre moyen et ressource si nécessaire.</td>
  </tr>
  <tr>
    <td>dateDebutMoyenRessource : [0..1] DateHeure</td>
    <td>Date de début du moyen ou de la ressource.</td>
  </tr>
  <tr>
    <td>dateFinMoyenRessource : [0..1] DateHeure</td>
    <td>Date de fin du moyen ou de la ressource.</td>
  </tr>
  <tr>
    <td>pieceJointeMoyenRessource : [0..*] ObjetBinaire</td>
    <td>Pièce(s) jointe(s) du moyen ou de la ressource.</td>
  </tr>
</table>

##### Classe PrestationProjetPersonnalise
La prestation désigne ce qui doit être accompli ou fourni à l'usager.Elle peut être rattachée à une action.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idPrestation : [1..1] Identifiant</td>
    <td>Identifiant technique de la prestation projet personalisé obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "PRES" et de l'identifiant de la prestation projet personalisé dans le DUI (numPrestation) : <br>idPrestation = 3+FINESS/identifiantLocalUsagerESSMS-PRES-numPrestation</td>
  </tr>
  <tr>
    <td>titrePrestation : [1..1] Texte</td>
    <td>Titre de la prestation à utiliser.</td>
  </tr>
  <tr>
    <td>descriptionPrestation : [0..1] Texte</td>
    <td>Description de la prestation.</td>
  </tr>
  <tr>
    <td>typePrestation : [0..*] Code</td>
    <td>Type de la prestation.<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J283-PrestationsIndirects_SERAFIN/FHIR/JDV-J283-PrestationsIndirects-SERAFIN">JDV-J283-PrestationsIndirects-SERAFIN</a>, <a href="https://mos.esante.gouv.fr/NOS/JDV_J284-PrestationsDirects_SERAFIN/FHIR/JDV-J284-PrestationsDirects-SERAFIN">JDV-J284-PrestationsDirects-SERAFIN</a>
    </td>
  </tr>
<tr>
  <td>dateDebutPrestation : [0..1] DateHeure</td>
  <td>Date de début de la prestation.</td>
</tr>
<tr>
  <td>dateFinPrestation : [0..1] DateHeure</td>
  <td>Date de fin de la prestation.</td>
</tr>
<tr>
  <td>statutPrestation : [1..1] <a href="#classe-statut">Statut</a></td>
  <td>Statut de la prestation.</td>
</tr>
<tr>
  <td>pieceJointePrestation : [0..*] ObjetBinaire</td>
  <td>Pièce(s) jointe(s) de la prestation.</td>
</tr>
</table> 

##### Classe Attente
L'attente de l'usager représente les souhaits, les désirs et les envies dans tous les domaines de sa vie. Elle peut être exprimée aussi bien par l'usager ainsi que par son entourage ou les professionnels du médico-social.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idAttente : [1..1] Identifiant</td>
    <td>Identifiant technique de l'attente obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "ATTE" et de l'identifiant de l'attente dans le DUI (numAttente) : <br>idAttente = 3+FINESS/identifiantLocalUsagerESSMS-ATTE-numAttente</td>
  </tr>
  <tr>
    <td>origineAttente : [1..1] Texte</td>
    <td>Acteur (personne physique ou personne morale) qui a un lien avec l'usager ou l'usager elle-même qui définit son attente.</td>
  </tr>
  <tr>
    <td>descriptionAttente : [1..1] Texte</td>
    <td>Description de l'attente, des souhaits de l'acteur pour l'usager.</td>
  </tr>
  <tr>
    <td>commentaireAttente : [0..*] Texte</td>
    <td>Permet de compléter ou éclairer la description de l'attente.</td>
  </tr>
</table> 

##### Classe Bilan
Un bilan est une analyse réalisée à la conclusion du projet personnalisé ou à une étape intermédiaire.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idBilan : [1..1] Identifiant</td>
    <td>Identifiant technique du bilan obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de quatre caractères "BILA" et de l'identifiant du bilan dans le DUI (numBilan) : <br>idBilan = 3+FINESS/identifiantLocalUsagerESSMS-BILA-numBilan</td>
 </tr>
 <tr>
    <td>dateBilan : [1..1] DateHeure</td>
    <td>Date et heure du bilan.</td>
 </tr>
 <tr>
    <td>categorieBilan : [0..1] Code</td>
    <td>Catégorie du bilan.<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j366-statut-bilan-projet-personnalise-ms">JdvJ366StatutBilanProjetPersonnaliseMs</a></td>
 </tr>
  <tr>
    <td>perimetreBilan : [0..1] Texte</td>
    <td>Périmètre du bilan.</td>
 </tr>
 <tr>
    <td>problematiqueGlobaleUsager : [0..1] Texte</td>
    <td>Problématique liée à l'usager.</td>
 </tr>
 <tr>
    <td>synthesePreparationBilan : [0..*] Texte</td>
    <td>Préparation du bilan.</td>
 </tr>
 <tr>
    <td>corps : [1..1] Texte</td>
    <td>Corps de la préparation.</td>
 </tr>
 <tr>
    <td>auteur : [1..1] Texte</td>
    <td>Auteur de la préparation.</td>
 </tr>
 <tr>
    <td>syntheseBilan : [0..1] Texte</td>
    <td>Synthèse du bilan.</td>
 </tr>
 <tr>
    <td>inviteBilan : [0..1] Texte</td>
    <td>Liste les personnes invitées à participer au bilan. Il peut s'agir de professionnels du médico-social ou de l'entourage familiale de l'usager.</td>
 </tr>
 <tr>
    <td>dateProchainBilan : [0..1] DateHeure</td>
    <td>Date du prochain bilan.</td>
 </tr>
 <tr>
    <td>pieceJointeBilan : [0..*] ObjetBinaire</td>
    <td>Pièce(s) jointe(s) au bilan.</td>
 </tr>
</table>    


### Partie Coordination des acteurs

#### Evènement de l'agenda

<div style="text-align:center;">{%include bloc_evenement.svg%}</div>

##### Classe Evenement

Evènements liés à la prise en charge de l’usager dans une structure ESSMS.

Les classes EntiteJuridique, Lieu et Professionnel sont issues du MOS et sont profilées pour ce volet.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idEvenement : [1..1] Identifiant</td>
    <td>Identifiant technique de l’évènement obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de trois caractères "EVN" et du numéro de l’évènement dans le DUI (numEvenement) :<br> idEvenement = 3+FINESS/identifiantLocalUsagerESSMS-EVN-numEvenement</td>
  </tr>
   <tr>
    <td>typeEvenement : [0..*] Code ou Texte</td>
    <td>Type de l’évènement.<br>
    Cas d’usage SSIAD : le type de l'évènement est issu <br>
    <ul>
        - d'un code issu du jeu de valeur associé : JDV_TypeEvenementSSIAD_CISIS avec l'OID 1.2.250.1.213.1.1.5.811 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a><br>
        - peut contenir un code issu de la terminologie Serafin correspondant aux familles 2-PrestationDirecte et 3-PrestationIndirecte.  Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J284-PrestationsDirects_SERAFIN/FHIR/JDV-J284-PrestationsDirects-SERAFIN/">JDV-J284-PrestationsDirects_SERAFIN</a>, <a href="https://mos.esante.gouv.fr/NOS/JDV_J283-PrestationsIndirects_SERAFIN/FHIR/JDV-J283-PrestationsIndirects-SERAFIN">JDV-J283-PrestationsIndirects_SERAFIN</a><br>
        - peut contenir un texte non structuré véhiculant les autres types d’évènements.<br>
        </ul>
    Autre cas d'usage : le type de l'évènement est issu<br>
    <ul>
      - du jeu de valeur issue de la terminologie Serafin correspondant aux familles 2-PrestationDirecte et 3-PrestationIndirecte. Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J284-PrestationsDirects_SERAFIN/FHIR/JDV-J284-PrestationsDirects-SERAFIN/">JDV-J284-PrestationsDirects_SERAFIN</a>, <a href="https://mos.esante.gouv.fr/NOS/JDV_J283-PrestationsIndirects_SERAFIN/FHIR/JDV-J283-PrestationsIndirects-SERAFIN">JDV_J283-PrestationsIndirects_SERAFIN</a><br>
      - et/ou d’un texte non structuré véhiculant les autres types d’évènements.
      </ul>
    </td>
  </tr>
    <tr>
    <td>libelleEvenement : [0..1] Texte</td>
    <td>Titre donné à l’évènement par la structure.</td>
  </tr>
   <tr>
    <td>commentaireEvenement : [0..*] Texte</td>
    <td>Commentaires sur le déroulé de l'évènement.</td>
  </tr>
  <tr>
    <td>compteRenduEvenement : [0..1] Texte</td>
    <td>Zone de texte liée à l’événement pour compte rendu des actions réalisées.</td>
  </tr>
  <tr>
    <td>pieceJointeEvenement : [0..*] ObjetBinaire</td>
    <td>Pièces jointes liées à l’événement.</td>
  </tr>
   <tr>
    <td>lieuEvenement : [0..1] Lieu</td>
    <td>Localisation d’exécution de l’évènement.</td>
  </tr>
<tr>
    <td>structureEnCharge : [0..1] EntiteJuridique</td>
    <td>Structure de rattachement de l'usager en charge de l'évènement.</td>
  </tr>
<tr>
    <td>dateDebutEvenement : [1..1] DateHeure</td>
    <td>Date et heure de début de l'évènement.</td>
  </tr>
  <tr>
    <td>dateFinEvenement : [1..1] DateHeure</td>
    <td>Date et heure de fin de l'évènement.</td>
  </tr>
 <tr>
    <td>evenementHorsPrestation : [0..1] Indicateur</td>
    <td>Evénement hors prestation prévue dans le projet personnalisé de l’usager (ex : école).</td>
  </tr>
<tr>
    <td>motifEvenement : [0..1] Texte</td>
    <td>Contexte justifiant la réalisation de l’évènement (souvent décrit dans le projet personnalisé).</td>
  </tr>
<tr>
    <td>usagerPresent : [0..1] Indicateur</td>
    <td>Evènement nécessitant ou non la présence physique de l’usager.</td>
  </tr>
  <tr>
   <td>repas : [0..1] Indicateur</td>
    <td>Repas du professionnel prévu dans le cadre de l'événement.</td>
  </tr>
 <tr>
   <td>typeRessourceUtilisee: [0..*] Code</td>
    <td>Type de ressources utilisées dans le cadre de l’évènement (matériel, immobilier, véhicule).<br>
    Jeu(x) de valeur(s) associé(s) : JDV_RessourceUtilisee_CISIS avec l'OID 1.2.250.1.213.1.1.5.807 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a>
    </td>
  </tr>
  <tr>
   <td>detailTypeRessourceUtilisee: [0..*] Code</td>
    <td>Détail du type de ressources utilisées dans le cadre de l’évènement (pour matériel : matériel médical, matériel pédagogique ; pour immobilier : bâtiment, salle, chambre).<br>
    Jeu(x) de valeur(s) associé(s) :<br>
    - JDV_DetailMaterielSpecialise_CISIS avec l'OID 1.2.250.1.213.1.1.5.808 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a><br>
    - JDV_DetailRessourceImmobiliereUtilisee_CISIS avec l'OID 1.2.250.1.213.1.1.5.809 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a>
    </td>
  </tr>
  <tr>
    <td>dateModificationEvenement : [0..1] DateHeure</td>
    <td>Date de la dernière modification de l'événement.</td>
  </tr>
</table>

##### Classe Transport

Classe générique socle décrivant le transport d’une personne physique (professionnel, usger) lors d’un évènement.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idTrajet : [1..1] Identifiant</td>
    <td>Identifiant technique du transport. </td>
  </tr>
  <tr>
    <td>typeTransport : [0..1] Code</td>
    <td>Type de transport.<br>
    Jeu(x) de valeur(s) associé(s) : JDV_ModeDeTransport_CISIS avec l'OID 1.2.250.1.213.1.1.5.140 
    publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a>
    </td>
  </tr>
   <tr>
    <td>typeMotorisation : [0..1] Code</td>
    <td>Type de motorisation associée au véhicule utilisé lors du transport.<br>
    Jeu(x) de valeur(s) associé(s) : JDV_TypeMotorisation_CISIS avec l'OID 1.2.250.1.213.1.1.5.801 publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a> 
    </td>
  </tr>
  <tr>
    <td>transporteur : [0..1] EntiteJuridique</td>
    <td>Structure juridique définissant le transporteur.</td>
  </tr>
 <tr>
    <td>adresseDepart : [0..1] Adresse</td>
    <td>Adresse de départ du transport.</td>
  </tr>
  <tr>
    <td>adresseDestination : [0..1] Adresse</td>
    <td>Adresse de destination du transport.</td>
  </tr>
<tr>
    <td>budgetPrevisionnel : [0..1] Montant</td>
    <td>Budget prévisionnel pour assurer le transport de la personne physique.</td>
  </tr>
  <tr>
    <td>budgetReel : [0..1] Montant</td>
    <td>Budget réel pour assurer le transport de la personne physique.</td>
  </tr>
  <tr>
    <td>distance : [0..1] Mesure</td>
    <td>Distance du transport de la personne physique.</td>
  </tr>
  <tr>
    <td>dureeTheorique : [0..1] Mesure</td>
    <td>Durée théorique du transport de la personne physique.</td>
  </tr>
  <tr>
    <td>dateDebutTransport : [1..1] DateHeure</td>
    <td>Date de début du transport de la personne physique.</td>
  </tr>
  <tr>
    <td>dateFinTransport : [1..1] DateHeure</td>
    <td>Date de fin du transport de la personne physique.</td>
  </tr>
</table>

##### Classe TransportProfessionnel

** Classe spécialisée, hérite de la classe Transport

Cette classe regroupe les items pouvant caractériser le transport du professionnel lors de l'évènement.

L'identifiant technique du transport est obtenu dans ce contexte par par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de cinq caractères "TPPro" et du numéro de transport du professionnel dans le DUI (idTransport) :<br> idTrajet = 3+FINESS/identifiantLocalUsagerESSMS-TPPro-idTransport

##### Classe TransportUsager

** Classe spécialisée, hérite de la classe Transport

Cette classe regroupe les items pouvant caractériser le transport de l'usager lors de l'évènement.

L'identifiant technique du transport est obtenu dans ce contexte par par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS), de cinq caractères "TPPat" et du numéro de transport de l'usager dans le DUI (idTransport) :<br> idTrajet = 3+FINESS/identifiantLocalUsagerESSMS-TPPat-idTransport

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>accompagnement : [0..1] Indicateur</td>
    <td>Accompagnement nécessaire ou non de l'usager. </td>
  </tr>
  <tr>
    <td>asepsieRigoureuse : [0..1] Indicateur</td>
    <td>Lors du transport de l'usager l'asepsie est rigoureusement respectée ou n'est pas nécessaire.</td>
  </tr>
  <tr>
    <td>natureTransport : [0..1] Code</td>
    <td>Nature du transport de l'usager.<br>
    Jeu de valeur issue de la terminologie Serafin correspondant aux familles (3.2.4.1, 3.2.4.2, 3.2.4.3).<br>
    Jeu(x) de valeur(s) associé(s) : <a href="https://mos.esante.gouv.fr/NOS/JDV_J282-TransportsLiesAuProjetIndividuel_SERAFIN/FHIR/JDV-J282-TransportsLiesAuProjetIndividuel-SERAFIN">JDV_J282-TransportsLiesAuProjetIndividuel_SERAFIN</a>
    </td>
  </tr>
</table>

### Classes du MOS profilées pour ce volet

##### Classe Professionnel

Données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idNat_PS : [1..1] Identifiant</td>
    <td>Identification nationale principale du professionnel. Cette identification est obtenue par la concaténation du type d'identifiant national de personne (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne">TRE_G08-TypeIdentifiantPersonne</a>) et de l'identifiant de la personne physique. Voir la description complète de idNat_PS dans le MOS.</td>
  </tr>
   <tr>
    <td>civilite : [0..1] Code</td>
    <td>Civilité de la personne. <br>
    Jeu(x) de valeur(s) associé(s) :  <a href="https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS">JDV_J245-Civilite-CISIS</a>
    </td>
  </tr>
   <tr>
    <td>nom : [0..1] Texte</td>
    <td>Nom d'usage de la personne.</td>
  </tr>
   <tr>
    <td>prenom : [0..1] Texte</td>
    <td>Prénom usuel de la personne.</td>
  </tr>
   <tr>
    <td>profession : [0..1] Code</td>
    <td>Profession / Spécialité du professionnel. <br>
    Jeu(x) de valeur(s) associé(s) :  <a href="https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS">JDV_J01-XdsAuthorSpecialty-CISIS</a>
    </td>
  </tr>
  <tr>
    <td>role : [0..1] Code</td>
    <td>Rôle fonctionnel du professionnel. <br>
    Jeu(x) de valeur(s) associé(s) :  <a href="https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS">JDV-J47-FunctionCode-CISIS</a>
    </td>
  </tr>
  <tr>
    <td>modeExercice : [0..1] Code</td>
    <td>Mode d'exercice du professionnel. Décrit selon quelle modalité est exercée l'activité du professionnel par rapport à son établissement de rattachement.<br>
    Jeu(x) de valeur(s) associé(s) :  <a href="https://mos.esante.gouv.fr/NOS/JDV_J117-ModeExercice-ENREG/FHIR/JDV-J117-ModeExercice-ENREG">JDV-J117-ModeExercice-ENREG</a>
    </td>
  </tr>
  <tr>
    <td>etablissementDeRattachement : [0..1] EntiteJuridique</td>
    <td>Structure juridique de rattachement du professionnel.</td>
  </tr>
</table>

<u>Remarque</u>: Certaines professions du médico-social n'ont pas de correspondance directe dans les référentiels du CI-SIS. L'annexe <a href="annexes_codes_professions_roles_modes_exercices.html">Professions du médico-social</a> donne la correspondance entre la profession du médico-social et le triptyque "profession/rôle/mode d'exercice" référencé dans les jeux de valeurs du CI-SIS.

##### Classe Entité Juridique

Pour ce volet l'Entité Juridique est une personne morale inscrite dans le FINESS.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>idNat_Struct : [1..1] Identifiant</td>
    <td>Identification nationale de l'Entité juridique. Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature <a href="https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure">TRE_G07-TypeIdentifiantStructure</a>) et de l'identifiant de la structure: ** 1 + N° FINESS.</td>
  </tr>
 <tr>
    <td>raisonSociale : [0..1] Texte</td>
    <td>La raison sociale est le nom de l'entité juridique. Elle figure obligatoirement dans les statuts de l'EJ. </td>
  </tr>
</table>


##### Classe Lieu

Portion déterminée de l'espace où se sont déroulés des événements.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>identifiant : [0..*] Identifiant</td>
    <td>Identifiant(s) métier du lieu.</td>
  </tr>
  <tr>
    <td>nom : [0..1] Texte</td>
    <td>Nom, exprimé sous la forme de texte, du lieu.</td>
  </tr>
  <tr>
    <td>adresse : [0..1] Adresse</td>
    <td>Adresse géopostale du lieu.</td>
  </tr>
  <tr>
    <td>telecommunication : [0..1] Telecommunication</td>
    <td>Adresse(s) de télécommunication du lieu (numéro de téléphone, adresse email, URL, etc.).</td>
  </tr>
</table>


### Classes génériques

##### Classe Statut

Cette classe décrit le statut des ressources (Evenement, Evaluation, Projet personnalisé, ...).

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>statut : [1..1] Code</td>
    <td>Statut de la ressource impactée. <br>
    Jeu(x) de valeur(s) associé(s) :  <a href="https://mos.esante.gouv.fr/NOS/JDV_J281-StatutsRessourcesMS/FHIR/JDV-J281-StatutsRessourcesMS">JDV_J281-StatutsRessourcesMS</a><br>
    - Pour l'Evaluation seuls les codes suivants sont à utiliser : APPROUVE, VALIDE, TERMINE <br>
    - Pour l'Evènement seuls les codes suivants sont à utiliser : PLANIFIE, VALIDE, REALISE, ANNULE
    </td>
  </tr>
  <tr>
   <td>motifNonRealisation : [0..1] Code</td>
    <td>Motif associé au statut de non-réalisation de l’évènement.<br>
    Jeu(x) de valeur(s) associé(s) : JDV_MotifNonRealisationEvenement_CISIS avec l'OID 1.2.250.1.213.1.1.5.803
    publié sur <a href="https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs">annexe-vocabulaire-et-jeux-de-valeurs</a> 
    </td>
  </tr>
   <tr>
    <td>dateStatut : [0..1] DateHeure</td>
    <td>Date et heure du renseignement du statut.</td>
  </tr>
   <tr>
    <td>auteur : [0..1] Professionnel</td>
    <td>Le professionnel ayant effectué la dernière modification du statut associé à la ressource.</td>
  </tr>
</table>

##### Classe Accord

Cela correspond au consentement d'une personne physique ou morale.

<table style="width:100%">
  <tr>
    <th>Nom</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>auteur : [1..1] Texte</td>
    <td>Acteur qui donne son accord.</td>
  </tr>
  <tr>
    <td>dateSignature : [1..1] DateHeure</td>
    <td>Date de délivrance de l'accord.</td>
  </tr>
  <tr>
    <td>dureeValidite : [0..1] Periode</td>
    <td>Durée de validité de l'accord</td>
  </tr>
</table>