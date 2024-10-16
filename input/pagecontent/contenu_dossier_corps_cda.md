### Section FR-Evenements

Cette section contient l'ensemble des évènements (passé ou à venir) d'un usager.

<iframe src="./cda/" height="400" name="FR-Evenements"></iframe>

#### Entrée FR-Evenement
Cette entrée permet de décrire l'évènement d'un usager passé ou à venir.

<iframe src="./cda/" height="400" name="FR-Evenement"></iframe>

**Contraintes spécifiques à l'entrée FR-Evenement :**

<table id="Evenement">
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
			<td><strong>Identifiant unique de l'évènement</strong><br>L'identifiant se forme en concaténant : 3+FINESS/idUsagerInterne-EVN-idEvenement</td>
		</tr>
        <tr id="code">
			<td>code</td>
            <td>[1..1]</td>
			<td>Valeur fixée à : <br>@code = GEN-367 <br>@codeSystem = 1.2.250.1.213.1.1.4.322 <br>@displayName = Agenda de l'usager (optionnel)</td>
		</tr>
        <tr id="typeEvnName">
            <td><strong>Réforme SSIAD</strong><br>code/qualifier/name</td>
            <td>[0..1]</td>
            <td>Valeur fixée à : <br>@code = GEN-364 <br>@codeSystem = 1.2.250.1.213.1.1.4.322 <br>@displayName = Réforme SSIAD (optionnel)</td>
        </tr>
        <tr id="typeEvnValue">
            <td><strong>Réforme SSIAD</strong><br>code/qualifier[name/@code=GEN-364]/value</td>
            <td>[0..1]</td>
            <td>Valeur issue du JDV_TypeEvenementSSIAD_CISIS</td>
        </tr>
        <tr id="typeEvnTexte">
            <td>code/originalText/reference</td>
            <td>[0..1]</td>
            <td>Référence le texte décrivant les types d'évènements non codés.</td>
        </tr>
         <tr id="effectiveTime">
			<td>effectiveTime</td>
            <td>[1..1]</td>
			<td>L'attribut nullFlavor est interdit.</td>
		</tr>
        <tr id="effectiveTimeLow">
			<td>effectiveTime/low</td>
            <td>[1..1]</td>
			<td>L'attribut nullFlavor est interdit.</td>
		</tr>
        <tr id="effectiveTimeHigh">
			<td>effectiveTime/high</td>
            <td>[1..1]</td>
			<td>L'attribut nullFlavor est interdit.</td>
		</tr>
        <tr id="participant">
            <td><strong>Entité juridique responsable de l'évènement</strong><br>participant[@classCode=RESP]/participantRole/scopingEntity/id</td>
            <td>[0..1]</td>
			<td><strong>Structure de rattachement de l'usager en charge de l'évènement</strong><br>Si aucun séjour est renseigné, l'élément est requis.</td>
        </tr>
        <tr id="participantStatut">
            <td><strong>Entité juridique responsable de l'évènement</strong><br>participant[@classCode=RESP]/participantRole/scopingEntity/code</td>
            <td>[0..1]</td>
			<td><strong>Structure de rattachement de l'usager en charge de l'évènement</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
        <tr id="entry2">
			<td><strong>Commentaire</strong><br>entryRelationship/act/templateId</td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Commentaire-ER (CI-SIS)</strong><br>@root = 1.2.250.1.213.1.1.3.32</td>
		</tr>
        <tr id="entry3">
			<td><strong>Pièces jointes</strong><br>entryRelationship/act/templateId</td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Reference-interne (CI-SIS)</strong><br>@root = 1.2.250.1.213.1.1.3.36</td>
		</tr>
        <tr id="entry">
			<td><strong>Caractéristique de l'évènement</strong><br>entryRelationship/observation/templateId</td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Simple-Observation (CI-SIS)</strong><br>@root = 1.2.250.1.213.1.1.3.48</td>
		</tr>
        <tr id="entryCode">
			<td><strong>Sous-entrée FR-Simple-Observation</strong><br>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/code </td>
            <td>[1..1]</td>
			<td>Dans l'entrée FR-Evenement, l'élément code de l'entrée FR-Simple-Observation doit prendre l'une des valeurs suivantes :
            <ul>
                <li>@code = GEN-347 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Evènement hors prestation)</li>
                <li>@code = GEN-350 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Repas inclus)</li>
                <li>@code = GEN-349 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Type de ressource utilisée)</li>
                <li>@code = 38887-6 et @codeSystem = 2.16.840.1.113883.6.1 (@displayName = Person present --at time of event)</li>
                <li>@code = 106177-9 et @codeSystem = 2.16.840.1.113883.6.1 (@displayName = Date and time of last update of data)</li>
            </ul>
            <p>L'attribut displayName est optionnel.</p>
            </td>
		</tr>
        <tr id="entryValue">
			<td><strong>Sous-entrée FR-Simple-Observation</strong><br>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/value</td>
            <td>[1..1]</td>
			<td>Dans l'entrée FR-Evenement, le type de l'élément value de l'entrée FR-Simple-Observation dépend de la valeur de l'élément code :
            <ul>
                <li>Si code/@code = GEN-347 alors l'élément value est de type BL.</li>
                <li>Si code/@code = GEN-350 alors l'élément value est de type BL.</li>
                <li>Si code/@code = GEN-349 alors l'élément value est de type CE.<br>Valeur issue du JDV_RessourceUtilisee_CISIS</li>
                <ul>
                    <li>Si l'élément value/@code = ORG-206 (Matériel spécialisé) alors la valeur de l'élément value/qualifier est issue du JDV_DetailMaterielSpecialise_CISIS.</li>
                    <li>Si l'élément value/@code = ORG-207 (Ressource immobilière) alors la valeur de l'élément value/qualifier est issue du JDV_DetailRessourceImmobiliereUtilisee_CISIS.</li>
                </ul>
                <li>Si code/@code = 38887-6 alors l'élément value est de type BL.</li>
                <li>Si code/@code = 106177-9 alors l'élément value est de type TS.DATE.</li>
            </ul>
            </td>
		</tr>
    </tbody>
</table>

##### Entrée FR-Transport-du-patient

Cette entrée permet de décrire le transport de l'usager lors de l'évènement.

<iframe src="./cda/" height="400" name="FR-Transport-du-patient"></iframe>

**Contraintes spécifiques à l'entrée FR-Transport-du-patient :**

<table id="transportPatient">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
        <tr id="moodCode">
			<td>@moodCode</td>
            <td>[1..1]</td>
			<td>Valeur fixée à EVN</td>
		</tr>
		<tr id="templateId">
			<td>templateId</td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Transport-du-patient (CI-SIS)</strong><br>@root = 1.2.250.1.213.1.1.3.24</td>
		</tr>
        <tr id="id">
			<td>id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant unique du transport</strong><br>L'identifiant se forme en concaténant : 3+FINESS/idUsagerInterne-TPPat-idTransport</td>
		</tr>
        <tr id="code">
            <td><strong>Type de motorisation</strong><br>code/qualifier[name/@code = GEN-346]</td>
            <td>[0..1]</td>
            <td>L'élément qualifier permettant de véhiculer le type de motorisation (l'attribut @code de l'élément name prend la valeur "GEN-346") ne doit pas être renseigné lorsque l'élément code de l'entrée FR-Transport-du-patient prend l'une des valeurs suivantes : 
            <ul>
                <li>code/@code = ORG-204 (Transport en commun)</li>
                <li>code/@code = ORG-205 (Modes doux)</li>
                <li>code/@code = GEN-092.06.08 (Autre mode de transport)</li>
            </ul>
            </td>
        </tr>
        <tr id="effectiveTimeLow">
			<td>effectiveTime/low</td>
            <td>[1..1]</td>
			<td>L'attribut nullFlavor est interdit.</td>
		</tr>
        <tr id="effectiveTimeHigh">
			<td>effectiveTime/high</td>
            <td>[1..1]</td>
			<td>L'attribut nullFlavor est interdit.</td>
		</tr>
        <tr id="performer">
            <td><strong>Transporteur</strong><br>performer/assignedEntity/representedOrganization/standardIndustryClassCode</td>
            <td>[0..1]</td>
			<td><strong>Structure de rattachement de l'usager en charge de l'évènement</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
        <tr id="entry">
			<td><strong>Caractéristique de l'évènement</strong><br>entryRelationship/observation/templateId </td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Simple-Observation (CI-SIS)</strong><br>@root = 1.2.250.1.213.1.1.3.48</td>
		</tr>
        <tr id="entryCode">
			<td><strong>Sous-entrée FR-Simple-Observation</strong><br>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/code</td>
            <td>[1..1]</td>
			<td>Dans l'entrée FR-Transport-du-patient, l'élément code de l'entrée FR-Simple-Observation doit prendre l'une des valeurs suivantes :
            <ul>
                <li>@code = MED-1124 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Patient nécessitant un accompagnement par un tiers)</li>
                <li>@code = ORG-200 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Budget réel)</li>
                <li>@code = ORG-201 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Budget prévisionnel)</li>
                <li>@code = GEN-353 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Durée de transport théorique)</li>
                <li>@code = 275827007 et @codeSystem = 2.16.840.1.113883.6.96 (@displayName = maintien de l'asepsie)</li>
                <li>@code = 103208-5 et @codeSystem = 2.16.840.1.113883.6.1 (@displayName = Distance traveled)</li>
            </ul>
            <p>L'attribut displayName est optionnel.</p>
            </td>
		</tr>
        <tr id="entryValue">
			<td><strong>Sous-entrée FR-Simple-Observation</strong><br>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/value</td>
            <td>[1..1]</td>
			<td>Dans l'entrée FR-Transport-du-patient, le type de l'élément value de l'entrée FR-Simple-Observation dépend la valeur de l'élément code :
            <ul>
                <li>Si code/@code = MED-1124 alors l'élément value est de type BL.</li>
                <li>Si code/@code = ORG-200 alors l'élément value est de type MO.</li>
                <li>Si code/@code = ORG-201 alors l'élément value est de type MO.</li>
                <li>Si code/@code = GEN-353 alors l'élément value est de type IVL_TS.</li>
                <li>Si code/@code = 275827007 alors l'élément value est de type BL.</li>
                <li>Si code/@code = 103208-5 alors l'élément value est de type PQ.</li>
            </ul>
            </td>
		</tr>
	</tbody>
</table>

##### Entrée FR-Transport-du-professionnel

Cette entrée permet de décrire le transport d'un professionnel lors de l'évènement.

<iframe src="./cda/" height="400" name="FR-Transport-du-professionnel"></iframe>

**Contraintes spécifiques à l'entrée FR-Transport-du-professionnel :**

<table id="transportPro">
    <thead>
		<tr>
			<th>Elément XML</th>
			<th>Card.</th>
			<th>Contenu de l'élément CDA</th>
		</tr>
    </thead>
    <tbody>
        <tr id="moodCode">
			<td>@moodCode</td>
            <td>[1..1]</td>
			<td>Valeur fixée à EVN</td>
		</tr>
        <tr id="id">
			<td>id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant unique du transport</strong><br>L'identifiant se forme en concaténant : 3+FINESS/idUsagerInterne-TPPro-idTransport</td>
		</tr>
        <tr id="code">
            <td><strong>Type de motorisation</strong><br>code/qualifier</td>
            <td>[0..1]</td>
            <td>L'élément qualifier ne doit pas être renseigné lorsque l'élément code de l'entrée FR-Transport-du-professionnel prend l'une des valeurs suivantes : 
            <ul>
                <li>@code = ORG-204 (Transport en commun)</li>
                <li>@code = ORG-205 (Modes doux)</li>
                <li>@code = GEN-092.06.08 (Autre mode de transport)</li>
            </ul>
            </td>
        </tr>
        <tr id="effectiveTimeLow">
			<td>effectiveTime/low</td>
            <td>[1..1]</td>
			<td>L'attribut nullFlavor est interdit.</td>
		</tr>
        <tr id="effectiveTimeHigh">
			<td>effectiveTime/high</td>
            <td>[1..1]</td>
			<td>L'attribut nullFlavor est interdit.</td>
		</tr>
        <tr id="participantStatut">
            <td><strong>Etablissement de rattachement du professionnel</strong><br>participant[@classCode=RCV]/participantRole/scopingEntity/code</td>
            <td>[0..1]</td>
			<td><strong>Structure de rattachement de l'usager en charge de l'évènement</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
        <tr id="performer">
            <td><strong>Transporteur</strong><br>performer/assignedEntity/representedOrganization/standardIndustryClassCode</td>
            <td>[0..1]</td>
			<td><strong>Structure de rattachement de l'usager en charge de l'évènement</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
        <tr id="entry">
			<td><strong>Caractéristique de l'évènement</strong><br>entryRelationship/observation/templateId</td>
            <td>[1..1]</td>
			<td><strong>Conformité FR-Simple-Observation (CI-SIS)</strong><br>@root = 1.2.250.1.213.1.1.3.48</td>
		</tr>
        <tr id="entryCode">
			<td><strong>Sous-entrée FR-Simple-Observation</strong><br>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/code</td>
            <td>[1..1]</td>
			<td>Dans l'entrée FR-Transport-du-professionnel, l'élément code de l'entrée FR-Simple-Observation doit prendre l'une des valeurs suivantes :
            <ul>
                <li>@code = ORG-200 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Budget réel)</li>
                <li>@code = ORG-201 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Budget prévisionnel)</li>
                <li>@code = GEN-353 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Durée de transport théorique)</li>
                <li>@code = 103208-5 et @codeSystem = 2.16.840.1.113883.6.1 (@displayName = Distance traveled)</li>
            </ul>
            <p>L'attribut displayName est optionnel.</p>
            </td>
		</tr>
        <tr id="entryValue">
			<td><strong>Sous-entrée FR-Simple-Observation</strong><br>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/value</td>
            <td>[1..1]</td>
			<td>Dans l'entrée FR-Transport-du-professionnel, le type de l'élément value de l'entrée FR-Simple-Observation dépend la valeur de l'élément code :
            <ul>
                <li>Si code/@code = ORG-200 alors l'élément value est de type MO.</li>
                <li>Si code/@code = ORG-201 alors l'élément value est de type MO.</li>
                <li>Si code/@code = GEN-353 alors l'élément value est de type IVL_TS.</li>
                <li>Si code/@code = 103208-5 alors l'élément value est de type PQ.</li>
            </ul>
            </td>
		</tr>
	</tbody>
</table>
