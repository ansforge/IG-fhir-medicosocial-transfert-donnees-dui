### Section FR-Evenements

Cette section contient l'ensemble des évènements (passé ou à venir) d'un usager.

<iframe src="./cda/" height="400" name="FR-Evenements"></iframe>

<br>

#### Entrée FR-Evenement
Cette entrée permet de décrire l'évènement d'un usager passé ou à venir.

<iframe src="./cda/" height="400" name="FR-Evenement"></iframe>
<br>

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
            <td>code/qualifier/name</td>
            <td>[0..1]</td>
            <td><strong>Type évènement SSIAD</strong><br>Valeur fixée à : <br>@code = GEN-364 <br>@codeSystem = 1.2.250.1.213.1.1.4.322 <br>@displayName = Réforme SSIAD (optionnel)</td>
        </tr>
        <tr id="typeEvnValue">
            <td>code/qualifier[name/@code=GEN-364]/value</td>
            <td>[1..1]</td>
            <td><strong>Type évènement SSIAD</strong><br>Valeur issue du JDV_TypeEvenementSSIAD_CISIS</td>
        </tr>
        <tr id="typeEvnTexte">
            <td>code/originalText</td>
            <td>[0..1]</td>
            <td><strong>Type évènement non structuré</strong><br>Référence le texte décrivant les types d'évènements au format texte.</td>
        </tr>
        <tr id="text">
			<td>text</td>
            <td>[0..1]</td>
			<td>Référence le texte décrivant le libellé et/ou le motif de l'évènement</td>
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
        <tr id="participant2">
            <td>participant</td>
            <td>[0..2]</td>
			<td>L'évènement peut être attaché à deux participants : le lieu d'exécution et l'entité juridique responsable de l'évènement.</td>
        </tr>
        <tr id="participant">
            <td>participant[@classCode=RESP]/participantRole/scopingEntity</td>
            <td>[0..1]</td>
			<td><strong>Entité juridique responsable de l'évènement</strong><br>Si aucun séjour est renseigné, l'entité juridique responsable de l'évènement est requis.</td>
        </tr>
        <tr id="participantId">
            <td>participant[@classCode=RESP]/participantRole/scopingEntity/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant de l'entité juridique responsable de l'évènement</strong><br>Si l'entité juridique responsable de l'évènement est renseignée, son identifiant est requis.</td>
        </tr>
        <tr id="participantStatut">
            <td>participant[@classCode=RESP]/participantRole/scopingEntity/code</td>
            <td>[0..1]</td>
			<td><strong>Statut juridique de l'entité juridique responsable de l'évènement</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
        <tr id="entry2">
			<td>entryRelationship/act/templateId</td>
            <td>[1..1]</td>
			<td><strong>Commentaire</strong><br>Conformité FR-Commentaire-ER (CI-SIS)<br>@root = 1.2.250.1.213.1.1.3.32</td>
		</tr>
        <tr id="entry3">
			<td>entryRelationship/act/templateId</td>
            <td>[1..1]</td>
			<td><strong>Pièces jointes</strong><br>Conformité FR-Reference-interne (CI-SIS)<br>@root = 1.2.250.1.213.1.1.3.36</td>
		</tr>
        <tr id="entry">
			<td>entryRelationship/observation/templateId</td>
            <td>[1..1]</td>
			<td><strong>Caractéristique de l'évènement</strong><br>Conformité FR-Simple-Observation (CI-SIS)<br>@root = 1.2.250.1.213.1.1.3.48</td>
		</tr>
        <tr id="entryCode">
			<td>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/code </td>
            <td>[1..1]</td>
			<td><strong>Caractéristique de l'évènement</strong><br>Dans l'entrée FR-Evenement, l'élément code de l'entrée FR-Simple-Observation doit prendre l'une des valeurs suivantes :
            <ul>
                <li>@code = GEN-347 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Evènement hors prestation)</li>
                <li>@code = GEN-349 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Type de ressource utilisée)</li>
                <li>@code = GEN-350 et @codeSystem = 1.2.250.1.213.1.1.4.322 (@displayName = Repas inclus)</li>
                <li>@code = 38887-6 et @codeSystem = 2.16.840.1.113883.6.1 (@displayName = Person present --at time of event)</li>
                <li>@code = 106177-9 et @codeSystem = 2.16.840.1.113883.6.1 (@displayName = Date and time of last update of data)</li>
            </ul>
            <p>L'attribut displayName est optionnel.</p>
            </td>
		</tr>
        <tr id="entryValue">
			<td>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/value</td>
            <td>[1..1]</td>
			<td><strong>Caractéristique de l'évènement</strong><br>Le type de l'élément value de l'entrée FR-Simple-Observation est détaillé ci-dessous.</td>
		</tr>
    </tbody>
</table>

Dans les entrées FR-Simple-Observation, le type de l'élément value dépend de la valeur de l'élément code :

<table id="EvenementSimpleObs">
    <thead>
		<tr>
			<th>Valeur de l'attribut code/@code</th>
			<th>Contenu de l'élément value</th>
		</tr>
    </thead>
    <tbody>
        <tr id="1">
			<td>GEN-347 (Evènement hors prestation)</td>
            <td>BL</td>
		</tr>
        <tr id="2">
        <td>GEN-349 (Type de ressource utilisée)</td>
            <td>CE <br>Valeur issue du JDV_RessourceUtilisee_CISIS
                <ul>
                    <li>Si l'élément value/@code = ORG-206 (Matériel spécialisé) alors la valeur de l'élément value/qualifier est issue du JDV_DetailMaterielSpecialise_CISIS.</li>
                    <li>Si l'élément value/@code = ORG-207 (Ressource immobilière) alors la valeur de l'élément value/qualifier est issue du JDV_DetailRessourceImmobiliereUtilisee_CISIS.</li>
                </ul>
            </td>
		</tr>
        <tr id="3">
			<td>GEN-350 (Repas inclus)</td>
            <td>BL</td>
		</tr>
        <tr id="4">
			<td>38887-6 (Person present --at time of event)</td>
            <td>BL</td>
		</tr>
        <tr id="5">
			<td>106177-9 (Date and time of last update of data)</td>
            <td>TS</td>
		</tr>
    </tbody>
</table>

<br>

##### Entrée FR-Transport-du-patient

Cette entrée permet de décrire le transport de l'usager lors de l'évènement.

<iframe src="./cda/" height="400" name="FR-Transport-du-patient"></iframe>
<br>

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
            <td>code/qualifier[name/@code = GEN-346]</td>
            <td>[0..1]</td>
            <td><strong>Type de motorisation</strong><br>L'élément qualifier permettant de véhiculer le type de motorisation (l'attribut @code de l'élément name prend la valeur "GEN-346") ne doit pas être renseigné lorsque l'élément code de l'entrée FR-Transport-du-patient prend l'une des valeurs suivantes :
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
        <tr id="performerId">
            <td>performer/assignedEntity/representedOrganization/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant du transporteur</strong><br>Si le transporteur est renseigné, son identifiant est requis.</td>
        </tr>
        <tr id="performer">
            <td>performer/assignedEntity/representedOrganization/standardIndustryClassCode</td>
            <td>[0..1]</td>
			<td><strong>Statut juridique du transporteur</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
        <tr id="entry">
			<td>entryRelationship/observation/templateId </td>
            <td>[1..1]</td>
			<td><strong>Précision sur le trajet ou le transport du patient</strong><br>Conformité FR-Simple-Observation (CI-SIS)<br>@root = 1.2.250.1.213.1.1.3.48</td>
		</tr>
        <tr id="entryCode">
			<td>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/code</td>
            <td>[1..1]</td>
			<td><strong>Précision sur le trajet ou le transport du patient</strong><br>Dans l'entrée FR-Transport-du-patient, l'élément code de l'entrée FR-Simple-Observation doit prendre l'une des valeurs suivantes :
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
			<td>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/value</td>
            <td>[1..1]</td>
			<td><strong>Précision sur le trajet ou le transport du patient</strong><br>Le type de l'élément value de l'entrée FR-Simple-Observation est détaillé ci-dessous.</td>
		</tr>
	</tbody>
</table>

Dans les entrées FR-Simple-Observation, le type de l'élément value dépend de la valeur de l'élément code :

<table id="TransportPatObs">
    <thead>
		<tr>
			<th>Valeur de l'attribut code/@code</th>
			<th>Contenu de l'élément value</th>
		</tr>
    </thead>
    <tbody>
        <tr id="1">
			<td>MED-1124 (Patient nécessitant un accompagnement par un tiers)</td>
            <td>BL</td>
		</tr>
        <tr id="2">
			<td>ORG-200 (Budget réel)</td>
            <td>MO</td>
		</tr>
        <tr id="3">
			<td>ORG-201 (Budget prévisionnel)</td>
            <td>MO</td>
		</tr>
        <tr id="4">
			<td>GEN-353 (Durée de transport théorique)</td>
            <td>IVL_TS</td>
		</tr>
        <tr id="5">
			<td>275827007 (Maintien de l'asepsie)</td>
            <td>BL</td>
		</tr>
        <tr id="6">
			<td>103208-5 (Distance traveled)</td>
            <td>PQ</td>
		</tr>
    </tbody>
</table>

<br>

##### Entrée FR-Transport-du-professionnel

Cette entrée permet de décrire le transport d'un professionnel lors de l'évènement.

<iframe src="./cda/" height="400" name="FR-Transport-du-professionnel"></iframe>
<br>

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
            <td>code/qualifier</td>
            <td>[0..1]</td>
            <td><strong>Type de motorisation</strong><br>L'élément qualifier ne doit pas être renseigné lorsque l'élément code de l'entrée FR-Transport-du-professionnel prend l'une des valeurs suivantes : 
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
        <tr id="participantId">
            <td>participant[@classCode=RCV]/participantRole/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant du professionnel</strong><br>L'identifiant du professionnel est requis.</td>
        </tr>
		<tr id="participantEJId">
            <td>participant[@classCode=RCV]/participantRole/scopingEntity/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant de l'établissement de rattachement du professionnel</strong><br>Si l'établissement de rattachement du professionnel est renseigné, son identifiant est requis.</td>
        </tr>
        <tr id="participantCode">
            <td>participant[@classCode=RCV]/participantRole/scopingEntity/code</td>
            <td>[0..1]</td>
			<td><strong>Statut juridique de l'établissement de rattachement du professionnel</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
        <tr id="performerId">
            <td>performer/assignedEntity/representedOrganization/id</td>
            <td>[1..1]</td>
			<td><strong>Identifiant du transporteur</strong><br>Si le transporteur est renseigné, son identifiant est requis.</td>
        </tr>
        <tr id="performer">
            <td>performer/assignedEntity/representedOrganization/standardIndustryClassCode</td>
            <td>[0..1]</td>
			<td><strong>Statut juridique du transporteur</strong><br>Valeur issue du JDV_J100-FinessStatutJuridique-RASS.</td>
        </tr>
        <tr id="entry">
			<td>entryRelationship/observation/templateId</td>
            <td>[1..1]</td>
			<td><strong>Précision sur le trajet ou le transport du professionnel</strong><br>Conformité FR-Simple-Observation (CI-SIS)<br>@root = 1.2.250.1.213.1.1.3.48</td>
		</tr>
        <tr id="entryCode">
			<td>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/code</td>
            <td>[1..1]</td>
			<td><strong>Précision sur le trajet ou le transport du professionnel</strong><br>Dans l'entrée FR-Transport-du-professionnel, l'élément code de l'entrée FR-Simple-Observation doit prendre l'une des valeurs suivantes :
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
			<td>entryRelationship/observation[templateId/@root = 1.2.250.1.213.1.1.3.48]/value</td>
            <td>[1..1]</td>
			<td><strong>Précision sur le trajet ou le transport du professionnel</strong><br>Le type de l'élément value de l'entrée FR-Simple-Observation est détaillé ci-dessous.</td>
		</tr>
	</tbody>
</table>

Dans les entrées FR-Simple-Observation, le type de l'élément value dépend de la valeur de l'élément code :

<table id="TransportProObs">
    <thead>
		<tr>
			<th>Valeur de l'attribut code/@code</th>
			<th>Contenu de l'élément value</th>
		</tr>
    </thead>
    <tbody>
        <tr id="1">
			<td>ORG-200 (Budget réel)</td>
            <td>MO</td>
		</tr>
        <tr id="2">
			<td>ORG-201 (Budget prévisionnel)</td>
            <td>MO</td>
		</tr>
        <tr id="3">
			<td>GEN-353 (Durée de transport théorique)</td>
            <td>IVL_TS</td>
		</tr>
        <tr id="4">
			<td>103208-5 (Distance traveled)</td>
            <td>PQ</td>
		</tr>
    </tbody>
</table>
