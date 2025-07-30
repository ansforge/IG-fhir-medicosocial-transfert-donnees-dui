<table style="width:100%">
  <tr>
    <th>Processus métier</th>
    <th>Flux techniques</th>
  </tr>
  <tr>
    <td rowspan="2">
      <ul>
      <li>Transfert des données d'un logiciel DUI</li>
      </ul>
    </td>
    <td>
      <ul>
      <li>Flux 1.1 - Transmission de données DUI : interaction « create » de FHIR</li>
      <li>Flux 1.2 - Résultat de la transmission de données DUI : réponse à la requête HTTP POST</li>
      </ul>
      {%include flux1.svg%} <br>
      Lien vers la description détaillée : <a href="description_flux_1_transmission_donnees_dui.html">flux 1</a>
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
  <tr>
    <td>
      <ul>
      <li>Mettre à jour les données échangées entre 2 logiciels DUI</li>
      <li>Mettre à jour les données de l’usager transférées depuis un
logiciel DUI vers un SI tiers</li>
      </ul>
    </td>
    <td>
      <ul>
      <li>Flux 3.1 - Mise à jour partielle d'un document : interaction « patch » de FHIR</li>
      <li>Flux 3.2 - Résultat de la mise à jour d'un document : réponse à la requête HTTP PATCH</li>
      </ul>
      {%include flux3.svg%} <br>
      Lien vers la description détaillée : <a href="description_flux_3_maj_doc.html">flux 3</a>
    </td>
  </tr>
</table>