# Cas d'usage - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Volume 1 - Etude fonctionnelle**](sfe.md)
* **Cas d'usage**

## Cas d'usage

Cette section décrit, **à titre d'exemple et de façon non exhaustive**, un ensemble de cas d'usage correspondant à l’expression des besoins définis lors des ateliers avec la CNSA et les acteurs du médico-social.

> **Point d'attention**Les cas d’usage doivent s’appuyer sur une assise juridique afin de légitimer le transfert des données notamment si ce dernier comporte des données personnelles ou médicales. Cet aspect est de la responsabilité des acteurs qui utilisent cette spécification. Cette dernière n’a pas vocation à légitimer les traitements des données.

#### Transfert des données d’un logiciel DUI vers un SI-tiers

Ces cas d’usage s’inscrivent dans le cadre du programme décliné en France, au niveau national pour déployer des solutions numériques au sein des établissements et services sociaux et medico-sociaux (ESSMS), favoriser l’interopérabilité et transférer des données d’un logiciel DUI (dossiers usagers informatisés) vers un Système d’Information tiers.

##### Cas d'usage SSIAD

Il s'agit du transfert des données d’un logiciel DUI correspondant aux Services de soins infirmiers à domicile (SSIAD) vers un SI-tiers pour renforcer la connaissance et le pilotage de la branche médico-sociale grâce aux données financières, d'activités des ESMS, etc.

La mise en œuvre de ce cas d'usage se matérialise par l'export partiel de données portant sur l’activité des Services de soins infirmiers à domicile (SSIAD) destinés aux personnages âgées et aux personnes handicapées, vers le système d’information de la CNSA ([SIDOBA](https://www.cnsa.fr/informations-thematiques/systeme-dinformation-et-numerique/sidoba) = système d’information de l’offre de la branche autonomie).

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

##### Cas d'usage SERAFIN - Projet personnalisé

Le Projet personnalisé est un outil de coordination visant à répondre à long terme aux besoins et attentes de la personne accueillie. Il est conçu pour et, si possible, avec la personne prise en charge.

Dans ce cas d'usage, le Projet personnalisé de l'usager est envoyé par le logiciel DUI vers le système d’information de la CNSA ([SIDOBA](https://www.cnsa.fr/informations-thematiques/systeme-dinformation-et-numerique/sidoba) = système d’information de l’offre de la branche autonomie).

L'export du Projet personnalisé est composé des éléments métiers suivants :

* le Projet Personnalisé de l'usager ;
* les Attentes de l'usager que le professionnel a intégrées au Projet personnalisé ;
* les Besoins de l'usager que le professionnel a intégrés au Projet personnalisé ;
* les Objectifs dans le cadre du Projet personnalisé ;
* les Actions menées dans le cadre du Projet personnalisé ;
* les Moyens et les Ressources à mettre en place pour réaliser le Projet personnalisé ;
* les Prestations mises en place dans le cadre du Projet personnalisé ;
* les Bilans réalisés dans le cadre du Projet personnalisé.

