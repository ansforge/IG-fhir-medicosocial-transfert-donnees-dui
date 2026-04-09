Cette section décrit, **à titre d'exemple et de façon non exhaustive**, un ensemble de cas d'usage correspondant à l’expression des besoins définis lors des ateliers avec la CNSA et les acteurs du médico-social.

<blockquote class="stu-note">
    <p>
    <b>Point d'attention</b> Les cas d’usage doivent s’appuyer sur une assise juridique afin de légitimer le transfert des données notamment si ce dernier comporte des données personnelles ou médicales. Cet aspect est de la responsabilité des acteurs qui utilisent cette spécification. Cette dernière n’a pas vocation à légitimer les traitements des données.
    </p>
</blockquote>

### Transfert des données d’un logiciel DUI vers un SI-tiers

Ces cas d’usage s’inscrivent dans le cadre du programme décliné en France, au niveau national pour déployer des solutions numériques au sein des établissements et services sociaux et medico-sociaux (ESSMS), favoriser l’interopérabilité et transférer des données d’un logiciel DUI (dossiers usagers informatisés) vers un Système d’Information tiers.

#### Cas d'usage SSIAD

Il s'agit du transfert des données d’un logiciel DUI correspondant aux Services de soins infirmiers à domicile (SSIAD) vers un SI-tiers pour renforcer la connaissance et le pilotage de la branche médico-sociale grâce aux données financières, d'activités des ESMS, etc.

La mise en œuvre de ce cas d'usage se matérialise par l'export partiel de données portant sur l’activité des Services de soins infirmiers à domicile (SSIAD) destinés aux personnages âgées et aux personnes handicapées, vers le système d’information de la CNSA (<a href="https://www.cnsa.fr/informations-thematiques/systeme-dinformation-et-numerique/sidoba">SIDOBA</a> = système d’information de l’offre de la branche autonomie).

Plus précisément les données exportées se caractérisent par :
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

 Ce cas d'usage permet d'ajouter au flux d'extraction les données du Projet personnalisé.
 
 Le Projet personnalisé est un outil de coordination visant à répondre à long terme aux besoins et attentes de la personne accueillie. Il est conçu pour et, si possible, avec la personne prise en charge.

  L'export du Projet personnalisé est composé des éléments métiers suivants :
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

<blockquote class="stu-note">
    <p>
   Les types d'évaluations de la déficience selon la classification CIM11, FINESS et de la déficience selon le tableau de la performance ANAP font partie d'un travail d'alignement avec la CIM11. Ces travaux sont menés par le CGTS à l'ANS. En fonction de l'avancé de ces travaux ces nouveaux types d'évaluations feront partie de futurs lots.
    </p>
</blockquote>

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

<u>Droits sociaux et de santé d’un usager</u>

Monsieur Jean Dupont, né le 03 avril 1987, âgé de 38 ans, de rang de naissance 2, est accompagné au sein de la Maison d’Accueil Spécialisée (MAS) Les Chênes Verts, établissement identifié par le FINESS juridique 480787529. Il est identifié dans les systèmes nationaux par son Numéro d’Inscription au Répertoire (NIR) « 1477204253674A » et dispose, au sein de l’établissement, d’un dossier usager informatisé sous le numéro 1012.

Après l’évaluation de la situation de Monsieur Dupont, la CDPAH décide d’ouvrir les droits sociaux et de santé. Cette décision est enregistrée dans le Dossier Usager Informatisé avec l’identifiant DP-1012-0001. Le suivi administratif est assuré par la MDPH du département : contact@mdph-departement.fr et le droit est rattaché au numéro de l’allocataire 784512973. Le droit correspond à des droits liés à un accompagnement en MAS. Il s’agit d’un droit ouvrant l’accès à une prestation médico-sociale avec accompagnement global et compensation.

Le droit débute le 1er mars 2026, date de la décision de la CDAPH et prend fin le 28 février 2028. La décision est associée à un Plan d’Accompagnement Global validé, permettant une coordination entre les professionnels.

Le droit ne relève pas du dispositif Creton l’orientation vers un établissement pour adultes étant effective. Monsieur Dupont bénéficie d’une compensation fixée à 100% celle-ci correspondant à une prise en charge médico-sociale complète incluant hébergement, soins et accompagnement au quotidien.

Un commentaire précise que l’orientation en MAS est adaptée aux besoins de soins constants de Monsieur Dupont faisant suite aux conclusions de l’évaluations.

<u>Présence et absence d’un usager</u>

Monsieur Dupont, identifié par son Numéro d’Inscription au Répertoire (NIR) « 1477204253674A », et demeurant au 12 rue des Lilas à Vittefleur, code postal 76748, fait l’objet d’un suivi de présence et d’absence dans le cadre de son accueil au sein de la maison accueil spécialisée (MAS) Les Chênes Verts, dont le numéro FINESS juridique est « 480787529 ». Ce suivi est réalisé par les professionnels de l’établissement et est intégré au logiciel de Dossier Usager Informatisé (DUI), sous le numéro de dossier 1012.

* Scénario 1 - Présence complète sur la journée
<div style="text-align: left;padding-left: 40px">
 Le 17 avril 2025, Monsieur Dupont est présent au sein de l’établissement sur l’ensemble de la journée, de 8h00 à 17h30. Cette situation correspond à une présence, enregistrée sous l’identifiant 3480787529/1012-PA-0001.

 Au cours de cette journée, Monsieur Dupont prend son petit-déjeuner à 8h30. Sa présence au repas est confirmée et l’enregistrement est identifié par 3480787529/1012-Repas-0001. Il prend ensuite son déjeuner à 12h00, avec une présence confirmée, il est enregistré sous l’identifiant 3480787529/1012-Repas-0002.

Monsieur Dupont est donc présent sur la journée entière; la journée est facturée et comptabilisée pour les repas et la sécurité.</div>

* Scénario 2 - Hospitalisation partielle
<div style="text-align: left;padding-left: 40px">
Le 20 avril 2025, Monsieur Dupont est présent au sein de la MAS durant la matinée, de 8h00 à 12h00. Cette période est enregistrée comme une présence, sous l’identifiant 3480787529/1012-PA-0002.

À partir de 13h30 et jusqu’à 17h30, Monsieur Dupont est hospitalisé. Cette période est enregistrée comme une absence, sous l’identifiant 3480787529/1012-PA-0003, avec pour motif une hospitalisation. L’absence n’ayant pas été anticipée, elle est indiquée comme non prévue.

Concernant les repas, Monsieur Dupont prend son déjeuner à 12h00. Sa présence est confirmée et il est enregistré sous l’identifiant 3480787529/1012-Repas-0003. En revanche, le goûter prévu à 16h00, n’est pas pris en raison de l’hospitalisation. L’usager est donc indiqué comme absent au repas, et cet enregistrement est identifié par 3480787529/1012-Repas-0004.

Monsieur Dupont est présent le matin puis hospitalisé l’après-midi; la demi-journée d’hospitalisation n’est pas facturée et n’est pas prise en compte pour les repas.</div>

* Scénario 3 - Absence autorisée sur la journée
<div style="text-align: left;padding-left: 40px">
Le 25 avril 2025, Monsieur Dupont est absent de l’établissement sur l’ensemble de la journée, de 8h00 à 17h30. Cette situation correspond à une absence pour sortie autorisée. L’absence ayant été planifiée à l’avance, elle est déclarée comme prévue. La déclaration est enregistrée et validée dans le DUI sous l’identifiant 3480787529/1012-PA-0004.

Les repas prévus sur la journée sont néanmoins tracés. Le déjeuner prévu à 12h00, n’est pas pris ; l’usager est donc indiqué comme absent au repas. Ce repas est enregistré sous l’identifiant 3480787529/1012-Repas-0005.

Le goûter prévu à 16h00, n’est pas pris non plus. Cet enregistrement est identifié par 3480787529/1012-Repas-0006.

Monsieur Dupont est absent sur la journée pour sortie autorisée (A/A) ; la journée reste facturée mais l’usager n’est pas comptabilisé pour les repas ni présent dans les relevés de sécurité.</div>