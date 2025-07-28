<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
The Digital User File (DUI) centralizes all information concerning the person being cared for in social and medico-social facilities and services. 
The aim of this implementation guide is to define the specifications for DUI data transfer.
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation.
</p>
</blockquote>
</div>
{% endif %}

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
- Les spécifications fonctionnelles : section <a href="sfe.html"> Spécifications fonctionnelles</a>
- Les spécifications techniques : sections <a href="description_flux.html">Volume 2 - Détail des transactions</a> et <a href="artifacts.html">Ressources de conformité</a>

<b>Remarque</b> : l'actuelle version de la spécification technique de contenu repose sur un périmètre restreint d'export des données de logiciels DUI :
- NIR/traits d'identité principaux du patient ;
- évaluation de l'autonomie de l'usager accompagnée (ou non) de ses grilles d'évaluation structurées ou non structurées ;
- évènements de l'agenda usager organisés par l’ESSMS entrant dans la thérapie de l’usager ;
- transports de l'usager associé aux évènements de l'agenda usager ;
- informations sur le séjour de l'usager.

### Lectorat cible

Ce document s'adresse aux chefs de projets qui spécifient des projets avec des interfaces interopérables et aux développeurs des interfaces interopérables des systèmes implémentant le volet « Transfert de données DUI ». Il s'adresse également à toute autre personne intervenant dans le processus de mise en place de ces interfaces et à tout porteur de SI cherchant à transporter de manière interopérable des données usagers vers un autre SI ainsi que les éditeurs de logiciels DUI.

L’hypothèse est faite que le lecteur est familier du standard FHIR R4.

### Utilisation

Les spécifications d'interopérabilité présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d'un système d'information partagé. Il appartient à tout responsable de traitement de s'assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex.: cadre juridique, bonnes pratiques de sécurité, ergonomie, accessibilité ...).

### Standards utilisés

Les données véhiculées dans ce volet ainsi que les interactions entre les systèmes reposent sur le standard HL7 FHIR Release 4.

Les interactions font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. Les syntaxes retenues sont la syntaxe XML et JSON.

#### Ressources FHIR profilées

Les ressources profilées dans le cadre de ce guide d'implémentation sont les suivantes : 

| Ressource | Profil | Description |
| ----- | ----- | ----- |
| <a href="https://hl7.org/fhir/R4/bundle.html">Bundle</a> | [TDDUIBundle](StructureDefinition-tddui-bundle.html) | Profil générique créé dans le contexte du transfert de données DUI pour véhiculer un lot de documents au format CDA |

### Flux

Les flux décrits dans ce guide d'implémentation sont les suivants.

| Flux | Emetteur | Récepteur |
| ----- | ----- | ----- |
| <a href="description_flux_1_ajout_doc.html">Flux 1 : Ajout d'un document</a> | Logiciel DUI | Logiciel DUI ou SI tiers |

Pour en savoir davantage, rendez-vous sur la page <a href="description_flux_synthese.html">Synthèse des flux</a>.

### Dépendances

{% include dependency-table.xhtml %}