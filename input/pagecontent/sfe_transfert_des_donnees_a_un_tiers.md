

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
    <a href="sfe_cas_usage.html"><span style="color:windowtext;">"Cas d'usage"</span></a>.
    </td>
  </tr>
</table>

### Liste des acteurs pour l’ensemble des processus

#### Le producteur 

Le rôle de producteur incarné par un système correspond à l’acteur à l’origine de l’export des données d’un logiciel DUI.

#### Le consommateur

Le rôle de consommateur incarné par un système se caractérise par réceptionner puis importer l’export des données DUI dans son système (SI-tiers). 

### Identification des flux

<table style="width:100%">
  <tr>
    <th>Processus métier</th>
    <th>Flux techniques</th>
  </tr>
  <tr>
    <td rowspan="2">
      <ul>
      <li>Export des données d'un logiciel DUI</li>
      </ul>
    </td>
    <td>
      <ul>
      <li>Flux 1.1 - Transmission de données DUI</li>
      <li>Flux 1.2 - Résultat de la transmission de données DUI</li>
      </ul>
      {%include flux1_fonctionnel.svg%} <br>
      Lien vers la description détaillée : <a href="description_flux_1_transmission_donnees_dui.html">flux 1</a>
    </td>
  </tr>
</table>