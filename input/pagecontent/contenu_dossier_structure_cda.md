<style>

	<!-- Propriétés de style générales (taille, couleurs et police de texte, bordures) du tableau -->
	table {
		width: 101%;
		border-collapse: collapse;
		border: none
	}

	th, td {
		border: solid windowtext 0.5pt !important;
		font-family: "Arial", sans-serif;
		font-size: 12px;
		color: black
	}

	red { 
		color: #c00000
	}

	<!-- Propriétés spécifiques à des lignes ou des colonnes de tableau (fond de couleur, centrage) -->
	#cda td:nth-child(2),
	#cda td:nth-child(3),
	#cda td:nth-child(4),
	#cda th:nth-child(5),
	#cda td:nth-child(5) {
		width: auto
	}

	#cda th:nth-child(4),
	#cda td:nth-child(4)
	#cda th:nth-child(5),
	#cda td:nth-child(5) {
		text-align: center;
	}

	#line1 td {
		background: #FFE699
	}

	#lvl1 td {
		background: #A6A6A6
	}

	#lvl2 td {
		background: #E0E0E0
	}

</style>

Cette section présente la structure générale des données de l’usager organisées en entête et corps.


Les éléments apparaissant en <red>rouge</red> correspondent aux règles spécifiques à mettre en place.

Les éléments en <i><u>italique soulignés</u></i> correspondent aux cardinalités de base de CDA contraintes pour ce volet.

Les éléments imposés par le standard CDA ou le CI-SIS sont indiqués par « **X** » dans la colonne « **Elément de la spécification Fonctionnelle de Contenu** (SFC) ».

<table id="cda">
	<thead>
		<tr>
			<th>Niv.</th>
			<th>Elément XML</th>
			<th>Type</th>
			<th>Card.</th>
			<th>Elément de la SFC</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
	</thead>
	<tbody>
		<tr id="line1">
			<td>0</td>
			<td>clinicalDocument</td>
			<td></td>
			<td></td>
			<td></td>
			<td><p><strong>Document CDA</strong></p>
			<p>@classCode = "DOCCLIN"
			<br>@moodCode = "EVN"</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>realmCode</td>
			<td>CS</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Périmètre d'utilisation : France</strong></p>
			<p>@code = "FR"</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>typeID</td>
			<td>II</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Référence au standard CDA R2</strong></p>
			<p>@root = 2.16.840.1.113883.1.3
			<br>@extension = « POCD_HD000040 »</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>templateID</td>
			<td>II</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Déclaration de conformité du document aux spécifications HL7 France</strong></p>
			<p>@root = 2.16.840.1.113883.2.8.2.1</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>templateID</td>
			<td>II</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Déclaration de conformité du document aux spécifications CI-SIS</strong></p>
			<p>@root = 1.2.250.1.213.1.1.1.1</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>templateID</td>
			<td>II</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Déclaration de conformité du document au modèle de document structuré MS-TD-DUI (Transfert de données DUI)</strong></p>
			<p>@root = 1.2.250.1.213.1.1.1.58
			<br>@extension (facultatif) = version du guide d'implémentation utilisé</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>id</td>
			<td>II</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Identifiant unique du document</strong>
			<br><red>Attribut nullFlavor interdit</red></p>
			<p>@root (obligatoire) = valeur d'un OID propre à l'émetteur, formé d'un OID complet identifiant l'instance du document.
			</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>code</td>
			<td>CE</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Type de document</strong></p>
			<p><red>@code = Code issu du <a href="https://mos.esante.gouv.fr/NOS/JDV_J07-XdsTypeCode-CISIS/JDV_J07-XdsTypeCode-CISIS.pdf">JDV_J07-XdsTypeCode-CISIS</a> fixé à « EXPORT_DUI »
			<br>@displayName = « Export du Dossier Usager Informatisé »
			<br>@codeSystem = 1.2.250.1.213.1.1.4.12</red></p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>title</td>
			<td>ST</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><strong>Titre du document</strong>
			<br><red>Le titre provient soit de la saisie directe par le PS ou du patient/usager, soit d'une valeur par défaut générée par le LPS à partir d'autres éléments (comme le type et la date du document par exemple) et modifiable par le PS ou le patient/usager.</red></td>
		</tr>
		<tr>
			<td>1</td>
			<td>effectiveTime</td>
			<td>TS</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Date et heure de création du document (précisée à la seconde)</strong></p>
			<p>@value = Horodatage généré automatiquement par le logiciel lors de la création du document.</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>confidentialityCode</td>
			<td>CE</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Niveau de confidentialité du document.</strong>
			<br>Code issu du JDV_HL7_Confidentiality-CISIS</p>
			<p>@code = Valeur fixée à : « N »
			<br>@codeSystem = 2.16.840.1.113883.5.25 
			<bR>@displayName = « Normal »</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>languageCode</td>
			<td>CS</td>
			<td>[1..1]</td>
			<td>X</td>
			<td><p><strong>Langue principale du document</strong></p>
			<p>@code = « fr-FR » (respect de la casse)</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>setID</td>
			<td>II</td>
			<td>[0..1]</td>
			<td></td>
			<td><p><strong>Identification du lot de versions du même document</strong>
			<br><red>Attribut nullFlavor interdit</red></p>
			<p>@root = valeur d'un OID propre à l'émetteur, formée d'un OID identifiant le lot de versions du document</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>versionNumber</td>
			<td>INT</td>
			<td>[0..1]</td>
			<td></td>
			<td><p><strong>Numéro de version d'un document permettant de suivre son évolution</strong></p>
			<p>@value = entier incrémenté à partir de 1 par pas de 1 à chaque nouvelle version du document</p></td>
		</tr>
		<tr>
			<td>1</td>
			<td>recordTarget</td>
			<td></td>
			<td>[1..1]</td>
			<td>X<br>classe usager</td>
			<td><strong>Information sur l'identité de l'usager concerné par le document</strong>
			<br>Le contenu de l'élément est décrit dans la rubrique <a href="contenu_dossier_entete_cda.html#recordtarget">recordTarget</a></td>
		</tr>
		<tr>
			<td>1</td>
			<td>author</td>
			<td></td>
			<td>[1..1]</td>
			<td>X</td>
			<td><strong>Auteur du document</strong>
			<br>Le contenu de l'élément est décrit dans la rubrique <a href="contenu_dossier_entete_cda.html#author">author</a></td>
		</tr>
		<tr>
			<td>1</td>
			<td>custodian</td>
			<td></td>
			<td>[1..1]</td>
			<td>X</td>
			<td><strong>Structure conservant le document et garantissant son cycle de vie</strong>
			<br>Le contenu de l'élément est décrit dans la rubrique <a href="contenu_dossier_entete_cda.html#custodian">custodian</a></td>
		</tr>
		<tr>
			<td>1</td>
			<td>legalAuthenticator</td>
			<td></td>
			<td>[1..1]</td>
			<td>X</td>
			<td><strong>Professionnel ou patient/usager ou système responsable du document</strong>
			<br>Le contenu de l'élément est décrit dans la rubrique <a href="contenu_dossier_entete_cda.html#legalauthentificator">legalAuthenticator</a></td>
		</tr>
		<tr>
			<td>1</td>
			<td>documentationOf</td>
			<td></td>
			<td>[1..*]</td>
			<td>X</td>
			<td><strong>Evènement documenté</strong>
			<br>Le contenu de l'élément est décrit dans la rubrique <a href="contenu_dossier_entete_cda.html#documentationof">documentationOf</a></td>
		</tr>
		<tr>
			<td>1</td>
			<td>relatedDocument</td>
			<td></td>
			<td>[0..1]</td>
			<td></td>
			<td><strong>Document de référence à remplacer, transformer</strong>
			<br>Le contenu de l'élément est décrit dans la rubrique <a href="contenu_dossier_entete_cda.html#relateddocument">relatedDocument</a></td>
		</tr>
		<tr>
			<td>1</td>
			<td>componentOf</td>
			<td></td>
			<td>[1..1]</td>
			<td>X</td>
			<td><strong>Association du document à une prise en charge</strong>
			<br>Le contenu de l'élément est décrit dans la rubrique <a href="contenu_dossier_entete_cda.html#componentof">componentOf</a></td>
		</tr>
		<tr id="lvl1">
			<td>1</td>
			<td>component</td>
			<td></td>
			<td>[1..1]</td>
			<td>X</td>
			<td>Représente le corps du document CDA</td>
		</tr>
		<tr>
			<td>2</td>
			<td>structuredBody</td>
			<td></td>
			<td>[1..1]</td>
			<td></td>
			<td></td>
		</tr>
		<tr id="lvl2">
			<td>3</td>
			<td>component</td>
			<td></td>
			<td>[0..*]</td>
			<td></td>
			<td><strong>Informations sur les données relatives à l'évaluation de l'usager et à ses grilles d'évaluation</strong>
			<br>Le contenu de l'élément est décrit dans la rubrique <a href="contenu_dossier_corps_cda.html#section-fr-evaluation-du-statut-fonctionnel">Section FR-Evaluation-du-statut-fonctionnel</a></td>
		</tr>
		<tr>
			<td>4</td>
			<td>section FR-Evaluation-du-statut-fonctionnel</td>
			<td></td>
			<td>[1..1]</td>
			<td></td>
			<td></td>
		</tr>
		<tr id="lvl2">
			<td>3</td>
			<td>component</td>
			<td></td>
			<td>[0..*]</td>
			<td></td>
			<td><strong>Informations sur les pièces jointes ajoutées au document</strong>
			<br>Le contenu de l'élément est décrit dans la rubrique <a href="contenu_dossier_corps_cda.html#section-fr-documents-ajoutes">FR-Documents-ajoutes</a></td>
		</tr>
		<tr>
			<td>4</td>
			<td>section FR-Documents-ajoutes</td>
			<td></td>
			<td>[1..1]</td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>
