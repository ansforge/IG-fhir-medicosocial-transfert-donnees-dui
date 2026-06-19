Profile: TDDUIBasicDecision
Parent: Basic
Id: tddui-basic-decision
Title: "TDDUI Basic Decision"
Description: "Profil de la ressource Basic permettant de représenter la décision de la CDAPH ainsi que les droits associés." 

* obeys motivationLocaleRequired
* obeys idDecisionMAJCardinality
* obeys idDecisionMAJInterdiction
* obeys FormationCardinality
* obeys PrecisionOrientationValues7.8
* obeys PrecisionOrientationValues7.9
* obeys PrecisionOrientationValues8.3
* obeys PrecisionOrientationValues8.6
* obeys cretonCardinality
* obeys DateEffetClotureCardinality
* obeys temporaliteAccueilCardinalityViaTypeDroitPrestation
* obeys temporaliteAccueilCardinalityViaCategorieDroitPrestation
* obeys PrecisionOrientationValues13.1-13.2

* subject only Reference(TDDUIServiceRequestDemandeOrientation)

* code from TDDUIBasicType (required)
* code = TDDUIBasicType#DECISION "Décision" 

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

* identifier contains
    idDecision 1..1 and
    idDecisionMAJ 0..* and
    numeroEnregistrement 0..1 and
    idNat_Decision 0..1 and
    numeroAllocataire 0..1

* identifier.use ^short = "L'idDecision est défini comme la slice idDecision caractérisée par identifier.use = official."
* identifier[idDecision].type from TDDUIBasicDecisionIdentifier (required)
* identifier[idDecision].type = TDDUIBasicDecisionIdentifier#IDDECISION "Identifiant principal de la décision"
* identifier[idDecision] ^short = "Identifiants de la ou des décisions révisées ou renouvelées à l'origine du droit ou identifiant de la décision clôturée (concerne une seule décision) en cas de clôture de droit."
* identifier[idDecision].system 1..1
* identifier[idDecision].system ^short = "oid de la MDPH"
* identifier[idDecision].value 1..1

* identifier[idDecisionMAJ].type from TDDUIBasicDecisionIdentifier (required)
* identifier[idDecisionMAJ].type = TDDUIBasicDecisionIdentifier#IDDECISIONMAJ "Identifiant révisé de la décision"
* identifier[idDecisionMAJ] ^short = "Identifiant révisé de la décision"
* identifier[idDecisionMAJ].system 1..1
* identifier[idDecisionMAJ].system ^short = "oid de la MDPH"
* identifier[idDecisionMAJ].value 1..1

* identifier[numeroEnregistrement].type from TDDUIBasicDecisionIdentifier (required)
* identifier[numeroEnregistrement].type = TDDUIBasicDecisionIdentifier#NUMENREG "Numéro enregistrement de la décision"
* identifier[numeroEnregistrement] ^short = "Numéro d’enregistrement au conseil général si différent du numéro d’identification MDPH."
* identifier[numeroEnregistrement].system 1..1
* identifier[numeroEnregistrement].system = "https://identifiant-medicosocial-numenregistrement.esante.gouv.fr/"
* identifier[numeroEnregistrement].value 1..1

* identifier[idNat_Decision].type from TDDUIBasicDecisionIdentifier (required)
* identifier[idNat_Decision].type = TDDUIBasicDecisionIdentifier#IDNATDECISION "Identifiant national de la décision"
* identifier[idNat_Decision] ^short = " Identifiant technique unique de la décision attribué par ViaTrajectoire"
* identifier[idNat_Decision].system 1..1
* identifier[idNat_Decision].system = "urn:oid:1.2.250.1.213.8.1"
* identifier[idNat_Decision].value 1..1

* identifier[numeroAllocataire].type from TDDUIBasicDecisionIdentifier (required)
* identifier[numeroAllocataire].type = TDDUIBasicDecisionIdentifier#NUMALLOC "Numéro allocataire"
* identifier[numeroAllocataire] ^short = "Numéro allocataire"
* identifier[numeroAllocataire].system 1..1
* identifier[numeroAllocataire].system = "https://identifiant-medicosocial-numallocataire.esante.gouv.fr/"
* identifier[numeroAllocataire].value 1..1

* extension contains TDDUIDecision named TDDUIDecision 1..1


Invariant: motivationLocaleRequired
Description: "La motivation locale doit être renseignée si la motivation de la décision est '9999' (Autre)."
Severity: #error
Expression: "(extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='motivation').valueCodeableConcept.coding.code='215')
 implies ((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='motivationLocale').valueString.exists()))"

Invariant: idDecisionMAJCardinality
Description: "l'idDecisionMAJ est obligatoire si typeDecision = '5' (Clôture de droit) ou typeDecision ='1' (Attribution) et DroitPrestation.natureDroit = '6' (Renouvellement) ou '7' (Révision)."
Severity: #error
Expression: "((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='typeDecision').valueCodeableConcept.coding.code='1') and ((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='natureDroitPrestation').valueCodeableConcept=6) or (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='natureDroitPrestation').valueCodeableConcept=7))) implies (identifier.where(type.coding.code='IDDECISIONMAJ').exists())"

Invariant: idDecisionMAJInterdiction
Description: "l'idDecisionMAJ n'est pas à transmettre si typeDecision = '1' (Attribution) et DroitPrestation.natureDroit = '1' (Attribution)"
Severity: #error
Expression: "((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='typeDecision').valueCodeableConcept.coding.code='1') and (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='natureDroitPrestation').valueCodeableConcept=1)) implies (identifier.where(type.coding.code='IDDECISIONMAJ').exists().not())"
 
Invariant: FormationCardinality
Description: "Formation est obligatoire si le type de droit et prestation est '11.1' (Orientation en Centre de rééducation professionnelle (CRP))."
Severity: #error
Expression: "(extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='11.1') implies (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='formation').exists())"

Invariant: PrecisionOrientationValues7.8
Description: "Si typeDroitPrestation = '7.8' (Orientation vers un Service d'éducation spéciale et de soins à domicile (SESSAD)) alors precisionOrientation = '1' (SESSAD polyvalent) ou '6' (SESSAD pour troubles du langage et des apprentissages)."
Severity: #error
Expression: "(extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='7.8') implies ((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()>=1) and (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()<=6))"


Invariant: PrecisionOrientationValues7.9
Description: "Si typeDroitPrestation = '7.9' (Orientation vers un Service d'accompagnement familial et d'éducation précoce (SAFEP)) alors precisionOrientation = '7' (SAFEP déficience auditive) ou '8' (SAFEP déficience visuelle)."
Severity: #error
Expression: "(extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='7.9') implies ((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()>=7) and (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()<=8))"

Invariant: PrecisionOrientationValues13.1-13.2
Description: "Si typeDroitPrestation = '13.1' (Orientation vers un établissement d'accueil non médicalisé) ou '13.2' (Orientation vers un établissement d'accueil médicalisé en tout ou partie) alors precisionOrientation est interdit"
Severity: #error
Expression: "((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='13.1') or (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='13.2')) implies (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='precisionOrientation').exists().not())"

Invariant: PrecisionOrientationValues8.3
Description: "Si typeDroitPrestation = '8.3' (Orientation en Enseignement adapté (SEGPA/EREA)) alors precisionOrientation = '9' (Scolarisation en SEGPA (sections d’enseignement général et professionnel adapté)) ou '10' (Scolarisation en EREA (établissements régionaux d’enseignement adapté))."
Severity: #error
Expression: "(extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.3') implies ((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()>=9) and (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code.toInteger()<=10))"

Invariant: PrecisionOrientationValues8.6
Description: "Si typeDroitPrestation = '8.6' (Orientation en Unité d'enseignement) alors precisionOrientation = 'UEA' (Unité d'enseignement élémentaire autisme) ou 'UEM' (Unité d'enseignement en maternelle plan autisme)."
Severity: #error
Expression: "(extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.6') implies ((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code='UEA') or (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='precisionOrientation').valueCodeableConcept.coding.code='UEM'))"

Invariant: DateEffetClotureCardinality
Description: "Si typeDecision = '5' (Clôture de droit) alors dateEffetCloture est obligatoire."
Severity: #error
Expression: "(extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='decision').extension.where(url='typeDecision').valueCodeableConcept.coding.code='5') implies ((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='decision').extension.where(url='dateEffetCloture').exists()))"

Invariant: temporaliteAccueilCardinalityViaCategorieDroitPrestation
Description: "Si categorieDroitPrestation = '13' (Orientation ESMS Enfants) ou '7' (Orientation ESMS Adultes) alors la temporalité d'accueil est obligatoire."
Severity: #error
Expression: "((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.extension.where(url='categorieDroitPrestation').valueCodeableConcept.coding.code='13') or (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.extension.where(url='categorieDroitPrestation').valueCodeableConcept.coding.code='7')) implies (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='temporaliteAccueil').exists())"

Invariant: temporaliteAccueilCardinalityViaTypeDroitPrestation
Description: "Si typeDroitPrestation = '8.6' (Orientation en Unité d'enseignement) ou '8.7' (Orientation vers une Scolarisation en milieu ordinaire à temps partagé) ou '8.8' (Orientation vers une Unité d'enseignement et une scolarisation en ULIS à temps partagé) ou '8.10' (Orientation vers une unité d'enseignement et une scolarisation en enseignement adapté à temps partagé) alors la temporalité d'accueil est obligatoire."
Severity: #error
Expression: "((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.6') or (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.7') or (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.8') or (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code='8.10')) implies (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='temporaliteAccueil').exists())"

Invariant: cretonCardinality
Description: "Si categorieDroitPrestation = '7' (ESSMS enfant) alors Creton est obligatoire"
Severity: #error
Expression: "((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.extension.where(url='categorieDroitPrestation').valueCodeableConcept.coding.code='7') or (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.extension.where(url='typeDroitPrestation').valueCodeableConcept.coding.code.matches('^7[.][0-9]+$'))) implies (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.extension.extension.where(url='creton').exists())"


Mapping:  ConceptMetier_TDDUIBasicDecision
Source:   TDDUIBasicDecision
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIBasicDecision
Title:    "Modèle de contenu DUI"
* -> "Decision"

* subject -> "DemandeOrientation"
* identifier[idDecision] -> "Decision.idDecision"
* identifier[idDecisionMAJ] -> "Decision.idDecisionMAJ"
* identifier[numeroEnregistrement] -> "Decision.numeroEnregistrement"
* identifier[idNat_Decision] -> "Decision.idNat_Decision"
* identifier[numeroAllocataire] -> "DroitPrestation.numeroAllocataire"
* extension[TDDUIDecision].extension[decision] -> "Decision"
* extension[TDDUIDecision].extension[decision].extension[dateEffetCloture] -> "Decision.dateEffetCloture"
* extension[TDDUIDecision].extension[decision].extension[dateDecision] -> "Decision.dateDecision"
* extension[TDDUIDecision].extension[decision].extension[motivationLocale] -> "Decision.motivationLocale"
* extension[TDDUIDecision].extension[decision].extension[commentaire] -> "Decision.commentaire"
* extension[TDDUIDecision].extension[decision].extension[typeDecision] -> "Decision.typeDecision"
* extension[TDDUIDecision].extension[decision].extension[motivation] -> "Decision.motivation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation] -> "DroitPrestation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[categorieDroitPrestation] -> "DroitPrestation.categorieDroitPrestation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[typeDroitPrestation] -> "DroitPrestation.typeDroitPrestation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[natureDroitPrestation] -> "DroitPrestation.natureDroitPrestation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateOuverture] -> "DroitPrestation.dateOuverture"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateEcheance] -> "DroitPrestation.dateEcheance"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[existencePAG] -> "DroitPrestation.existencePAG"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[creton] -> "DroitPrestation.creton"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[taux] -> "DroitPrestation.taux"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[commentaire] -> "DroitPrestation.commentaire"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation] -> "DetailPrestation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[typeCompensation] -> "DroitPrestation.typeCompensation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[motifFinPAG] -> "DroitPrestation.motifFinPAG"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil] -> "DetailPrestation.temporaliteAccueil"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[accueilSequentiel] -> "DetailPrestation.accueilSequentiel"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[formation] -> "DetailPrestation.formation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[montantAttribue] -> "DetailPrestation.montantAttribue"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[frequence] -> "DetailPrestation.frequence"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[structureAccueil] -> "DetailPrestation.StructureAccueil"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[precisionOrientation] -> "DetailPrestation.precisionOrientation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[qualificationOrientation] -> "DetailPrestation.qualificationOrientation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge] -> "PriseCharge"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[modePriseCharge] -> "PriseCharge.modePriseCharge"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification] -> "Quantification"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[valeurPriseCharge] -> "Quantification.valeurPriseCharge"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[unitePriseCharge] -> "Quantification.UnitePriseCharge"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge]..extension[quantification].extension[frequencePriseCharge] -> "Quantification.frequencePriseCharge"
