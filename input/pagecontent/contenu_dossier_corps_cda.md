### Section FR-Sejours

Cette section contient les informations relatives au séjour d'un usager dans une structure ESSMS.

**Ajout template CI-SIS**

#### Entrée FR-Sejour-Admission
Cette entrée permet de décrire les données relatives à l'admission de l'usager au sein d'une structure.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/" height="400" name="RecordTarget"></iframe>

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
        <tr id="code">
			<td>code</td>
            <td>[1..1]</td>
			<td>Valeur fixée à : <br>@code = GEN-351 <br>@codeSystem = 1.2.250.1.213.1.1.4.322 <br>@displayName = Établissement ou service social ou médico-social (ESSMS) (optionnel)</td>
		</tr>
    </tbody>
</table>

##### Entrée FR-Modalite-entree

Cette entrée permet d'indiquer la modalité d'entrée d'un usager dans un établissement.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/" height="400" name="RecordTarget"></iframe>

<br>

##### Entrée FR-Modalite-sortie

Cette entrée permet d'indiquer la modalité de sortie d'un usager dans un établissement.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/" height="400" name="RecordTarget"></iframe>

<br>