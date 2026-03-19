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

* extension[decision].extension contains
    // typeDecision 1..1 and
    dateEffetCloture 0..1 and
    dateDecision 0..1 and
    // motivation 0..* and
    motivationLocale 0..* and
    commentaire 0..1 and
    droitPrestation 0..1
/*
* extension[decision].extension[typeDecision].value[x] only CodeableConcept
* extension[decision].extension[typeDecision] ^short = "Caractérise le type de décision prise par la CDAPH"
*/

* extension[decision].extension[dateEffetCloture].value[x] only date
* extension[decision].extension[dateEffetCloture] ^short = "Date d'effet de clôture"

* extension[decision].extension[dateDecision].value[x] only date
* extension[decision].extension[dateDecision] ^short = "Date de la décision"

/*
* extension[decision].extension[motivation].value[x] only CodeableConcept
* extension[decision].extension[motivation] ^short = "Considération(s) de droit ou de fait qui constituent le fondement de la décision."
*/

* extension[decision].extension[motivationLocale].value[x] only string
* extension[decision].extension[motivationLocale] ^short = "Champ libre permettant de renseigner une motivation locale"

* extension[decision].extension[commentaire].value[x] only string
* extension[decision].extension[commentaire] ^short = "Commentaire de la décision"

// BLOC DROIT PRESTATION

* extension[decision].extension[droitPrestation].value[x] 0..0
* extension[decision].extension[droitPrestation].extension contains
    /*
    categorieDroitPrestation 1..1 and
    typeDroitPrestation 1..1 and
    natureDroitPrestation 1..1 and
    */
    dateOuverture 1..1 and
    dateEcheance 1..1 and
    existencePAG 1..1 and
    // motifFinPAG 0..1 and
    creton 0..1 and
    taux 0..1 and
    // typeCompensation 0..1 and
    commentaire 0..1 and
    detailPrestation 1..1

/*
* extension[decision].extension[droitPrestation].extension[categorieDroitPrestation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[categorieDroitPrestation] ^short = "Catégorie du droit de prestation"

* extension[decision].extension[droitPrestation].extension[typeDroitPrestation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[typeDroitPrestation] ^short = "Type du droit de prestation"

* extension[decision].extension[droitPrestation].extension[natureDroitPrestation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[natureDroitPrestation] ^short = "Nature du droit de prestation"
*/

* extension[decision].extension[droitPrestation].extension[dateOuverture].value[x] only date
* extension[decision].extension[droitPrestation].extension[dateOuverture] ^short = "Date d'ouverture du droit"

* extension[decision].extension[droitPrestation].extension[dateEcheance].value[x] only date
* extension[decision].extension[droitPrestation].extension[dateEcheance] ^short = "Date d'échéance du droit"

* extension[decision].extension[droitPrestation].extension[existencePAG].value[x] only boolean
* extension[decision].extension[droitPrestation].extension[existencePAG] ^short = "Existence d'un PAG"

/*
* extension[decision].extension[droitPrestation].extension[motifFinPAG].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[motifFinPAG] ^short = "Motif de fin du PAG"
*/

* extension[decision].extension[droitPrestation].extension[creton].value[x] only boolean
* extension[decision].extension[droitPrestation].extension[creton] ^short = "Indicateur creton"

* extension[decision].extension[droitPrestation].extension[taux].value[x] only Quantity
* extension[decision].extension[droitPrestation].extension[taux] ^short = "Taux"

/*
* extension[decision].extension[droitPrestation].extension[typeCompensation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[typeCompensation] ^short = "Type de compensation"
*/

* extension[decision].extension[droitPrestation].extension[commentaire].value[x] only string
* extension[decision].extension[droitPrestation].extension[commentaire] ^short = "Commentaire du droit de prestation"

// BLOC DETAIL PRESTATION

* extension[decision].extension[droitPrestation].extension[detailPrestation].value[x] 0..0
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension contains
    temporaliteAccueil 0..1 and
    // precisionOrientation 0..1 and
    accueilSequentiel 0..1 and
    formation 0..1 and
    montantAttribue 0..1 and
    frequence 0..1 and
    // qualificationOrientation 1..1 and
    structureAccueil 1..* and
    priseCharge 0..*

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil].valueCodeableConcept from $JDV-J30-TemporaliteAccueil-ROR
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil] ^short = "Temporalité d'accueil"

/*
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[precisionOrientation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[precisionOrientation] ^short = "Précision de l'orientation"
*/

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[accueilSequentiel].value[x] only boolean
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[accueilSequentiel] ^short = "Accueil séquentiel"

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[formation].value[x] only string
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[formation] ^short = "Formation"

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[montantAttribue].value[x] only Money
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[montantAttribue] ^short = "Montant attribué"

* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[frequence].value[x] only Quantity
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[frequence] ^short = "Fréquence"

/*
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[qualificationOrientation].value[x] only CodeableConcept
* extension[decision].extension[droitPrestation].extension[detailPrestation].extension[qualificationOrientation] ^short = "Qualification de l'orientation"
*/

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
