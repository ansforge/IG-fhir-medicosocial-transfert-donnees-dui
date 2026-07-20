Profile: TDDUIBasicDecision
Parent: Basic
Id: tddui-basic-decision
Title: "TDDUI Basic Decision"
Description: "Profil de la ressource Basic permettant de représenter la décision de la CDAPH ainsi que les droits associés." 
* obeys idDecisionMAJCardinality
* obeys idDecisionMAJInterdiction
* subject only Reference(TDDUIServiceRequestDemandeOrientation)

* code from TDDUIBasicType (required)
* code = TDDUIBasicType#DECISION "Décision" 

* identifier 1..*
* identifier.type from TDDUIBasicDecisionIdentifier (required)
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
* identifier[idDecisionMAJ] ^short = "Identifiants de la ou des décisions révisées ou renouvelées à l'origine du droit ou identifiant de la décision clôturée (concerne une seule décision) en cas de clôture de droit."
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



Invariant: idDecisionMAJCardinality
Description: "L'idDecisionMAJ est obligatoire si typeDecision = '5' (Clôture de droit) ou typeDecision ='1' (Attribution) et DroitPrestation.natureDroit = '6' (Renouvellement) ou '7' (Révision)."
Severity: #error
Expression: "(
  iif(
    extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').exists(),
    (
      extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='typeDecision').value.ofType(CodeableConcept).coding.where(code='5').exists()
      or
      (
        extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='typeDecision').value.ofType(CodeableConcept).coding.where(code='1').exists()
        and
        iif(
          extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='droitPrestation').exists(),
          (
            extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='droitPrestation').extension.where(url='natureDroitPrestation').value.ofType(CodeableConcept).coding.where(code='6').exists()
            or
            extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='droitPrestation').extension.where(url='natureDroitPrestation').value.ofType(CodeableConcept).coding.where(code='7').exists()
          ),
          false
        )
      )
    ),
    false
  )
)
implies
(
  identifier.where(type.coding.code='IDDECISIONMAJ').exists()
)"

Invariant: idDecisionMAJInterdiction
Description: "L'idDecisionMAJ n'est pas à transmettre si typeDecision = '1' (Attribution) et DroitPrestation.natureDroit = '1' (Attribution)"
Severity: #error
Expression: "(
  iif(
    extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').exists(),
    (
      extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='typeDecision').value.ofType(CodeableConcept).coding.where(code='1').exists()
      and
      extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='droitPrestation').extension.where(url='natureDroitPrestation').value.ofType(CodeableConcept).coding.where(code='1').exists()
    ),
    false
  )
)
implies
(
  identifier.where(type.coding.code='IDDECISIONMAJ').exists().not()
)"
 


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
* extension[TDDUIDecision] -> "Decision"
* extension[TDDUIDecision].extension[dateEffetCloture] -> "Decision.dateEffetCloture"
* extension[TDDUIDecision].extension[dateDecision] -> "Decision.dateDecision"
* extension[TDDUIDecision].extension[motivationLocale] -> "Decision.motivationLocale"
* extension[TDDUIDecision].extension[commentaire] -> "Decision.commentaire"
* extension[TDDUIDecision].extension[typeDecision] -> "Decision.typeDecision"
* extension[TDDUIDecision].extension[motivation] -> "Decision.motivation"
* extension[TDDUIDecision].extension[droitPrestation] -> "DroitPrestation"
* extension[TDDUIDecision].extension[droitPrestation].extension[categorieDroitPrestation] -> "DroitPrestation.categorieDroitPrestation"
* extension[TDDUIDecision].extension[droitPrestation].extension[typeDroitPrestation] -> "DroitPrestation.typeDroitPrestation"
* extension[TDDUIDecision].extension[droitPrestation].extension[natureDroitPrestation] -> "DroitPrestation.natureDroitPrestation"
* extension[TDDUIDecision].extension[droitPrestation].extension[dateOuverture] -> "DroitPrestation.dateOuverture"
* extension[TDDUIDecision].extension[droitPrestation].extension[dateEcheance] -> "DroitPrestation.dateEcheance"
* extension[TDDUIDecision].extension[droitPrestation].extension[existencePAG] -> "DroitPrestation.existencePAG"
* extension[TDDUIDecision].extension[droitPrestation].extension[creton] -> "DroitPrestation.creton"
* extension[TDDUIDecision].extension[droitPrestation].extension[taux] -> "DroitPrestation.taux"
* extension[TDDUIDecision].extension[droitPrestation].extension[commentaire] -> "DroitPrestation.commentaire"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation] -> "DetailPrestation"
* extension[TDDUIDecision].extension[droitPrestation].extension[typeCompensation] -> "DroitPrestation.typeCompensation"
* extension[TDDUIDecision].extension[droitPrestation].extension[motifFinPAG] -> "DroitPrestation.motifFinPAG"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil] -> "DetailPrestation.temporaliteAccueil"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[accueilSequentiel] -> "DetailPrestation.accueilSequentiel"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[formation] -> "DetailPrestation.formation"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[montantAttribue] -> "DetailPrestation.montantAttribue"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[frequence] -> "DetailPrestation.frequence"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[structureAccueil] -> "DetailPrestation.StructureAccueil"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[precisionOrientation] -> "DetailPrestation.precisionOrientation"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[qualificationOrientation] -> "DetailPrestation.qualificationOrientation"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge] -> "PriseCharge"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[modePriseCharge] -> "PriseCharge.modePriseCharge"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification] -> "Quantification"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[valeurPriseCharge] -> "Quantification.valeurPriseCharge"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[unitePriseCharge] -> "Quantification.UnitePriseCharge"
* extension[TDDUIDecision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[frequencePriseCharge] -> "Quantification.frequencePriseCharge"
