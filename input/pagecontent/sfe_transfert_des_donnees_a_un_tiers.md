{% include figure-caption.html %}

### Définition des Processus collaboratif

Cette page décrit le processus collaboratif commun aux cas d’usage du volet : le transfert de tout ou partie des données d’un logiciel DUI vers un système cible. Les modalités propres à chaque cas d’usage sont détaillées dans la section [Cas d’usage](sfe_cas_usage.html).

Le processus collaboratif retenus dans le périmètre de la présente étude est représenté à l'aide d'un diagramme représentant les systèmes et rôles mis en jeu. Les *Rôles* relèvent du générique.

<figure style="text-align:center;">
{%include processus_transfert_dui.svg%}
<figcaption>Processus collaboratif "Transfert des données d'un logiciel DUI" </figcaption>
</figure>

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
  <li>l’ESSMS est tenu de transmettre ses données dans le cadre d’une obligation réglementaire (ex : RAMA)</li>
  </ul>
  </td>
  </tr>
  <tr>
    <th>Post-conditions</th>
    <td>
    <ul>
        <li>Le système cible a reçu les données transmises et peut les exploiter.</li>
      </ul>
    </td>
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

{% sql {
  "query" : "
    SELECT
      Title,
      Description,
      REPLACE(Purpose, '**Exemples**', '') AS Purpose,
      Web
    FROM Resources
    WHERE Type = 'ActorDefinition'
    ORDER BY Title
  ",
  "class" : "lines",
  "columns" : [
    {
      "title" : "Acteur", "type" : "link", "source" : "Title", "target" : "Web" },
    {
      "title" : "Description", "type" : "markdown", "source" : "Description" },
    {
      "title" : "Exemples", "type" : "markdown", "source" : "Purpose" }
  ]
} %}

### Identification des flux

Le processus collaboratif « Transfert des données d’un logiciel DUI » s’appuie sur les flux suivants.

<figure style="text-align:center;">
{%include flux1_fonctionnel.svg%}
<figcaption>Modélisation du cas d'usage </figcaption>
</figure>