Lien vers l'intégration continue : https://ansforge.github.io/IG-fhir-medicosocial-transfert-donnees-dui/main/ig

# Contexte

## Contexte métier du projet
Le Programme ESMS numérique, porté par la Caisse Nationale de Solidarité pour l'Autonomie (CNSA), vise à généraliser l’utilisation du numérique dans les Établissements et Services Sociaux et Médico-Sociaux (ESSMS). Il repose principalement sur le déploiement d’un Dossier Usager Informatisé (DUI) pour chaque personne accompagnée. Ce DUI centralise l’ensemble des informations qui concerne la personne accompagnée en structure et service sociale et médico-sociale, et son parcours de santé et de vie. Ce dossier unique comprend :
*	Des données administratives ;
*	Des données liées à l’accompagnement de l’usager ;
*	Des données liées à la coordination des différents acteurs ;
*	Des données médicales.
  
Les logiciels DUI doivent permettre, entre autres, de mieux construire et de suivre le projet personnalisé de la personne accompagnée, d’éviter les ruptures de parcours en cas d’évolution des besoins, de changement d’établissement médico-social, de retour à domicile ou d’hospitalisation. 
Dans la continuité des travaux menés dans le cadre du programme ESMS numérique, la CNSA et l’ANS créent un nouveau volet « Transfert de données DUI ». L’objectif de ce volet est de définir la nature et le format des données à transmettre lors d’un export depuis un logiciel DUI afin d’assurer le transfert de données des usagers pour les cas d’usage définis dans le volet.


## Contexte technique du projet
Les données du DUI seront transportées par des profils FHIR.
Le transport s'effectuera par échange de ressources FHIR suivant une API REST FHIR entre 2 acteurs.
Il n'existe pas à l'heure actuelle d'architecture qui permettrait de stocker ces données médico-sociales, et donc de s'orienter vers une gestion telle que celle décrite dans le volet PDSm. 

# Notes
Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* FIG : FHIR Implementation Guide
* HL7 : Health Level Seven
* ANS : L’Agence du Numérique en Santé
* CI-SIS : Cadre d’Interopérabilité des Systèmes d’Information de Santé
* CNSA : Caisse Nationale de Solidarité pour l’Autonomie
* DUI : Dossier Usager Informatisé
* ESSMS : Etablissement et Services sociaux ou Médico-Sociaux
* SIDOBA : Système d’Information de l’Offre de la Branche Autonomie

