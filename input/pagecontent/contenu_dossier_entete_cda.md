<style>

    <!-- Propriétés de style générales (taille, couleurs et police de texte, bordures) -->
    table {
        width: 100%;
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

	<!-- Propriétés spécifiques à des lignes ou des colonnes (fond de couleur, centrage) -->
	#cda td:nth-child(2),
	#cda td:nth-child(3),
	#cda td:nth-child(4),
	#cda th:nth-child(5),
	#cda td:nth-child(5) {
		width: auto
	}

	#cda th:nth-child(4),
	#cda td:nth-child(4),
	#cda th:nth-child(5),
	#cda td:nth-child(5) {
		text-align: center
	}

	#line1 td {
		background: #FFE699
	}

	#lvl1 td {
		background: #F4B084
	}

	#lvl2 td {
		background: #FCE4D6
	}

	#extension td {
		color: #4472C4;
		font-weight: bold
	}

</style>

### RecordTarget

L’élément RecordTarget, imposé par le standard CDA, permet de décrire les informations essentielles concernant l'usager des services médico-sociaux. Il regroupe les données personnelles de la personne accompagnée, telles que son nom, prénom, sexe, date de naissance et éventuellement des informations supplémentaires comme son lieu de naissance ou son tuteur légal.

La structure de l'élément RecordTarget se conforme aux contraintes et définitions présentées dans le **Volet Structuration minimale des documents de santé** :

<iframe src="./cda/" height="400" name="RecordTarget" style="border: 1px solid black"></iframe>

<br>

**Le tableau ci-dessous présente les contraintes spécifiques à l'entête TDDUI :**

<table id="cda">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
        <tr id="id">
            <td>patientRole/id</td>
            <td>[1..*]</td>
            <td>Il est demandé que le matricule INS de l'usager soit transporté en priorité. Dans le cas contraire, l’identifiant local produit par le système ou le NIR de l'ayant-droit peuvent être transportés.</td>
        </tr>
        <tr id="nom">
            <td>patientRole/patient/name/family</td>
            <td>[1..*]</td>
            <td>Au moins un nom doit être transmis. L'attribut nullFlavor est interdit.</td>
        </tr>
        <tr id="nomNaissance">
            <td><strong>Nom de naissance</strong><br>patientRole/patient/name/family@qualifier="BR"</td>
            <td>[0..1]</td>
            <td>
            <ul>
                <li>Si le matricule INS de l'usager est présent, cet élément est obligatoire et l'attribut nullFlavor est interdit.</li>
                <li>Si le matricule INS de l'usager n'est pas présent, il est préconisé de renseigner le nom de naissance de l'usager. Cet élément est optionnel.</li>
            </ul>
            </td>
        </tr>
        <tr id="prenoms">
            <td>patientRole/patient/name/given</td>
            <td>[1..*]</td>
            <td>Au moins un prénom doit être transmis. L'attribut nullFlavor est interdit.</td>
        </tr>
        <tr id="prenomsListe">
            <td><strong>Liste des prénoms de l'acte de naissance</strong><br>patientRole/patient/name/given (pas de qualifier)</td>
            <td>[0..1]</td>
            <td>
            <ul>
                <li>Si le matricule INS de l'usager est présent, cet élément est obligatoire et l'attribut nullFlavor est interdit.</li>
                <li>Si le matricule INS de l'usager n'est pas présent, il est préconisé de renseigner la liste des prénoms de l'acte de naissance de l'usager. Cet élément est optionnel.</li>
            </ul>
            </td>
        </tr>
        <tr id="premierPrenom">
            <td><strong>Premier prénom</strong><br>patientRole/patient/name/given@qualifier="BR"</td>
            <td>[0..1]</td>
            <td>
            <ul>
                <li>Si le matricule INS de l'usager est présent, cet élément est obligatoire et l'attribut nullFlavor est interdit.</li>
                <li>Si le matricule INS de l'usager n'est pas présent, il est préconisé de renseigner le premier prénom de l'usager. Cet élément est optionnel.</li>
            </ul>
            </td>
        </tr>
        <tr id="sexe">
            <td>patientRole/patient/administrativeGenderCode</td>
            <td>[1..1]</td>
            <td>
            <ul>
                <li>Si le matricule INS de l'usager est présent, cet élément est obligatoire et l'attribut nullFlavor est interdit.</li>
                <li>Si le matricule INS de l'usager n'est pas présent, il est préconisé de renseigner cet élément. Si le sexe de l'usager n'est pas connu de votre système, l'attribut nullFlavor peut être utilisé.</li>
            </ul>
            </td>
        </tr>
        <tr id="dateNaissance">
            <td>patientRole/patient/birthTime</td>
            <td>[1..1]</td>
            <td>
            <ul>
                <li>Si le matricule INS de l'usager est présent, cet élément est obligatoire et l'attribut nullFlavor est interdit.</li>
                <li>Si le matricule INS de l'usager n'est pas présent, il est préconisé de renseigner cet élément. Si la date et l'heure de naissance de l'usager n'est pas connue de votre système, l'attribut nullFlavor peut être utilisé.</li>
            </ul>
            </td>
        </tr>
        <tr id="lieuNaissance">
			<td>patientRole/patient/birthplace/place/addr/county</td>
			<td>[0..1]</td>
			<td>
            <ul>
                <li>Si le matricule INS de l'usager est présent, le lieu de naissance de l'usager est obligatoire et l'attribut nullFlavor est interdit.</li>
                <li>Si le matricule INS de l'usager n'est pas présent, il est préconisé de renseigner le lieu de naissance de l'usager. Cet élément est optionnel.</li>
            </ul>
            </td>
		</tr>
		<tr id="multipleBirthOrderNumber">
			<td>patientRole/patient/sdtc:multipleBirthOrderNumber</td>
			<td>[0..1]</td>
			<td>Si le matricule INS de l'usager n'est pas présent, l'ordre de naissance de l'usager est requis.</td>
		</tr>
	</tbody>
</table>

### Author

L’élément Author, imposé par le standard CDA, représente la participation d’un auteur à l’élaboration du document. Dans ce contexte, l’author ne fait pas référence à une personne physique, mais à un système informatique, spécifiquement un **logiciel DUI** (Dossier Usager Informatisé). Ce logiciel est responsable de la création ou de la gestion du document, et son rôle est de générer les données et de les structurer selon les besoins du suivi médico-social. Cet élément garantit la traçabilité des informations générées par le système tout au long du parcours de l’usager.

La structure de l'élément Author se conforme aux contraintes et définitions présentées dans le **Volet Structuration minimale des documents de santé** :

<iframe src="./cda/" height="400" name="Author" style="border: 1px solid black"></iframe>

<br>

**Le tableau ci-dessous présente les contraintes spécifiques à l'entête TDDUI :**

<table id="cda">
    <thead>
        <tr>
            <th>Elément XML</th>
            <th>Card.</th>
            <th>Contenu de l'élément CDA</th>
        </tr>
	</thead>
	<tbody>
        <tr>
            <td>assignedAuthor/id</td>
            <td>[1..1]</td>
            <td><p><strong>Identifiant de l'auteur</strong>
			<br>Attribut nullFlavor interdit</p>
			<p>@root = 1.2.250.1.71.4.2.1 (OID autorité d'attribution des systèmes et des professionnels)</p>
			<p>@extension = Valeur de l'identifiant :
			<br>Concaténation de :
			<br><span style="padding:0 0 0 20px">- Identifiant de la structure</span>
			<br><span style="padding:0 0 0 20px">- Caractère "/"</span>
			<br><span style="padding:0 0 0 20px">- Identifiant interne du système dans la structure</span></p></td>
        </tr>
        <tr>
            <td>assignedAuthor/code</td>
            <td>[1..1]</td>
            <td><p><strong>Profession / savoir-faire ou rôle</strong></p>
			<p>@code = LOGICIEL_DUI
			<br>@displayName = Logiciel de Dossier Usager Informatisé (optionnel)
			<br>@codeSystem = 1.2.250.1.213.1.1.4.6</p></td>
        </tr>
        <tr>
            <td>assignedAuthor/assignedAuthoringDevice</td>
            <td>[1..1]</td>
            <td><p><strong>Informations complémentaires</strong>
			<br>• Obligatoire pour un système</p></td>
        </tr>
		<tr>
            <td>assignedAuthor/representedOrganization</td>
            <td>[1..1]</td>
            <td><p><strong>Structure correspondante</strong>
			<br>• Obligatoire pour un système</p></td>
        </tr>
		<tr>
            <td>assignedAuthor/representedOrganization/id</td>
            <td>[0..1]</td>
            <td><p><strong>Identifiant de la structure</strong></p>
			<p>@root = 1.2.250.1.71.4.2.2 (OID autorité d'attribution des identifiants des structures)</p>
			<p>@extension = "Struct_idNat" (voir <a href="https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures">Annexe - sources des données personnes et structures</a>)</p></td>
        </tr>
    </tbody>
</table>

<br>

### Custodian

L’élément Custodian, imposé par le standard CDA, représente la structure chargée de la conservation du document. Il s’agit ici dans le cadre de ce volet de l’**ESSMS** (Établissement ou Service Social et Médico-Social) qui est responsable de la garde et de la sécurité du document. En tant qu’entité juridique, l’ESSMS est le dépositaire du dossier de l’usager et garantit la confidentialité, l’intégrité et la sécurité des données. Il peut s'agir d'une maison de retraite, d’un établissement pour personnes handicapées ou d’un autre service médico-social.

La structure de l'élément Custodian se conforme aux contraintes et définitions présentées dans le **Volet Structuration minimale des documents de santé** :

<iframe src="./cda/" height="400" name="Custodian"></iframe>

<br>

**Le tableau ci-dessous présente les contraintes spécifiques à l'entête TDDUI :**

<table id="cda">
    <thead>
        <tr>
            <th>Elément XML</th>
            <th>Card.</th>
            <th>Contenu de l'élément CDA</th>
        </tr>
	</thead>
	<tbody>
        <tr>
            <td>assignedCustodian/representedCustodianOrganization/id</td>
            <td>[1..1]</td>
            <td><p><strong>Identifiant de la structure ESSMS</strong></p>
			<p>@root = 1.2.250.1.71.4.2.2 (OID autorité d'attribution des identifiants des structures)</p>
			<p>@extension = Struct_idNat (voir <a href="https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures">Annexe - sources des données personnes et structures</a>)</p></td>
        </tr>
        <tr>
            <td>assignedCustodian/representedCustodianOrganization/name</td>
            <td>[0..1]</td>
            <td><p><strong>Nom de la structure ESSMS</strong></p>
			<p>Valeur fixée à "Struct_Nom" (voir <a href="https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures">Annexe - sources des données personnes et structures</a>)</p></td>
        </tr>
    </tbody>
</table>

<br>

### LegalAuthentificator

L’élément legalAuthentificator, imposé par le standard CDA, représente le responsable du document. Le rôle du legalAuthenticator est rempli par un **système informatique rattaché à une structure ESSMS**, qui valide officiellement le document en lui conférant une valeur légale et authentique. Il peut s'agir du système qui certifie que les informations présentes dans le document ont été vérifiées et approuvées par l’établissement.

La structure de l'élément LegalAuthentificator se conforme aux contraintes et définitions présentées dans le **Volet Structuration minimale des documents de santé** : 

<iframe src="./cda/" height="400" name="LegalAuthentificator"></iframe>

<br>

**Le tableau ci-dessous présente les contraintes spécifiques à l'entête TDDUI :**

<table id="cda">
    <thead>
        <tr>
            <th>Elément XML</th>
            <th>Card.</th>
            <th>Contenu de l'élément CDA</th>
        </tr>
	</thead>
	<tbody>
        <tr>
            <td>assignedEntity/id</td>
            <td>[1..1] </td>
            <td><p><strong>Identifiant du système responsable de la production du document</strong>
			<br>Attribut nullFlavor interdit</p>
			<p>@root = 1.2.250.1.71.4.2.1 (OID autorité d'attribution des systèmes et des professionnels)</p>
			<p>@extension = Valeur de l'identifiant :
			<br>Concaténation de :
			<br><span style="padding:0 0 0 20px">- Identifiant de la structure</span>
			<br><span style="padding:0 0 0 20px">- Caractère "/"</span>
			<br><span style="padding:0 0 0 20px">- Identifiant interne du système dans la structure</span></p></td>
        </tr>
        <tr>
            <td>assignedEntity/code</td>
            <td>[0..1] </td>
            <td><p><strong>Profession ou rôle du responsable</strong></p>
			<p>@code = LOGICIEL_DUI
			<br>@displayName = Logiciel de Dossier Usager Informatisé (optionnel)
			<br>@codeSystem = 1.2.250.1.213.1.1.4.6</p></td>
        </tr>
         <tr>
            <td>assignedEntity/representedOrganization/id</td>
            <td>[0..*] </td>
            <td><p><strong>Structure responsable du document</strong>
			<br>Attribut nullFlavor interdit</p>
			<p>@root = 1.2.250.1.71.4.2.2 (OID autorité d'attribution des identifiants des structures)</p>
			<p>@extension = Struct_idNat (voir <a href="https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures">Annexe - sources des données personnes et structures</a>)</p></td>
        </tr>
    </tbody>
</table>

<br>

### DocumentationOf

L’élément DocumentationOf imposé par, le standard CDA, documente le transfert de données.

La structure de l'élément DocumentationOf se conforme aux contraintes et définitions présentées dans le **Volet Structuration minimale des documents de santé** :

<iframe src="./cda/" height="400" name="DocumentationOf"></iframe>

**Le tableau ci-dessous présente les contraintes spécifiques à l'entête TDDUI :**

<table id="cda">
    <thead>
        <tr>
            <th>Elément XML</th>
            <th>Card.</th>
            <th>Contenu de l'élément CDA</th>
        </tr>
	</thead>
	<tbody>
        <tr>
            <td>serviceEvent/effectiveTime</td>
            <td>[1..1] </td>
            <td><p><strong>Date de création du document</strong>
            <br>Attribut nullFlavor interdit</p></td>
        </tr>
        <tr>
            <td>serviceEvent/performer</td>
            <td>[1..1] </td>
            <td><p><strong>Système ayant réalisé le transfert de données</strong>
            <br>Attribut nullFlavor interdit</p></td>
        </tr>
        <tr>
            <td>serviceEvent/performer/assignedEntity/id</td>
            <td>[1..1] </td>
            <td><strong>Identifiant du système responsable du transfert de données</strong>
            <p>@root = 1.2.250.1.71.4.2.1 (OID autorité d'attribution des systèmes et des professionnels)</p>
            <p>@extension = Valeur de l'identifiant :
			<br>Concaténation de :
			<br><span style="padding:0 0 0 20px">- Identifiant de la structure</span>
			<br><span style="padding:0 0 0 20px">- Caractère "/"</span>
			<br><span style="padding:0 0 0 20px">- Identifiant interne du système dans la structure</span></p>
            </td>
        </tr>
        <tr>
            <td>serviceEvent/performer/assignedEntity/code</td>
            <td>[0..1]</td>
            <td><p><strong>Système utilisé</strong></p>
			<p>@code = LOGICIEL_DUI
			<br>@displayName = Logiciel de Dossier Usager Informatisé (optionnel)
			<br>@codeSystem = 1.2.250.1.213.1.1.4.6</p></td>
        </tr>
        <tr>
            <td>serviceEvent/performer/assignedEntity/representedOrganization/standardIndustryClassCode</td>
            <td>[1..1]</td>
            <td><p><strong>Structure</strong></p>
			<p>@code = ESSMS
			<br>@displayName = Etablissement ou Service Social ou Médico-Social (optionnel)
			<br>@codeSystem = 1.2.250.1.213.1.1.4.9</p></td>
        </tr>
    </tbody>
</table>

<br>

### relatedDocument

L'élément relatedDocument est facultatif dans le cas où le document actuel est initial, c’est-à-dire qu'il n'y a pas de document préexistant à remplacer. Cependant, lorsque le document est une nouvelle version d’un document déjà existant, cet élément devient obligatoire. Il permet alors de référencer précisément le document précédent qui est mis à jour ou remplacé. Cela garantit une continuité dans la gestion des informations, en identifiant clairement la relation entre les versions successives d’un même document. Le système doit inclure un identifiant unique du document précédent afin d'assurer la traçabilité et l'intégrité des données dans le parcours médico-social de l'usager.

La structure de l'élément relatedDocument se conforme aux contraintes et définitions présentées dans le **Volet Structuration minimale des documents de santé** :

<iframe src="./cda/" height="400" name="relatedDocument"></iframe>

<br>

### ComponentOf

L’élément componentOf permet de lier le document « Transfert de données DUI » à une prise en charge spécifique de l’usager. Cet élément situe le document dans le cadre global de l’accompagnement médico-social de la personne, en précisant à quelle prise en charge ou projet personnalisé il se rapporte.

La structure de l'élément ComponentOf se conforme aux contraintes et définitions présentées dans le **Volet Structuration minimale des documents de santé** :

<iframe src="./cda/" height="400" name="ComponentOf"></iframe>