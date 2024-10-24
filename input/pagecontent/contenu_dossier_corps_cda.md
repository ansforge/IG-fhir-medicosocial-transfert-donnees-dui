### Section FR-Statut-fonctionnel

La section FR-Statut-fonctionnel permet de fournir les résultats d’évaluation de l’usager (AGGIR, évaluation de la situation SSIAD, SERAFIN...).

<iframe src="./cda/" height="400" name="FR-Statut-fonctionnel"></iframe>

<br>

**Contrainte spécifique à la section FR-Statut-fonctionnel :**

<table id="sectionEvaluation">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
		<tr id="templateId">
			<td>templateId</td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Statut-fonctionnel (CI-SIS)</strong><br>@root=1.2.250.1.213.1.1.2.246</td>
		</tr>
	</tbody>
</table>
<br>

#### Entrée FR-Groupe-de-questionnaires-d-evaluation

Cette entrée permet de regrouper les évaluations par type.

<iframe src="./cda/" height="400" name="FR-Groupe-de-questionnaires-d-evaluation"></iframe>

<br>

**Contrainte spécifique à l'entrée FR-Groupe-de-questionnaires-d-evaluation :**

Dans ce volet, la liste des évaluations est fixée. Une entrée FR-Groupe-de-questionnaires-d-evaluation doit être créer par type d'évaluation véhiculé.

<table id="organizer">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
		<tr id="code">
			<td>code</td>
            <td>[1..1]</td>
			<td>Valeur issue du JDV_TypeEvaluation_CISIS (1.2.250.1.213.1.1.5.802)</td>
		</tr>
	</tbody>
</table>
<br>

##### Entrée FR-Evaluation

<iframe src="./cda/" height="400" name="FR-Evaluation"></iframe>

<br>

**Contraintes spécifiques à l'entrée FR-Evaluation :**

<table id="evaluation">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
        <tr id="templateId">
			<td>templateId</td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Evaluation (CI-SIS)</strong><br>@root=1.2.250.1.213.1.1.3.25</td>
		</tr>
		<tr id="id">
			<td>id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant unique de l'évaluation</strong><br>L'identifiant se forme en concaténant : 3+FINESS/idUsagerInterne-EVAL-idEvaluation</td>
		</tr>
		<tr id="code">
			<td>code</td>
			<td>[1..1]</td>
			<td><strong>Type d'évaluation</strong><br>Valeur issue du JDV_TypeEvaluation_CISIS (1.2.250.1.213.1.1.5.802)</td>
		</tr>
		<tr id="performerId">
            <td>performer/assignedEntity/id</td>
            <td>[1..1]</td>
			<td><strong>Identfiant de l'évaluateur</strong><br>Si l'évaluateur est renseigné, son identifiant est requis.</td>
        </tr>
		<tr id="performerEJid">
            <td>performer/assignedEntity/representedOrganization/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant de l'établissement de rattachement de l'évaluateur</strong><br>Si l'établissement de rattachement de l'évaluateur est renseigné, son identifiant est requis.</td>
        </tr>
        <tr id="performer">
            <td>performer/assignedEntity/representedOrganization/standardIndustryClassCode</td>
            <td>[0..1]</td>
			<td><strong>Statut juridique de l'établissement de rattachement de l'évaluateur</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
		<tr id="auteurId">
            <td>author/assignedAuthor/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant de l'auteur de l'évaluation</strong><br>Si l'auteur de l'évaluation est renseigné, son identifiant est requis.</td>
        </tr>
		<tr id="auteurEJid">
            <td>author/assignedAuthor/representedOrganization/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant de l'établissement de rattachement de l'auteur de l'évaluation</strong><br>Si l'établissement de rattachement de l'auteur de l'évaluation est renseigné, son identifiant est requis.</td>
        </tr>
        <tr id="auteurStatut">
            <td>author/assignedAuthor/representedOrganization/standardIndustryClassCode</td>
            <td>[0..1]</td>
			<td><strong>Statut juridique de l'établissement de rattachement de l'auteur de l'évaluation</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
        <tr id="participantId">
            <td>participant[@classCode=RESP]/participantRole/scopingEntity/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant du responsable de l'évaluation</strong><br>Si le responsable de l'évaluation est renseigné, son identifiant est requis.</td>
        </tr>
		<tr id="participantEJid">
            <td>participant[@classCode=RESP]/participantRole/scopingEntity/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant de l'établissement de rattachement du responsable de l'évaluation</strong><br>Si l'établissement de rattachement du responsable de l'évaluation est renseigné, son identifiant est requis.</td>
        </tr>
        <tr id="participantStatut">
            <td>participant[@classCode=RESP]/participantRole/scopingEntity/code</td>
            <td>[0..1]</td>
			<td><strong>Statut juridique de l'établissement de rattachement du responsable de l'évaluation</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
		<tr id="entry1">
			<td>entryRelationship/act/templateId</td>
            <td>[1..1]</td>
			<td><strong>Commentaire</strong><br>Conformité FR-Commentaire-ER (CI-SIS)<br>@root = 1.2.250.1.213.1.1.3.32</td>
		</tr>
        <tr id="entry2">
			<td>entryRelationship/act/templateId</td>
            <td>[1..1]</td>
			<td><strong>Pièces jointes</strong><br>Conformité FR-Reference-interne (CI-SIS)<br>@root = 1.2.250.1.213.1.1.3.36</td>
		</tr>
	</tbody>
</table>

La valeur de l'évaluation dépend du type d'évaluation qui équivaut au code de l'entrée FR-Groupe-de-questionnaires-d-evaluation :

<table id="valeurEvaluation">
    <thead>
		<tr>
			<th>Code de l'entrée <br>FR-Groupe-de-questionnaires-d-evaluation</th>
			<th>Type d'évaluation <br>(FR-Evaluation élément code)</th>
			<th>Valeur de l'évaluation <br>(FR-Evaluation élément value)</th>
		</tr>
    </thead>
    <tbody>
		<tr id="code">
		    <td>Evaluation AGGIR PH SSIAD</td>
			<td>Evaluation AGGIR PH SSIAD</td>
			<td>Valeur issue du JDV_GIR_CISIS (1.2.250.1.213.1.1.4.322)<br>L'attribut nullFlavor est interdit.</td>
		</tr>
        <tr id="value">
		    <td>Evaluation AGGIR PA SSIAD</td>
			<td>Evaluation AGGIR PA SSIAD</td>
			<td>Valeur issue du JDV_GIR_CISIS (1.2.250.1.213.1.1.4.322)<br>L'attribut nullFlavor est interdit.</td>
		</tr>
        <tr id="value">
			<td>Evaluation de la situation SSIAD</td>
			<td>Evaluation de la situation SSIAD</td>
			<td>nullFlavor='NA'</td>
		</tr>
        <tr id="value">
			<td>Evaluation SERAFIN</td>
			<td>Evaluation SERAFIN</td>
			<td>nullFlavor='NA'</td>
		</tr>
	</tbody>
</table>
<br>

##### Entrée FR-Evaluation-Composant

<iframe src="./cda/" height="400" name="FR-Evaluation-Composant"></iframe>

<br>

**Contraintes spécifiques à l'entrée FR-Evaluation-Composant :**

<table id="evaluationComposant">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
		<tr id="entry1">
			<td>entryRelationship/act/templateId</td>
            <td>[1..1]</td>
			<td><strong>Commentaire</strong><br>Conformité FR-Commentaire-ER (CI-SIS)<br>@root = 1.2.250.1.213.1.1.3.32</td>
		</tr>
	</tbody>
</table>

Le code ainsi que le résultat de l'évaluation dépendent du type d'évaluation véhiculé dans l'entrée FR-Evaluation :

<table id="valeurEvaluation">
    <thead>
		<tr>
			<th>Type d'évaluation <br>(FR-Evaluation élément code)</th>
			<th>Code de l'évaluation <br>(FR-Evaluation-Composant élément code)</th>
			<th>Résultat de l'évaluation <br>(FR-Evaluation-Composant élément value)</th>
		</tr>
    </thead>
    <tbody>
		<tr id="code">
			<td>Evaluation AGGIR PH SSIAD</td>
			<td>Jeu de valeurs en cours d'élaboration</td>
			<td>Type BL Boolean</td>
		</tr>
        <tr id="value">
			<td>Evaluation AGGIR PA SSIAD</td>
			<td>Jeu de valeurs en cours d'élaboration</td>
			<td>Type BL Boolean</td>
		</tr>
        <tr id="value">
			<td>Evaluation de la situation SSIAD</td>
			<td>Valeur issue du JDV_Evaluation_SSIAD_CISIS (1.2.250.1.213.1.1.5.804)<br>L'attribut nullFlavor est interdit.</td>
			<td>Type BL Boolean</td>
		</tr>
        <tr id="value">
			<td>EvaLuation SERAFIN</td>
			<td>Jeu de valeurs en cours d'élaboration</td>
			<td>Type INT Integer</td>
		</tr>
	</tbody>
</table>
<br>

### Section FR-Documents-ajoutes

La section FR-Documents-ajoutes permet d’ajouter les documents ou pièce jointes qui sont spécifiques au volet.
Dans le cadre de notre volet, il permet de véhiculer les pièces jointes associées à l’évaluation et à l'évènement de l’usager.

### Eléments transversaux

#### Entrée FR-Commentaire-ER

L’entrée FR-Commentaire-ER est un élément qui permet de joindre un commentaire à une entrée ou à une section.

<iframe src="./cda/" height="400" name="FR-Commentaire-ER"></iframe>

<br>

**Contrainte spécifique à l'entrée FR-Commentaire-ER :**

<table id="commentaire">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
		<tr id="templateId">
			<td>templateId</td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Commentaire-ER (CI-SIS)</strong><br>@root=1.2.250.1.213.1.1.3.32</td>
		</tr>
	</tbody>
</table>
<br>

#### Entrée FR-Reference-interne

L’entrée FR-Reference-interne permet de relier un élément à un autre élément du même document par l’intermédiaire son identifiant.

<iframe src="./cda/" height="400" name="FR-Commentaire-ER"></iframe>

<br>

**Contrainte spécifique à l'entrée FR-Reference-interne :**

<table id="commentaire">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
		<tr id="templateId">
			<td>templateId</td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Reference-interne (CI-SIS)</strong><br>@root=1.2.250.1.213.1.1.3.36</td>
		</tr>
	</tbody>
</table>
<br>