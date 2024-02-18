<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
The Digital User File (DUI) centralizes all information concerning the person being cared for in social and medico-social facilities and services. 
The aim of this implementation guide is to define the specifications for DUI data transfer.
</p>

<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation.
</p>
</blockquote>

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS">
</div>

### Introduction

Le Programme ESMS numérique, porté par la Caisse Nationale de Solidarité pour l'Autonomie (CNSA), vise à généraliser l’utilisation du numérique dans les établissements et services sociaux et médico-sociaux (ESSMS). Il repose principalement sur le déploiement d’un Dossier Usager Informatisé (DUI) pour chaque personne accompagnée. Ce DUI centralise l’ensemble des informations qui concerne la personne accompagnée en structure et service sociale et médico-sociale, et son parcours de santé et de vie. Ce dossier unique comprend :
* Des données administratives ;
* Des données liées à l’accompagnement de l’usager ;
* Des données liées à la coordination des différents acteurs ;
* Des données médicales.

Les logiciels DUI doivent permettre, entre autres, de mieux construire et de suivre le projet personnalisé de la personne accompagnée, d’éviter les ruptures de parcours en cas d’évolution des besoins, de changement d’établissement médico-social, de retour à domicile ou d’hospitalisation. 

Dans la continuité des travaux menés dans le cadre du programme ESMS numérique, la CNSA et l’ANS créent un nouveau volet « Transfert de données DUI ». L’objectif de ce volet est de définir la nature et le format des données à transmettre lors d’un export depuis un logiciel DUI afin d’assurer le transfert de données des usagers.

Ce guide d'implémentation contient : 
- L'étude des normes et standards au format pdf : [Etude des normes et standards](NormesStandards_TransfertDonneesDUI_V1.0.pdf)
- Les spécifications fonctionnelles : section <a href="sfe_cadre_juridique.html"> Spécifications fonctionnelles</a>
- La spécification technique de contenu : sections <a href="contenu_dossier_contexte.html">Contenu du dossier</a> et <a href="ressources_cda.html">Ressources de conformité</a>
- La spécification technique de transport : sections <a href="description_flux_synthese.html">Description des flux</a> et <a href="artifacts.html">Ressources de conformité</a>

<b>Remarque</b> : la version de la spécification technique de contenu repose sur le périmètre restreint de l’export du nom/prénom/INS ou NIR/traits d’identités ainsi que le GIR (groupe iso ressources i.e. un calcul du niveau d’autonomie d’un usager) à partir d'un DUI dans le but d’alimenter le SI de la CNSA (appelé SIDOBA).

### Lectorat cible

Ce document s'adresse aux chefs de projets qui spécifient des projets avec des interfaces interopérables et aux développeurs des interfaces interopérables des systèmes implémentant le volet « Transfert de données DUI ». Il s'adresse également à toute autre personne intervenant dans le processus de mise en place de ces interfaces et à tout porteur de SI cherchant à transporter de manière interopérable des données usagers vers un autre SI ainsi que les éditeurs de logiciels DUI.

L’hypothèse est faite que le lecteur est familier des standards CDA R2 et FHIR R4.

### Utilisation

Les spécifications d'interopérabilité présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d'un système d'information partagé. Il appartient à tout responsable de traitement de s'assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex.: cadre juridique, bonnes pratiques de sécurité, ergonomie, accessibilité ...).

### Standards utilisés

Les données véhiculées dans ce volet sont spécifiées dans le format CDA R2 niveau 3.

Les interactions entre les systèmes reposent quant à elles sur le standard HL7 FHIR Release 4. Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. Les syntaxes retenues sont la syntaxe XML et JSON.

#### Template CI-SIS de document CDA créé

Le tempalte CI-SIS de document CDA créé dans le cadre de ce guide d'implémentation est le suivant : <a href="ressources_cda.html#schémas-xsd">Export du dossier usager informatisé</a>

#### Ressources FHIR profilées

Les ressources profilées dans le cadre de ce guide d'implémentation sont les suivantes : 

| Ressource | Profil | Description |
| ----- | ----- | ----- |
| <a href="https://hl7.org/fhir/R4/documentreference.html">DocumentReference</a> | [TDDUIDocumentReference](StructureDefinition-tddui-documentreference.html) | Profil générique créé dans le contexte du transfert de données DUI pour véhiculer un document au format CDA (inspiré du flux d'ajout simplifié d'un document défini dans le profil PDSm) |
| <a href="https://hl7.org/fhir/R4/bundle.html">Bundle</a> | [TDDUIBundle](StructureDefinition-tddui-bundle.html) | Profil générique créé dans le contexte du transfert de données DUI pour véhiculer un lot de documents au format CDA |

### Flux

Les flux décrits dans ce guide d'implémentation sont les suivants.

| Flux | Emetteur | Récepteur |
| ----- | ----- | ----- |
| <a href="description_flux_1_ajout_doc.html">Flux 1 : Ajout d'un document</a> | Logiciel DUI | Logiciel DUI ou SI tiers |
| <a href="description_flux_2_ajout_lot_doc.html">Flux 2 : Ajout d'un lot de documents</a> | Logiciel DUI | Logiciel DUI ou SI tiers |
| <a href="description_flux_3_maj_doc.html">Flux 3 : Mise a jour d'un document</a> | Logiciel DUI | Logiciel DUI ou SI tiers |

Pour en savoir davantage, rendez-vous sur la page <a href="description_flux_synthese.html">Synthèse des flux</a>.

### Dépendances

{% include dependency-table.xhtml %}