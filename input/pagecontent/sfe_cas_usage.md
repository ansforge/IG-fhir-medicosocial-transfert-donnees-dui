Cette section décrit, **à titre d'exemple et de façon non exhaustive**, un ensemble de cas d'usage correspondant à l’expression des besoins définis lors des ateliers avec la CNSA et les acteurs du médico-social.

<blockquote class="stu-note">
    <p>
    <b>Point d'attention</b> Les cas d’usage doivent s’appuyer sur une assise juridique afin de légitimer le transfert des données notamment si ce dernier comporte des données personnelles ou médicales. Cet aspect est de la responsabilité des acteurs qui utilisent cette spécification. Cette dernière n’a pas vocation à légitimer les traitements des données.
    </p>
</blockquote>

#### Transférer les données d’un DUI vers un SI-tiers

<blockquote>
    <div class="note note">
    <u>Cas d'usage SSIAD :</u> Transférer les données d’un logiciel DUI correspondant aux Services de soins infirmiers à domicile (SSIAD) vers un SI-tiers pour renforcer la connaissance et le pilotage de la branche médico-sociale grâce aux données financières, d'activités des ESMS, etc.</div>
</blockquote>
    
Ce cas d’usage s’inscrit dans le cadre du programme décliné en France, au niveau national pour déployer des solutions numériques au sein des établissements et services sociaux et medico-sociaux (ESSMS), favoriser l’interopérabilité et transférer des données d’un logiciel DUI (dossiers usagers informatisés) vers un Système d’Information tiers.

La mise en œuvre de ce cas d'usage se matérialise par l'export partiel de données portant par exemple sur l’activité des Services de soins infirmiers à domicile (SSIAD) destinés aux personnages âgées et aux personnes handicapées, vers le système d’information de la CNSA (<a href="https://www.cnsa.fr/informations-thematiques/systeme-dinformation-et-numerique/sidoba">SIDOBA</a> = système d’information de l’offre de la branche autonomie).

Plus précisément les données exportées se caractérisent par :
* les principales données autour de l'identité de l'usager ;
* les informations sur le séjour de l'usager ;
* l'évaluation de l'autonomie de l'usager accompagnée (ou non) de ses grilles ; d'évaluation structurées ou non structurées ;
* les évènements de l'agenda usager organisés par l’ESSMS entrant dans la thérapie de l’usager ;
* les transports de l'usager associés aux évènements de l'agenda usager.

Pour ce cas d'usage les modalités d’envoi des données usager au SI-tiers sont les suivantes: 
* Il est possible au DUI de ré envoyer des éléments déjà transmis – les derniers éléments transmis écrasent les précédents.
* Le DUI envoie au minimum une semaine d'historique par usager
* Le DUI envoie au maximum cinq semaines d'historique par usager



   