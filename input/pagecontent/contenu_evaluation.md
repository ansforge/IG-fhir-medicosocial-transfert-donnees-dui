### Section FR-Statut-fonctionnel

La section FR-Statut-fonctionnel permet de fournir les résultats d’évaluation de l’usager (AGGIR, évaluation de la situation SSIAD, SERAFIN...).

La structure de la section se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.2.246-DYNAMIC.html" height="400" id="FR-Statut-fonctionnel" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.2.246-DYNAMIC.html" target="_blank">FR-Statut-fonctionnel</a>

<br>

#### Entrée FR-Groupe-de-questionnaires-d-evaluation

L'entrée FR-Groupe-de-questionnaires-d-evaluation permet de regrouper les évaluations par type.

La structure de l'entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.95-DYNAMIC.html" height="400" id="FR-Groupe-de-questionnaires-d-evaluation" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.95-DYNAMIC.html" target="_blank">FR-Groupe-de-questionnaires-d-evaluation</a>

**Contrainte spécifique à l'entrée FR-Groupe-de-questionnaires-d-evaluation :**

Une entrée FR-Groupe-de-questionnaires-d-evaluation doit être créer par type d'évaluation véhiculé.

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
            <td>Valeur issue du JDV_TypeEvaluation_CISIS</td>
        </tr>
    </tbody>
</table>
<br>

##### Entrée FR-Evaluation

L'entrée FR-Evaluation permet de véhiculer le résultat d'une évaluation de l'usager. Le détail de l'évaluation peut être transmis à travers des sous-entrées FR-Evaluation-Composant.

La structure de l'entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.25-DYNAMIC.html" height="400" id="FR-Evaluation" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.25-DYNAMIC.html" target="_blank">FR-Evaluation</a>

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
        <tr id="id">
            <td>id</td>
            <td>[1..1]</td>
            <td><strong>Identifiant unique de l'évaluation</strong><br>L'identifiant se forme en concaténant : 3+FINESS/identifiantLocalUsagerESSMS-EVAL-numEvaluation</td>
        </tr>
        <tr id="code">
            <td>code</td>
            <td>[1..1]</td>
            <td><strong>Type d'évaluation</strong><br>Valeur issue du JDV_TypeEvaluation_CISIS</td>
        </tr>
        <tr id="performerId">
            <td>performer/assignedEntity/id</td>
            <td>[1..1]</td>
            <td><strong>Identifiant de l'évaluateur</strong><br>Si l'évaluateur est renseigné, son identifiant est requis.</td>
        </tr>
        <tr id="performerEJid">
            <td>performer/assignedEntity/representedOrganization/id</td>
            <td>[1..1]</td>
            <td><strong>Identifiant de l'établissement de rattachement de l'évaluateur</strong><br>Si l'établissement de rattachement de l'évaluateur est renseigné, son identifiant est requis.</td>
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
        <tr id="participantId">
            <td>participant[@typeCode=RESP]/participantRole/scopingEntity/id</td>
            <td>[1..1]</td>
            <td><strong>Identifiant du responsable de l'évaluation</strong><br>Si le responsable de l'évaluation est renseigné, son identifiant est requis.</td>
        </tr>
        <tr id="participantEJid">
            <td>participant[@typeCode=RESP]/participantRole/scopingEntity/id</td>
            <td>[1..1]</td>
            <td><strong>Identifiant de l'établissement de rattachement du responsable de l'évaluation</strong><br>Si l'établissement de rattachement du responsable de l'évaluation est renseigné, son identifiant est requis.</td>
        </tr>
        <tr id="participantStatut">
            <td>participant[@typeCode=RESP]/participantRole/scopingEntity/code</td>
            <td>[0..1]</td>
            <td><strong>Statut juridique de l'établissement de rattachement du responsable de l'évaluation</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
    </tbody>
</table>

Dans l'entrée FR-Evaluation, le résultat de l'évaluation (value) dépend du type de l'évaluation (code). Le type de l'évaluation doit quant à lui être identique au type du groupe d'évaluation (code) de l'entrée FR-Groupe-de-questionnaires-d-evaluation :

<table id="valeurEvaluation">
    <thead>
        <tr>
            <th>Code du groupe d'évaluation <br>(FR-Groupe-de-questionnaires-d-evaluation élément code)</th>
            <th>Type d'évaluation <br>(FR-Evaluation élément code)</th>
            <th>Résultat de l'évaluation <br>(FR-Evaluation élément value)</th>
        </tr>
    </thead>
    <tbody>
        <tr id="code">
            <td>Evaluation AGGIR PH SSIAD</td>
            <td>Evaluation AGGIR PH SSIAD</td>
            <td>Valeur issue du JDV_GIR_CISIS<br>L'attribut nullFlavor est interdit.</td>
        </tr>
        <tr id="value">
            <td>Evaluation AGGIR PA SSIAD</td>
            <td>Evaluation AGGIR PA SSIAD</td>
            <td>Valeur issue du JDV_GIR_CISIS<br>L'attribut nullFlavor est interdit.</td>
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

L'entrée FR-Evaluation-Composant permet de porter le résultat d'un critère d'évaluation.

La structure de l'entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.214-DYNAMIC.html" height="400" id="FR-Evaluation-Composant" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/TDDUI-html/tmp-1.2.250.1.213.1.1.3.214-DYNAMIC.html" target="_blank">FR-Evaluation-Composant</a>

**Contraintes spécifiques à l'entrée FR-Evaluation-Composant :**

Le champ évalué (code) et le type de résultat de ce champs évalué (value) dépendent du type d'évaluation (code) véhiculé dans l'entrée FR-Evaluation :

<table id="valeurEvaluation">
    <thead>
        <tr>
            <th>Type d'évaluation <br>(FR-Evaluation élément code)</th>
            <th>Champs évalué <br>(FR-Evaluation-Composant élément code)</th>
            <th>Type de résultat du champs évalué <br>(FR-Evaluation-Composant élément value)</th>
        </tr>
    </thead>
    <tbody>
        <tr id="code">
            <td>Evaluation AGGIR PH SSIAD</td>
            <td>Jeu de valeurs en cours d'élaboration</td>
            <td>BL</td>
        </tr>
        <tr id="value">
            <td>Evaluation AGGIR PA SSIAD</td>
            <td>Jeu de valeurs en cours d'élaboration</td>
            <td>BL</td>
        </tr>
        <tr id="value">
            <td>Evaluation de la situation SSIAD</td>
            <td>Valeur issue du JDV_EvaluationSSIAD_CISIS<br>L'attribut nullFlavor est interdit.</td>
            <td>BL</td>
        </tr>
        <tr id="value">
            <td>EvaLuation SERAFIN</td>
            <td>Jeu de valeurs en cours d'élaboration</td>
            <td>INT</td>
        </tr>
    </tbody>
</table>

<br>
