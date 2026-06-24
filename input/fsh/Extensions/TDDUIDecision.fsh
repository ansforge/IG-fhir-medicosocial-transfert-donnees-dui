Extension: TDDUIDecision
Id: tddui-decision
Title: "TDDUI Decision"
Description: "Extension complexe représentant la décision et les droits associés"
Context: Basic

* value[x] 0..0

* extension contains
    decision 1..1
* extension[decision].value[x] 0..0

// BLOC DECISION
* extension[decision] obeys motivationLocaleRequired
* extension[decision] obeys DateEffetClotureCardinality

* extension[decision].extension contains
    typeDecision 1..1 and
    dateEffetCloture 0..1 and
    dateDecision 0..1 and
    motivation 0..* and
    motivationLocale 0..* and
    commentaire 0..1 and
    droitPrestation 0..1

* extension[decision].extension[typeDecision].value[x] only CodeableConcept
* extension[decision].extension[typeDecision].value[x] from jdv-j398-type-decision-ms (required)
* extension[decision].extension[typeDecision] ^short = "Caractérise le type de décision prise par la CDAPH"


* extension[decision].extension[dateEffetCloture].value[x] only date
* extension[decision].extension[dateEffetCloture] ^short = "Date d'effet de clôture"

* extension[decision].extension[dateDecision].value[x] only date
* extension[decision].extension[dateDecision] ^short = "Date de la décision"


* extension[decision].extension[motivation].value[x] only CodeableConcept 
* extension[decision].extension[motivation].value[x] from jdv-j399-motivation-ms (required)
* extension[decision].extension[motivation] ^short = "Considération(s) de droit ou de fait qui constituent le fondement de la décision."


* extension[decision].extension[motivationLocale].value[x] only string
* extension[decision].extension[motivationLocale] ^short = "Champ libre permettant de renseigner une motivation locale"

* extension[decision].extension[commentaire].value[x] only string
* extension[decision].extension[commentaire] ^short = "Commentaire de la décision"

// BLOC DROIT PRESTATION

* extension[decision].extension[droitPrestation].value[x] 0..0
* extension[decision].extension[droitPrestation] obeys FormationCardinality
* extension[decision].extension[droitPrestation] obeys PrecisionOrientationValues7.8
* extension[decision].extension[droitPrestation] obeys PrecisionOrientationValues7.9
* extension[decision].extension[droitPrestation] obeys PrecisionOrientationValues13.1-13.2
* extension[decision].extension[droitPrestation] obeys PrecisionOrientationValues8.3
* extension[decision].extension[droitPrestation] obeys PrecisionOrientationValues8.6
* extension[decision].extension[droitPrestation] obeys temporaliteAccueilCardinalityViaCategorieDroitPrestation
* extension[decision].extension[droitPrestation] obeys temporaliteAccueilCardinalityViaTypeDroitPrestation
* extension[decision].extension[droitPrestation] obeys cretonCardinality



* extension[decision].extension[droitPrestation].extension contains
    
    categorieDroitPrestation 1..1 and
    typeDroitPrestation 1..1 and
    natureDroitPrestation 1..1 and
    
    dateOuverture 1..1 and
    dateEcheance 1..1 and
    existencePAG 1..1 and
    motifFinPAG 0..1 and
    creton 0..1 and
    taux 0..1 and
     typeCompensation 0..1 and
    commentaire 0..1 and
    detailPrestation 1..1


* extension[decision].extension[droitPrestation].extension[categorieDroitPrestation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[categorieDroitPrestation].value[x] from jdv-j401-categorie-droit-prestation-ms (required)
* extension[decision].extension[droitPrestation].extension[categorieDroitPrestation] ^short = "Catégorie du droit de prestation"

* extension[decision].extension[droitPrestation].extension[typeDroitPrestation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[typeDroitPrestation].value[x] from jdv-j402-type-droit-prestation-ms (required)
* extension[decision].extension[droitPrestation].extension[typeDroitPrestation] ^short = "Type du droit de prestation"

* extension[decision].extension[droitPrestation].extension[natureDroitPrestation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[natureDroitPrestation].value[x] from jdv-j400-nature-droit-prestation-ms (required)
* extension[decision].extension[droitPrestation].extension[natureDroitPrestation] ^short = "Nature du droit de prestation"


* extension[decision].extension[droitPrestation].extension[dateOuverture].value[x] only date
* extension[decision].extension[droitPrestation].extension[dateOuverture] ^short = "Date d'ouverture du droit"

* extension[decision].extension[droitPrestation].extension[dateEcheance].value[x] only date
* extension[decision].extension[droitPrestation].extension[dateEcheance] ^short = "Date d'échéance du droit"

* extension[decision].extension[droitPrestation].extension[existencePAG].value[x] only boolean
* extension[decision].extension[droitPrestation].extension[existencePAG] ^short = "Existence d'un PAG"


* extension[decision].extension[droitPrestation].extension[motifFinPAG].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[motifFinPAG].value[x] from jdv-j403-motif-fin-pag-ms
* extension[decision].extension[droitPrestation].extension[motifFinPAG] ^short = "Motif de fin du PAG"


* extension[decision].extension[droitPrestation].extension[creton].value[x] only boolean
* extension[decision].extension[droitPrestation].extension[creton] ^short = "Indicateur creton"

* extension[decision].extension[droitPrestation].extension[taux].value[x] only Quantity
* extension[decision].extension[droitPrestation].extension[taux] ^short = "Taux"


* extension[decision].extension[droitPrestation].extension[typeCompensation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[typeCompensation].value[x] from jdv-j394-type-demande-compensation-ms
* extension[decision].extension[droitPrestation].extension[typeCompensation] ^short = "Type de compensation"


* extension[decision].extension[droitPrestation].extension[commentaire].value[x] only string
* extension[decision].extension[droitPrestation].extension[commentaire] ^short = "Commentaire du droit de prestation"

// BLOC DETAIL PRESTATION

* extension[decision].extension[droitPrestation].extension[detailPrestation].value[x] 0..0
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension contains
    temporaliteAccueil 0..1 and
    precisionOrientation 0..1 and
    accueilSequentiel 0..1 and
    formation 0..1 and
    montantAttribue 0..1 and
    frequence 0..1 and
    qualificationOrientation 1..1 and
    structureAccueil 0..* and
    priseCharge 0..*

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil].valueCodeableConcept from $JDV-J30-TemporaliteAccueil-ROR
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil] ^short = "Temporalité d'accueil"


* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[precisionOrientation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[precisionOrientation].valueCodeableConcept from jdv-j408-orientation-ms
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[precisionOrientation] ^short = "Précision de l'orientation"


* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[accueilSequentiel].value[x] only boolean
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[accueilSequentiel] ^short = "Accueil séquentiel"

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[formation].value[x] only string
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[formation] ^short = "Formation"

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[montantAttribue].value[x] only Money
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[montantAttribue] ^short = "Montant attribué"

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[frequence].value[x] only Quantity
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[frequence] ^short = "Fréquence de versement"


* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[qualificationOrientation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[qualificationOrientation].valueCodeableConcept from jdv-j404-qualification-orientation-ms
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[qualificationOrientation] ^short = "Qualification de l'orientation"


* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[structureAccueil].value[x] only Reference(TDDUIOrganization)
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[structureAccueil] ^short = "Structure d'accueil"

// BLOC PRISE EN CHARGE

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].value[x] 0..0
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension contains
    modePriseCharge 0..1 and
    quantification 0..1

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[modePriseCharge].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[modePriseCharge].valueCodeableConcept from $JDV-J264-ModeEtCentreDePriseEnCharge-MDPH
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[modePriseCharge] ^short = "Mode de prise en charge"

// BLOC QUANTIFICATION

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].value[x] 0..0
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension contains
    valeurPriseCharge 0..1 and
    unitePriseCharge 0..1 and
    frequencePriseCharge 0..1

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[valeurPriseCharge].value[x] only integer
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[valeurPriseCharge] ^short = "Valeur de la prise en charge"

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[unitePriseCharge].value[x] only Quantity
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[unitePriseCharge] ^short = "Unité de la prise en charge"

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[frequencePriseCharge].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[frequencePriseCharge].valueCodeableConcept from $JDV-J37-UcumUniteTemps
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[frequencePriseCharge] ^short = "Fréquence de la prise en charge"



Invariant: motivationLocaleRequired
Description: "La motivation locale doit être renseignée si la motivation de la décision est '9999' (Autre)."
Severity: #error
Expression: "(extension.where(url='motivation').valueCodeableConcept.coding.code='9999')
 implies ((extension.where(url='motivationLocale').valueString.exists()))"

Invariant: FormationCardinality
Description: "Formation est obligatoire si typeDroitPrestation = '11.1' (Orientation en Centre de rééducation professionnelle (CRP))."
Severity: #error
Expression: "(extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='11.1') implies (extension.where(url='detailPrestation').extension.where(url='formation').exists())"


Invariant: PrecisionOrientationValues7.8
Description: "Si typeDroitPrestation = '7.8' (Orientation vers un Service d'éducation spéciale et de soins à domicile (SESSAD)) alors precisionOrientation entre '1' et
 '6'"
Severity: #error
Expression: "(extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='7.8') implies ((extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()>=1) and (extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()<=6))"


Invariant: PrecisionOrientationValues7.9
Description: "Si typeDroitPrestation = '7.9' (Orientation vers un Service d'accompagnement familial et d'éducation précoce (SAFEP)) alors precisionOrientation entre '7' et '8'"
Severity: #error
Expression: "(extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='7.9') implies ((extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()>=7) and (extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()<=8))"

Invariant: PrecisionOrientationValues13.1-13.2
Description: "Si typeDroitPrestation = '13.1' (Orientation vers un établissement d'accueil non médicalisé) ou '13.2' (Orientation vers un établissement d'accueil médicalisé en tout ou partie) alors precisionOrientation est interdit"
Severity: #error
Expression: "((extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='13.1') or (extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='13.2')) implies (extension.where(url='detailPrestation').extension.where(url='precisionOrientation').exists().not())"

Invariant: PrecisionOrientationValues8.3
Description: "Si typeDroitPrestation = '8.3' (Orientation en Enseignement adapté (SEGPA/EREA)) alors precisionOrientation entre '9' et '10' "
Severity: #error
Expression: "(extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.3') implies ((extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()>=9) and (extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()<=10))"

Invariant: PrecisionOrientationValues8.6
Description: "Si typeDroitPrestation = '8.6' (Orientation en Unité d'enseignement) alors precisionOrientation = 'UEA' (Unité d'enseignement élémentaire autisme) ou 'UEM' (Unité d'enseignement en maternelle plan autisme)."
Severity: #error
Expression: "(extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.6') implies ((extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code='UEA') or (extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code='UEM'))"

Invariant: DateEffetClotureCardinality
Description: "Si typeDecision = '5' (Clôture de droit) alors dateEffetCloture est obligatoire."
Severity: #error
Expression: "(extension.where(url='typeDecision').valueCodeableConcept.coding.code='5') implies ((extension.where(url='dateEffetCloture').exists()))"

Invariant: temporaliteAccueilCardinalityViaCategorieDroitPrestation
Description: "Si categorieDroitPrestation = '13' (Orientation ESMS Adultes) ou '7' (Orientation ESMS Enfants) alors temporaliteAccueil est obligatoire."
Severity: #error
Expression: "((extension.where(url='categorieDroitPrestation').valueCodeableConcept.coding.code='13') or (extension.where(url='categorieDroitPrestation').valueCodeableConcept.coding.code='7')) implies (extension.where(url='detailPrestation').extension.where(url='temporaliteAccueil').exists())"

Invariant: temporaliteAccueilCardinalityViaTypeDroitPrestation
Description: "Si typeDroitPrestation = '8.6' (Orientation en Unité d'enseignement) ou '8.7' (Orientation vers une Scolarisation en milieu ordinaire à temps partagé) ou '8.8' (Orientation vers une Unité d'enseignement et une scolarisation en ULIS à temps partagé) ou '8.10' (Orientation vers une unité d'enseignement et une scolarisation en enseignement adapté à temps partagé) alors la temporalité d'accueil est obligatoire."
Severity: #error
Expression: "((extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.6') or (extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.7') or (extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.8') or (extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.10')) implies (extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='temporaliteAccueil').exists())"

Invariant: cretonCardinality
Description: "Si categorieDroitPrestation = '7' (ESSMS enfant) alors Creton est obligatoire"
Severity: #error
Expression: "((extension.where(url='categorieDroitPrestation').valueCodeableConcept.coding.code='7') or (extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code.matches('^7[.][0-9]+$'))) implies (extension.where(url='creton').exists())"

