# Transfert des données à un tiers - Médicosocial - Transfert de données DUI v2.4.0

## Transfert des données à un tiers

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Définition des Processus collaboratif

Cette page décrit le processus collaboratif commun aux cas d’usage du volet : le transfert de tout ou partie des données d’un logiciel DUI vers un système cible. Les modalités propres à chaque cas d’usage sont détaillées dans la section [Cas d’usage](sfe_cas_usage.md).

Le processus collaboratif retenus dans le périmètre de la présente étude est représenté à l'aide d'un diagramme représentant les systèmes et rôles mis en jeu. Les **Rôles** relèvent du générique.

Processus collaboratif "Transfert des données d'un logiciel DUI"

* Service attendu: Pré-conditions
  * L'ESSMS d'origine transfère des données de son logiciel DUI vers un système cible : un SI-Tiers.: * Un SI Tiers a demandé à l’ESSMS de lui transmettre tout ou partie des données médico-sociales de l’usager.
* l’ESSMS est tenu de transmettre ses données dans le cadre d’une obligation réglementaire (ex : RAMA)

* Service attendu: Post-conditions
  * L'ESSMS d'origine transfère des données de son logiciel DUI vers un système cible : un SI-Tiers.: * Le système cible a reçu les données transmises et peut les exploiter.

* Service attendu: Contraintes fonctionnelles
  * L'ESSMS d'origine transfère des données de son logiciel DUI vers un système cible : un SI-Tiers.: N/A
* Service attendu: Scénario nominal
  * L'ESSMS d'origine transfère des données de son logiciel DUI vers un système cible : un SI-Tiers.: Scénario conforme aux cas d'usages décrits dans["Cas d'usage"](sfe_cas_usage.md).

### Liste des acteurs pour l’ensemble des processus

| | | |
| :--- | :--- | :--- |
| Acteur | Description | Exemples |
| [TDDUI Consommateur](ActorDefinition-TDDUIConsommateurActor.md) | Le rôle de consommateur incarné par un système se caractérise par réceptionner puis importer l’export des données DUI dans son système (SI-tiers). | * SIDOBA (cas d'usage SSIAD et RAMA)
* SI tiers destinataire d’un transfert pour le cas d’usage SERAFIN
 |
| [TDDUI Producteur](ActorDefinition-TDDUIProducteurActor.md) | Le rôle de producteur incarné par un système correspond à l’acteur à l’origine de l’export des données d’un logiciel DUI. | * Logiciel DUI d’un EHPAD (cas d'usage RAMA)
* Logiciel DUI d’un SSIAD (cas d’usage SSIAD)
* Logiciel DUI d’un ESSMS (cas d’usage SERAFIN)
 |

### Identification des flux

Le processus collaboratif « Transfert des données d’un logiciel DUI » s’appuie sur les flux suivants.

Modélisation du cas d'usage

