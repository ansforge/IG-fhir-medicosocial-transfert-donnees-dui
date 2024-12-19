### Section FR-Sejours

Cette section contient les informations relatives au(x) séjour(s) d'un usager dans une structure ESSMS.

La structure de la section se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.2.249-DYNAMIC.html" height="400" name="FR-Sejours" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.2.249-DYNAMIC.html" target="_blank">FR-Sejours</a>

<br>

#### Entrée FR-Sejour

Cette entrée est un élément de type organizer permettant de décrire le séjour d’un usager.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.219-DYNAMIC.html" height="400" name="FR-Sejour" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.219-DYNAMIC.html" target="_blank">FR-Sejour</a>

<br>

##### Entrée FR-Sejour-Admission

Cette entrée permet de décrire les données relatives à l'admission de l'usager au sein d'une structure.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.218-DYNAMIC.html" height="400" name="FR-Sejour-Admission" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.218-DYNAMIC.html" target="_blank">FR-Sejour-Admission</a>

**Contraintes spécifiques à l'entrée FR-Sejour-Admission :**

<table id="sejourAdmission">
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
            <td><strong>Identifiant unique du séjour</strong><br>L'identifiant se forme en concaténant : 3+FINESS/identifiantLocalUsagerESSMS-SEJOUR-numeroDossier</td>
        </tr>
        <tr id="code">
            <td>code</td>
            <td>[1..1]</td>
            <td>Valeur fixée à : <br>@code = GEN-351 <br>@codeSystem = 1.2.250.1.213.1.1.4.322 <br>@displayName = Établissement ou service social ou médico-social (ESSMS) (optionnel)</td>
        </tr>
        <tr id="participantId">
            <td>participant[@classCode=RESP]/participantRole/scopingEntity/id</td>
            <td>[1..1]</td>
            <td><strong>Identifiant de l'entité juridique responsable du séjour</strong>
            <br>L'identifiant de la structure est requis.</td>
        </tr>
        <tr id="participantStatut">
            <td>participant[@classCode=RESP]/participantRole/scopingEntity/code</td>
            <td>[0..1]</td>
            <td><strong>Entité juridique responsable du séjour</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
    </tbody>
</table>
<br>

##### Entrée FR-Modalite-entree

Cette entrée permet d'indiquer la modalité d'entrée d'un usager dans un établissement.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.48.6-DYNAMIC.html" height="400" name="FR-Modalite-entree" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.48.6-DYNAMIC.html" target="_blank">FR-Modalite-entree</a>

**Contraintes spécifiques à l'entrée FR-Modalite-entree :**

<table id="modaliteE">
    <thead>
        <tr>
            <th>Elément XML</th>
            <th>Card.</th>
            <th>Contenu de l'élément CDA</th>
        </tr>
    </thead>
    <tbody>
        <tr id="text">
            <td>text/reference</td>
            <td>[0..1]</td>
            <td>Référence le texte décrivant le libellé du mode d'entrée du séjour.</td>
        </tr>
        <tr id="value">
            <td>value</td>
            <td>[1..1]</td>
            <td>nullFlavor='NA'</td>
        </tr>
    </tbody>
</table>
<br>

##### Entrée FR-Modalite-sortie

Cette entrée permet d'indiquer la modalité de sortie d'un usager dans un établissement.

La structure de l’entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.48.7-DYNAMIC.html" height="400" name="FR-Modalite-sortie" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.48.7-DYNAMIC.html" target="_blank">FR-Modalite-sortie</a>

**Contraintes spécifiques à l'entrée FR-Modalite-sortie :**

<table id="modaliteS">
    <thead>
        <tr>
            <th>Elément XML</th>
            <th>Card.</th>
            <th>Contenu de l'élément CDA</th>
        </tr>
    </thead>
    <tbody>
        <tr id="text">
            <td>text/reference</td>
            <td>[0..1]</td>
            <td>Référence le texte décrivant le libellé du mode de sortie du séjour.</td>
        </tr>
        <tr id="value">
            <td>value</td>
            <td>[1..1]</td>
            <td>nullFlavor='NA'</td>
        </tr>
    </tbody>
</table>

<br>