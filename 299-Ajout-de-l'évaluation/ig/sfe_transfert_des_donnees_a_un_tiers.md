# Transfert des données à un tiers - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Volume 1 - Etude fonctionnelle**](sfe.md)
* **Transfert des données à un tiers**

## Transfert des données à un tiers

### Définition des Processus collaboratif

* Service attendu: Pré-conditions
  * L'ESSMS d'origine transfère des données de son logiciel DUI vers un système cible : un SI-Tiers.: * Un SI Tiers a demandé à l’ESSMS de lui transmettre tout ou partie des données médico-sociales de l’usager.

* Service attendu: Post-conditions
  * L'ESSMS d'origine transfère des données de son logiciel DUI vers un système cible : un SI-Tiers.: N/A
* Service attendu: Contraintes fonctionnelles
  * L'ESSMS d'origine transfère des données de son logiciel DUI vers un système cible : un SI-Tiers.: N/A
* Service attendu: Scénario nominal
  * L'ESSMS d'origine transfère des données de son logiciel DUI vers un système cible : un SI-Tiers.: Scénario conforme aux cas d'usages décrits dans["Cas d'usage"](sfe_cas_usage.md).

### Liste des acteurs pour l’ensemble des processus

#### Le producteur

Le rôle de producteur incarné par un système est l’acteur à l’origine de l’export des données.

* Processus collaboratif: Export des données d’un logiciel DUI
  * Producteur: **DUI**: Logiciel Métier utilisé par les ESSMS permettant de gérer les dossiers des usagers avant, pendant et après son accompagnement

#### Le consommateur

Le rôle de consommateur incarné par un système est de réceptionner et d’importer les données dans son système (SI-tiers).

### Identification des flux

* Processus métier: * Transfert des données d'un logiciel DUI

  * Flux techniques: * Flux 1.1 - Transmission de données DUI
* Flux 1.2 - Résultat de la transmission de données DUI
Lien vers la description détaillée :[flux 1](description_flux_1_transmission_donnees_dui.md)

