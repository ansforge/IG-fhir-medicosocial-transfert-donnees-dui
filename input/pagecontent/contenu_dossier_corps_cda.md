### Section FR-Sejours

Cette section contient les informations relatives au séjour d'un usager dans une structure ESSMS.

La structure de la section se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/" height="400" name="FR-Sejours"></iframe>

<br>

#### Entrée FR-Sejour

Cette entrée est un élément de type organizer permettant de décrire le séjour d’un usager.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/" height="400" name="FR-Sejour"></iframe>

<br>

#### Entrée FR-Sejour-Admission

Cette entrée permet de décrire les données relatives à l'admission de l'usager au sein d'une structure.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/" height="400" name="FR-Sejour-Admission"></iframe>

<br>

**Contraintes spécifiques à l'entrée FR-Sejour-Admission :**

<table id="transportPatient">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
		<tr id="id">
			<td>id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant unique du séjour</strong><br>L'identifiant se forme en concaténant : 3+FINESS/idUsagerInterne-SEJOUR-NumeroDossier</td>
		</tr>
        <tr id="code">
			<td>code</td>
            <td>[1..1]</td>
			<td>Valeur fixée à : <br>@code = GEN-351 <br>@codeSystem = 1.2.250.1.213.1.1.4.322 <br>@displayName = Établissement ou service social ou médico-social (ESSMS) (optionnel)</td>
		</tr>
		<tr id="participantId">
            <td><strong>Entité juridique responsable de l'évènement</strong><br>participant[@classCode=RESP]/participantRole/scopingEntity/id</td>
            <td>[1..1]</td>
			<td>Si l'entité juridique responsable de l'évènement est renseignée, son identifiant est requis.</td>
        </tr>
        <tr id="participantStatut">
            <td><strong>Entité juridique responsable de l'évènement</strong><br>participant[@classCode=RESP]/participantRole/scopingEntity/code</td>
            <td>[0..1]</td>
			<td>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
    </tbody>
</table>

#### Entrée FR-Modalite-entree

Cette entrée permet d'indiquer la modalité d'entrée d'un usager dans un établissement.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/" height="400" name="FR-Modalite-entree"></iframe>

<br>

#### Entrée FR-Modalite-sortie

Cette entrée permet d'indiquer la modalité de sortie d'un usager dans un établissement.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/" height="400" name="FR-Modalite-sortie"></iframe>

<br>