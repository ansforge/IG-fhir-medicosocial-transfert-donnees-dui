### Eléments transversaux

#### Entrée FR-Statut

L’entrée FR-Statut permet de décrire et de suivre le statut métier d'un objet.

La structure de l'entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/tmp-1.2.250.1.213.1.1.3.217-DYNAMIC.html" height="400" id="FR-Statut" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/tmp-1.2.250.1.213.1.1.3.217-DYNAMIC.html" target="_blank">FR-Statut</a>

**Contraintes spécifiques à l'entrée FR-Statut :**

<table id="statut">
    <thead>
        <tr>
            <th>Elément XML</th>
            <th>Card.</th>
            <th>Contenu de l'élément CDA</th>
        </tr>
    </thead>
    <tbody>
        <tr id="value">
            <td>value</td>
            <td>[1..1]</td>
            <td><strong>Statut métier</strong><br>Valeur issue du JDV_J281-StatutsRessourcesMS</td>
        </tr>
        <tr id="value">
            <td>value[@code="ANNULE"]/qualifier/value</td>
            <td>[1..1]</td>
            <td><strong>Motif associé au statut de non-réalisation de l’évènement</strong><br>Lorsque le statut est à "Annulé", le motif est issu du JDV_MotifNonRealisationEvenement_CISIS.</td>
        </tr>
    </tbody>
</table>
<br>

#### Entrée FR-Simple-Observation

L’entrée FR-Simple-Observation est un élément générique permettant de décrire les caractéristiques d'un objet.

La structure de l'entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/tmp-1.2.250.1.213.1.1.3.48-DYNAMIC.html" height="400" id="FR-Simple-Observation" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/tmp-1.2.250.1.213.1.1.3.48-DYNAMIC.html" target="_blank">FR-Simple-Observation</a>

<br>

#### Entrée FR-Commentaire-ER

L’entrée FR-Commentaire-ER est un élément qui permet de joindre un commentaire à une entrée ou à une section.

La structure de l'entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/tmp-1.2.250.1.213.1.1.3.32-DYNAMIC.html" height="400" id="FR-Commentaire-ER" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/tmp-1.2.250.1.213.1.1.3.32-DYNAMIC.html" target="_blank">FR-Commentaire-ER</a>

<br>

#### Entrée FR-Reference-interne

L’entrée FR-Reference-interne permet de relier un élément à un autre élément du même document par l’intermédiaire son identifiant.

La structure de l'entrée se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/tmp-1.2.250.1.213.1.1.3.36-DYNAMIC.html" height="400" id="FR-Reference-interne" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/tmp-1.2.250.1.213.1.1.3.36-DYNAMIC.html" target="_blank">FR-Reference-interne</a>

<br>

#### Elément FR-Participant

L'élément FR-Participant permet de décrire un participant dans une section ou une entrée.

La structure de l'élément se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/tmp-1.2.250.1.213.1.1.3.109-DYNAMIC.html" height="400" id="FR-Participant" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/tmp-1.2.250.1.213.1.1.3.109-DYNAMIC.html" target="_blank">FR-Participant</a>

<br>

#### Elément FR-Performer

L'élément FR-Performer permet de décrire une personne ayant exécuté un acte.

La structure de l'élément se conforme aux contraintes et définitions présentées dans les **Modèles de contenus CDA** :

<iframe src="./cda/tmp-1.2.250.1.213.1.1.1.99.99.10.85-DYNAMIC.html" height="400" id="FR-Performer" style="border: 1px solid black" sandbox="allow-same-origin allow-scripts"></iframe>
Lien vers le template : <a href="./cda/tmp-1.2.250.1.213.1.1.1.99.99.10.85-DYNAMIC.html" target="_blank">FR-Performer</a>

**Contrainte spécifique à l'élément FR-Performer :**

Certains rôles du professionnel sont à véhiculer en utilisant conjointement les éléments sdtc:functionCode et assignedEntity/code :

<table id="performer">
    <thead>
        <tr>
            <th>Rôle fonctionnel</th>
            <th>Valeur sdtc:functionCode</th>
            <th>Valeur assignedEntity/code</th>
        </tr>
    </thead>
    <tbody>
        <tr id="value">
            <td>Infirmier coordinateur (IDEC)</td>
            <td>@code = "330"<br>@displayName = "Coordonnateur de parcours"<br>@codeSystem = "1.2.250.1.213.1.6.1.107"</td>
            <td>@code = "G15_60"<br>@displayName = "Infirmier"<br>@codeSystem = "1.2.250.1.213.1.1.4.5"</td>
        </tr>
    </tbody>
</table>
<br>