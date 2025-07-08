

### Définition des Processus collaboratif

<!-- commande pour insérer un fichier plantuml dans un fichier .md -->
<div style="text-align:center;">{%include processus_export_dui.svg%}</div>

<table style="width:100%">
  <tr>
    <th>Service attendu</th>
    <td>L'ESSMS d'origine transfère des données de son logiciel DUI vers un système cible : un SI-Tiers.</td>
  </tr>
  <tr>
    <th>Pré-conditions</th>
  <td>
  <ul>
  <li>L’usager est enregistré dans le logiciel DUI de l’ESSMS.</li>
  <li>Un SI Tiers a demandé à l’ESSMS de lui transmettre tout ou partie des données médico-sociales de l’usager.</li>
  </ul>
  </td>
  </tr>
  <tr>
    <th>Post-conditions</th>
    <td>N/A</td>
  </tr>
  <tr>
    <th>Contraintes fonctionnelles</th>
    <td>N/A</td>
  </tr>
  <tr>
    <th>Scénario nominal</th>
    <td>Scénario conforme aux cas d'usages décrits dans 
    <a href="sfe_cadre_juridique.html#exemples-de-cas-dusage"><span style="color:windowtext;">"Exemples de cas d'usage"</span></a>.
    </td>
  </tr>
</table>

### Liste des acteurs pour l’ensemble des processus

#### Le demandeur

Le demandeur est l’acteur à l’origine du besoin. Il peut s’agir d’une personne physique ou morale.

<table style="width:100%">
  <tr>
    <th>Processus collaboratif</th>
    <th>Demandeur</th>
  </tr>
  <tr>
    <td rowspan=2>Export des données d’un logiciel DUI</td>
    <td><b>ESSMS</b> : Etablissement qui accompagne l’usager. Il assure la gestion de l’accompagnement de l'usager à travers son logiciel DUI.</td>
  </tr>
</table>

#### Le producteur 

Le rôle de producteur incarné par un système est l’acteur à l’origine de l’export des données.

<table style="width:100%">
  <tr>
    <th>Processus collaboratif</th>
    <th>Producteur</th>
  </tr>
  <tr>
    <td>Export des données d’un logiciel DUI</td>
    <td rowspan="3"><b>DUI</b> : Logiciel Métier utilisé par les ESSMS permettant de gérer les dossiers des usagers avant, pendant et après son accompagnement</td>
  </tr>
</table>

#### Le consommateur

Le rôle de consommateur incarné par un système est de réceptionner et d’importer les données dans son système (SI-tiers). 

<table style="width:100%">
  <tr>
    <th>Processus collaboratif</th>
    <th>Demandeur</th>
  </tr>
  <tr>
    <td>Export des données d’un logiciel DUI</td>
  </tr>
</table>

### Identification des flux

<table style="width:100%">
  <tr>
    <th>Processus métier</th>
    <th>Flux techniques</th>
  </tr>
  <tr>
    <td rowspan="2">
      <ul>
      <li>Transférer les données d’un logiciel DUI vers un SI tiers</li>
      </ul>
    </td>
    <td>
      <ul>
      <li>Flux 1.1 - Ajout d'un document : interaction « create » de FHIR</li>
      <li>Flux 1.2 - Résultat de l'ajout d'un document : réponse à la requête HTTP POST</li>
      </ul>
      {%include flux1.svg%} <br>
      Lien vers la description détaillée : <a href="description_flux_1_ajout_doc.html">flux 1</a>
    </td>
  </tr>
  <tr>
    <td>
      <ul>
      <li>Flux 2.1 - Ajout d'un lot de documents : interaction « transaction » de FHIR</li>
      <li>Flux 2.2 - Résultat de l'ajout d'un lots documents : réponse à la requête HTTP POST</li>
      </ul>
      {%include flux2.svg%} <br>
      Lien vers la description détaillée : <a href="description_flux_2_ajout_lot_doc.html">flux 2</a>
    </td>
  </tr>
</table>