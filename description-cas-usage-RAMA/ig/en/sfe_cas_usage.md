# Cas d'usage - Médicosocial - Transfert de données DUI v2.4.0

## Cas d'usage

 
There is no translation page available for the current page, so it has been rendered in the default language 

Cette section décrit un ensemble de cas d'usage correspondant à l’expression des besoins définis lors des ateliers avec la CNSA et les acteurs du médico-social.

>  **Point d'attention** Les cas d’usage doivent s’appuyer sur une assise juridique afin de légitimer le transfert des données notamment si ce dernier comporte des données personnelles ou médicales. Cet aspect est de la responsabilité des acteurs qui utilisent cette spécification. Cette dernière n’a pas vocation à légitimer les traitements des données. 

### Transfert des données d’un logiciel DUI vers un SI-tiers

Ces cas d’usage s’inscrivent dans le cadre du programme décliné en France, au niveau national pour déployer des solutions numériques au sein des établissements et services sociaux et medico-sociaux (ESSMS), favoriser l’interopérabilité et transférer des données d’un logiciel DUI (dossiers usagers informatisés) vers un Système d’Information tiers.

#### Cas d'usage SSIAD

Il s'agit du transfert des données d’un logiciel DUI correspondant aux Services de soins infirmiers à domicile (SSIAD) vers un SI-tiers pour renforcer la connaissance et le pilotage de la branche médico-sociale grâce aux données financières, d'activités des ESMS, etc.

La mise en œuvre de ce cas d'usage se matérialise par le transfert partiel de données portant sur l’activité des Services de soins infirmiers à domicile (SSIAD) destinés aux personnages âgées et aux personnes handicapées, vers le système d’information de la CNSA ([SIDOBA](https://www.cnsa.fr/informations-thematiques/systeme-dinformation-et-numerique/sidoba) = système d’information de l’offre de la branche autonomie).

Plus précisément les données transferées se caractérisent par :

* les principales données autour de l'identité de l'usager ;
* les informations sur le séjour de l'usager ;
* l'évaluation de l'autonomie de l'usager accompagnée (ou non) de ses grilles ; d'évaluation structurées ou non structurées ;
* les évènements de l'agenda usager organisés par l’ESSMS entrant dans la thérapie de l’usager ;
* les transports de l'usager associés aux évènements de l'agenda usager.

Pour ce cas d'usage les modalités d’envoi des données usager au SI-tiers sont les suivantes:

* Il est possible au DUI de ré envoyer des éléments déjà transmis – les derniers éléments transmis écrasent les précédents.
* Le DUI envoie au minimum une semaine d'historique par usager
* Le DUI envoie au maximum cinq semaines d'historique par usager

#### Cas d'usage SERAFIN

Ce cas d'usage permet d'ajouter au flux de transmission les données du Projet personnalisé.

Le Projet personnalisé est un outil de coordination visant à répondre à long terme aux besoins et attentes de la personne accueillie. Il est conçu pour et, si possible, avec la personne prise en charge.

Le transfert du Projet personnalisé est composé des éléments métiers suivants :

* le Projet Personnalisé de l'usager ;
* les Attentes de l'usager que le professionnel a intégrées au Projet personnalisé ;
* les Besoins de l'usager que le professionnel a intégrés au Projet personnalisé ;
* les Objectifs dans le cadre du Projet personnalisé ;
* les Actions menées dans le cadre du Projet personnalisé ;
* les Moyens et les Ressources à mettre en place pour réaliser le Projet personnalisé ;
* les Prestations mises en place dans le cadre du Projet personnalisé ;
* les Bilans réalisés dans le cadre du Projet personnalisé.

Dans ce cas d'usage les blocs suivants sont enrichis : "Administratif, Coordination des acteurs et Accompagnement". Ils entrent dans la définition des moyens, ressources et de l'accompagnement mis en oeuvre pour l'usager en adéquation avec les besoins SERAFIN répertoriés en autre dans le Projet personnalisé.

Les objets métiers suivants sont enrichis ou créés :

* la Mobilité de l'usager, son permis de conduire et son Séjour (bloc Administratif)
* la Mobilité de l'usager, son permis de conduire et son Séjour (bloc Administratif) ;
* la Période scolaire de l'usager (bloc Accompagnement) ;
* l'évènement de l'agenda usager (bloc Coordination des acteurs)

>  Les types d'évaluations de la déficience selon la classification CIM11, FINESS et de la déficience selon le tableau de la performance ANAP font partie d'un travail d'alignement avec la CIM11. Ces travaux sont menés par le CGTS à l'ANS. En fonction de l'avancé de ces travaux ces nouveaux types d'évaluations feront partie de futurs lots. 

Dans ce cas d'usage, les objets métiers suivants sont aussi enrichis ou créés :

* La demande d'orientation adressée par la CDAPH
* La Décision d'orientation prise par la CDAPH
* L'ensemble des droits et prestations
* Les détails de la prestation
* La description des modalités d’accueil
* La quantification de la prise en charge
* Le projet de vie
* Présence, absence de l'usager

Une illustration par des cas nominaux est donnée ci-dessous pour les droits sociaux de santé ainsi que pour les présences/absences.

_Droits sociaux et de santé d’un usager_

Monsieur Jean Dupont, né le 03 avril 1987, âgé de 38 ans, de rang de naissance 2, est accompagné au sein de la Maison d’Accueil Spécialisée (MAS) Les Chênes Verts, établissement identifié par le FINESS juridique 480787529. Il est identifié dans les systèmes nationaux par son Numéro d’Inscription au Répertoire (NIR) « 1477204253674A » et dispose, au sein de l’établissement, d’un dossier usager informatisé sous le numéro 1012.

Après l’évaluation de la situation de Monsieur Dupont, la CDPAH décide d’ouvrir les droits sociaux et de santé. Cette décision est enregistrée dans le Dossier Usager Informatisé avec l’identifiant DP-1012-0001. Le suivi administratif est assuré par la MDPH du département : contact@mdph-departement.fr et le droit est rattaché au numéro de l’allocataire 784512973. Le droit correspond à des droits liés à un accompagnement en MAS. Il s’agit d’un droit ouvrant l’accès à une prestation médico-sociale avec accompagnement global et compensation.

Le droit débute le 1er mars 2026, date de la décision de la CDAPH et prend fin le 28 février 2028. La décision est associée à un Plan d’Accompagnement Global validé, permettant une coordination entre les professionnels.

Le droit ne relève pas du dispositif Creton l’orientation vers un établissement pour adultes étant effective. Monsieur Dupont bénéficie d’une compensation fixée à 100% celle-ci correspondant à une prise en charge médico-sociale complète incluant hébergement, soins et accompagnement au quotidien.

Un commentaire précise que l’orientation en MAS est adaptée aux besoins de soins constants de Monsieur Dupont faisant suite aux conclusions de l’évaluations.

_Présence et absence d’un usager_

Monsieur Dupont, identifié par son Numéro d’Inscription au Répertoire (NIR) « 1477204253674A », et demeurant au 12 rue des Lilas à Vittefleur, code postal 76748, fait l’objet d’un suivi de présence et d’absence dans le cadre de son accueil au sein de la maison accueil spécialisée (MAS) Les Chênes Verts, dont le numéro FINESS juridique est « 480787529 ». Ce suivi est réalisé par les professionnels de l’établissement et est intégré au logiciel de Dossier Usager Informatisé (DUI), sous le numéro de dossier 1012.

* Scénario 1 - Présence complète sur la journée

Le 17 avril 2025, Monsieur Dupont est présent au sein de l’établissement sur l’ensemble de la journée, de 8h00 à 17h30. Cette situation correspond à une présence, enregistrée sous l’identifiant 3480787529/1012-PA-0001. Au cours de cette journée, Monsieur Dupont prend son petit-déjeuner à 8h30. Sa présence au repas est confirmée et l’enregistrement est identifié par 3480787529/1012-Repas-0001. Il prend ensuite son déjeuner à 12h00, avec une présence confirmée, il est enregistré sous l’identifiant 3480787529/1012-Repas-0002. Monsieur Dupont est donc présent sur la journée entière; la journée est facturée et comptabilisée pour les repas et la sécurité.

* Scénario 2 - Hospitalisation partielle

Le 20 avril 2025, Monsieur Dupont est présent au sein de la MAS durant la matinée, de 8h00 à 12h00. Cette période est enregistrée comme une présence, sous l’identifiant 3480787529/1012-PA-0002. À partir de 13h30 et jusqu’à 17h30, Monsieur Dupont est hospitalisé. Cette période est enregistrée comme une absence, sous l’identifiant 3480787529/1012-PA-0003, avec pour motif une hospitalisation. L’absence n’ayant pas été anticipée, elle est indiquée comme non prévue. Concernant les repas, Monsieur Dupont prend son déjeuner à 12h00. Sa présence est confirmée et il est enregistré sous l’identifiant 3480787529/1012-Repas-0003. En revanche, le goûter prévu à 16h00, n’est pas pris en raison de l’hospitalisation. L’usager est donc indiqué comme absent au repas, et cet enregistrement est identifié par 3480787529/1012-Repas-0004. Monsieur Dupont est présent le matin puis hospitalisé l’après-midi; la demi-journée d’hospitalisation n’est pas facturée et n’est pas prise en compte pour les repas.

* Scénario 3 - Absence autorisée sur la journée

Le 25 avril 2025, Monsieur Dupont est absent de l’établissement sur l’ensemble de la journée, de 8h00 à 17h30. Cette situation correspond à une absence pour sortie autorisée. L’absence ayant été planifiée à l’avance, elle est déclarée comme prévue. La déclaration est enregistrée et validée dans le DUI sous l’identifiant 3480787529/1012-PA-0004. Les repas prévus sur la journée sont néanmoins tracés. Le déjeuner prévu à 12h00, n’est pas pris ; l’usager est donc indiqué comme absent au repas. Ce repas est enregistré sous l’identifiant 3480787529/1012-Repas-0005. Le goûter prévu à 16h00, n’est pas pris non plus. Cet enregistrement est identifié par 3480787529/1012-Repas-0006. Monsieur Dupont est absent sur la journée pour sortie autorisée (A/A) ; la journée reste facturée mais l’usager n’est pas comptabilisé pour les repas ni présent dans les relevés de sécurité.

#### Cas d'usage RAMA

Ce cas d'usage traite du transfert des données d'un logiciel DUI correspondant aux Établissements d'hébergement pour personnes âgées dépendantes (EHPAD) vers SIDOBA, afin de constituer le Rapport d'Activité Médicale Annuelle (RAMA) de l'établissement.

Le RAMA est un rapport réalisé chaque année par le médecin coordonnateur avec la participation de l'équipe soignante, cosigné par le directeur de l'établissement. Il aide à mieux comprendre le fonctionnement de l'établissement et permet d'évaluer le profil des résidents, la qualité des soins ainsi que l'organisation médicale de la structure. Il dresse un état des lieux de la prise en charge en traçant notamment l'évolution de l'état de dépendance et de santé des résidents. Les données sont transmises à la CNSA via la plateforme [SIDOBA](https://www.cnsa.fr/informations-thematiques/systeme-dinformation-et-numerique/sidoba).

Ce cas d'usage propose de **constituer le RAMA à partir des données des dossiers usagers** présentes dans le DUI, plutôt que manuellement. Il permet de s'appuyer sur des données individuelles des résidents facilitant ensuite leur agrégation automatique par SIDOBA pour produire le rapport.

**Textes encadrant le RAMA et son contenu :**

* Article D. 312-158 du code de l'action sociale et des familles (CASF) : élaboration du RAMA par le médecin coordonnateur, dans sa version issue du décret n° 2025-897 du 4 septembre 2025. Le contenu du rapport est fixé par arrêté et fait l'objet d'une remontée nationale à la CNSA en vue d'un traitement automatisé des données.
* Arrêté du 6 février 2026 fixant le modèle type du rapport annuel d'activité médicale, à utiliser dès le RAMA portant sur l'année 2025.
* Décret n° 2026-68 du 6 février 2026 portant création d'un traitement de données à caractère personnel ayant pour objet le recueil national des rapports annuels d'activité médicale des EHPAD, dénommé « RAMA ». Il précise les finalités du traitement, les catégories de données, les accédants et destinataires (notamment ARS, conseils départementaux, CNSA, CNAM, DGCS, DGOS, DGS, DREES), la durée de conservation et les modalités d'exercice des droits des personnes concernées.

**Contenu du Rapport :**

Le modèle du rapport est ainsi fixé par l'arrêté du 6 février 2026, il s'organise autour de grandes rubriques métier. Pour chacune, le DUI de l'EHPAD détient tout ou partie des informations nécessaires, à partir des dossiers des résidents.

* **Profil des résidents en hébergement permanent** : caractéristiques des résidents accueillis (genre, âge, durée de séjour, mesures de protection, personne de confiance, directives anticipées) et leur niveau de dépendance.
* **Mouvements des résidents en hébergement** : entrées, sorties, décès et hospitalisations survenus sur l'année.
* **Protocoles et évaluations** : protocoles de soins déployés dans l'établissement (chutes, nutrition, contention, douleur, escarres) et évaluations cliniques réalisées auprès des résidents (cognitive, sensorielle, incontinence etc.).
* **Activité médicale et paramédicale** : organisation de l'activité médicale et paramédicale de l'établissement (modalités d'admission, suivi des résidents, permanence des soins, suivi biologique etc).
* **Prévention du risque infectieux** : organisation et actions de prévention (vaccinations, suivi des épisodes épidémiques).
* **Gestion des médicaments** : circuit du médicament (identitovigilance, suivi des prises et des prescriptions).

Le RAMA offre ainsi une vision plus médicale du séjour du résident que les cas d'usage précédents. C'est pourquoi ce cas d'usage introduit une nouvelle catégorie de données dans le contenu du DUI : les **Soins**.

**Définitions et cadre juridique spécifiques à ce cas d'usage :**

> **EHPAD** : Un EHPAD (établissement d’hébergement pour personnes âgées dépendantes) est un établissement d'hébergement médicalisé qui accueille des personnes âgées dépendantes.
* Il relève de la catégorie des établissements accueillant des personnes âgées et leur apportant une assistance dans les actes quotidiens de la vie, des prestations de soins ou une aide à l’insertion sociale, mentionnée à l’article L. 312-1 du CASF. Les EHPAD sont les établissements visés aux I et II de l’article L. 313-12 du CASF. Leur organisation et leur fonctionnement sont encadrés par les articles D. 312-155-0 à D. 312-159-2.
* Selon l’article D. 312-155-0, l’EHPAD héberge à temps complet ou partiel, à titre permanent ou temporaire, des personnes âgées. Pour assurer ses missions, il dispose d’une équipe pluridisciplinaire comprenant au moins un médecin coordonnateur et un infirmier coordonnateur. Cette distinction entre hébergement permanent et hébergement temporaire est importante pour le RAMA, dont une partie des données porte sur les résidents en hébergement permanentMédecin coordonateur** : Le médecin coordonateur est le médecin de l’EHPAD chargé de missions de coordination de la prise en charge. Sous la responsabilité et l’autorité administratives du directeur de l’établissement, il assure l’encadrement médical de l’équipe soignante.
* Tout établissement hébergeant des personnes âgées dépendantes relevant du I de l’article L. 312-1 du CASF doit se doter d’un médecin coordonnateur (article D. 312-156). Celui-ci ne peut pas exercer la fonction de directeur de l’établissement. Ses missions sont énumérées à l’article D. 312-158 du CASF, qui prévoit notamment l’élaboration du RAMA avec le concours de l’équipe soignante.
* La fonction est encadrée par le CASF, complété récemment par le décret n° 2025-897 du 4 septembre 2025.

**Modélisation du cas d'usage :**

Modélisation du cas d'usage
#### Définitions et cadre juridique

##### ESSMS

Les établissements et services sociaux et médico-sociaux accompagnent des personnes dans le champ du social et du médico-social.

L’article L. 312-1 du code de l’action sociale et des familles (CASF) en dresse la liste : il s’agit de structures dont la mission est d’accueillir, d’accompagner ou de soigner des personnes vulnérables, en situation de handicap, de dépendance ou en difficulté sociale. Les EHPAD font partie des ESSMS qui accueillent des personnes âgées

##### Usager

L'usager est une personne bénéficiant d'un accompagement médico-social, qu'il soit ou non accueilli dans une ESSMS.

**RAMA :** L’usager est la personne âgée accueillie dans un EHPAD, que le RAMA désigne par le terme de « résident ». Elle bénéficie d’un accompagnement personnalisé par une équipe pluridisciplinaire (médecin coordonnateur, infirmiers, aides-soignants, psychologues), qui élabore un projet de soins adapté à son niveau de perte d’autonomie (évalué via la grille AGGIR).

La loi n° 2002-2 du 2 janvier 2002 rénovant l’action sociale et médico-sociale est le soclglementation actuelle en EHPAD (et dans les ESSMS en général) pour garantir les droits de la personne accueillie. Elle impose la mise en place de sept outils :

1. La charte des droits et libertés de la personne accueillie : un socle éthique rappelant les droits fondamentaux, annexé au livret d'accueil.
1. Le livret d'accueil : présente l'établissement, son fonctionnement, ses règles et les recours possibles.
1. Le contrat de séjour (ou le document individuel de prise en charge) : définit précisément les objectifs et les conditions de l'accompagnement.
1. Le règlement de fonctionnement : fixe les règles de vie collective et les droits et devoirs de chacun dans la structure.
1. Le Conseil de la Vie Sociale ou une autre instance de participation : permet aux usagers et aux familles de donner leur avis et de participer aux décisions de l'établissement.
1. Le projet d'établissement ou de service : définit pour 5 ans les missions, l'organisation et la politique d'amélioration de la qualité de l'institution.
1. La personne qualifiée : une personne extérieure désignée pour aider l'usager à faire valoir ses droits en cas de litige ou de conflit

La loi n° 2024-317 du 8 avril 2024 portant mesures pour bâtir la société du bien vieillir et de l’autonomie fait évoluer la réglementation et renforce les garanties offertes aux résidents hébergés en établissement.

**SSIAD :** L’usager est la personne prise en charge à son domicile par un service de soins infirmiers à domicile, sur prescription médicale : personne âgée de 60 ans et plus, malade ou en perte d’autonomie, ou personne en situation de handicap . Depuis 2023, les SSIAD évoluent vers des services autonomie à domicile (SAD), dont les publics sont définis à l’article D. 312-1 du CASF.

**SERAFIN :** L’usager est la personne en situation de handicap accompagnée par un ESSMS pour personnes handicapées, sur notification de la maison départementale des personnes handicapées (MDPH). SERAFIN-PH (Services et Établissements : Réforme pour une Adéquation des FINancements aux parcours des Personnes Handicapées) est la réforme de la tarification de ces ESSMS. Elle repose sur deux nomenclatures, des besoins et des prestations, qui offrent un langage commun pour décrire l’accompagnement des usagers.

##### DUI

Le DUI (Dossier Usager Informatisé) est un outil numérique qui centralise les informations administratives, médicales et sociales d'une personne accompagnée au sein d'un ESMS. Son déploiement se généralise dans le cadre du programme "ESMS Numérique" lancé en 2021 et piloté par la CNSA.

Un logiciel DUI couvre l'ensemble du parcours de l'usager, de l'admission au suivi quotidien.

L'usager peut accéder à son propre DUI, la loi n° 2002-2 du 2 janvier 2002 garantissant à l'usager l'accès à toute information relative à sa prise en charge, et le RGPD lui donne un droit d'accès à ses données personnelles (article 15).

##### Dépendance, AGGIR, GIR et PATHOS

La dépendance, ou perte d’autonomie, désigne la situation d’une personne qui, du fait de son état physique ou mental, a besoin d’aide pour accomplir les actes essentiels de la vie quotidienne. En EHPAD, elle est mesurée avec la grille AGGIR, tandis que les soins requis sont mesurés avec le référentiel PATHOS.

* AGGIR et GIR : AGGIR (Autonomie Gérontologique Groupes Iso-Ressources) est la grille nationale d’évaluation de la perte d’autonomie des personnes âgées. À partir de variables observant ce que la personne accomplit seule (cohérence, orientation, toilette, habillage, alimentation, élimination, transferts, déplacements…), elle classe la personne dans un groupe iso-ressources (GIR). Il existe six GIR, de GIR 1 (perte d’autonomie la plus forte) à GIR 6 (autonomie conservée pour les actes essentiels de la vie courante). La grille est fixée par le CASF (articles L. 232-2 et R. 232-3, annexe 2-1). Dans l’EHPAD, l’évaluation est conduite sous la responsabilité du médecin coordonnateur.
* GMP : Le GIR moyen pondéré (GMP) est l’indicateur qui résume le niveau moyen de dépendance des résidents d’un établissement, calculé à partir des GIR de chacun.
* PATHOS et PMP : PATHOS est un outil d’évaluation des soins médico-techniques requis pour prendre en charge les pathologies d’une population de personnes âgées. Il fonctionne par « coupe transversale », c’est-à-dire une photographie de la population à un moment donné. Il permet de calculer le PATHOS moyen pondéré (PMP), indicateur du niveau moyen de soins requis dans l’établissement. PATHOS n’évalue donc pas la dépendance, mais la charge en soins.

##### Données de santé à caractère personnel

Les données de santé sont les données relatives à la santé physique ou mentale d’une personne, y compris à la prestation de services de soins, qui révèlent des informations sur son état de santé (article 4 du RGPD). Leur traitement est soumis à un régime renforcé (article 9 du RGPD).

Le RAMA, constitué à partir des dossiers des résidents, repose sur de telles données. Le traitement national correspondant est encadré par le décret n° 2026-68 du 6 février 2026.

