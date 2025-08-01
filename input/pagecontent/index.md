<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
The Digital User File (DUI) centralizes all information concerning the person being cared for in social and medico-social facilities and services. 
The aim of this implementation guide is to define the specifications for DUI data transfer.
</p>

{% if site.data.info.releaselabel == 'public-comment' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation. La version courante est accessible à l'adresse : http://interop.esante.gouv.fr/ig/fhir/tddui
</p>
</blockquote>
</div>
{% endif %}


{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante est accessible à l'adresse : http://interop.esante.gouv.fr/ig/fhir/tddui</p>
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
- La spécification technique de contenu :  <br>
Il existe deux représentations techniques pour le contenu de l'export des données d'un logiciel DUI :
  * une représentation basée sur le standard FHIR afin de s’aligner sur les recommandations européennes et pour s’adapter aux évolutions des <a href="sfe_cas_usage.html">cas d'usage</a> de ce volet.<br>
  La représentation FHIR décrite dans ce guide est à privilégier pour toute nouvelle implémentation : section <a href="artifacts.html">Ressources de conformité</a>
  * une représentation basée sur le standard CDA qui est spécifiée dans le guide d'implémentation <a href="https://interop.esante.gouv.fr/ig/cda/tddui/">Médicosocial - Transfert de données DUI CDA</a>. Ce guide est restreint au cas d'usage SSIAD.
Les évolutions de ce guide d’implémentation sont limitées à des corrections techniques. Ce guide d'implementation sera déprécié lorsque la transition des éditeurs de CDA vers FHIR sera achevée.
- La spécification technique de transport : sections <a href="description_flux.html">Volume 2 - Détail des transactions</a> et <a href="artifacts.html">Ressources de conformité</a>
- Les annexes : 
   * <a href="mapping_fonctionnel_FHIR.html"> Mapping FHIR du modèle de contenu DUI</a>
   * <a href="annexes_documents_reference.html">Documents de référence</a>
   * <a href="annexes_acronymes.html">Acronymes</a>
   * <a href="annexes_codes_professions_roles_modes_exercices.html">Professions du médico-social</a>
   * <a href="securite.html">Sécurité</a>
   * <a href="downloads.html">Télerchargement et usages</a>

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
| <a href="https://hl7.org/fhir/R4/bundle.html">Bundle</a> | [TDDUIBundle](StructureDefinition-tddui-bundle.html) | Profil générique créé pour transmettre des données d'un logiciel DUI |
| <a href="https://hl7.org/fhir/R4/encounter.html">Encounter</a> | [TDDUIEncounter](StructureDefinition-tddui-encounter-sejour.html) | Profil de la ressource Encounter permettant de regrouper les informations relatives au séjour d'un usager dans une structure ESSMS |
| <a href="https://hl7.org/fhir/R4/organization.html">Organization</a> | [TDDUIOrganization](StructureDefinition-tddui-organization.html) | Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques. |
| <a href="https://hl7.org/fhir/R4/Patient.html">Patient</a> | [TDDUIPatient](StructureDefinition-tddui-patient.html) | Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis. |
| <a href="https://hl7.org/fhir/R4/Patient.html">Patient</a> | [TDDUIPatientINS](StructureDefinition-tddui-patient-ins.html) | Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis. |

### Flux

Les flux décrits dans ce guide d'implémentation sont les suivants.

| Flux | Emetteur | Récepteur |
| ----- | ----- | ----- |
| <a href="description_flux_1_transmission_donnees_dui.html">Flux 1 : Transmission de données DUI</a> | Logiciel DUI | SI tiers |

Pour en savoir davantage, rendez-vous sur la page <a href="description_flux_synthese.html">Synthèse des flux</a>.

### Dépendances

{% include dependency-table.xhtml %}
