Profile: TDDUIBasicDecision
Parent: Basic
Id: tddui-basic-decision
Title: "TDDUI Basic Decision"
Description: "Profil de la ressource Basic permettant de représenter la décision de la CDAPH ainsi que les droits associés." 

* subject only Reference(TDDUIServiceRequestDemandeOrientation)

* code from TDDUIBasicType (required)
* code = TDDUIBasicType#DECISION "Décision" 

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

* identifier contains
    idDecision 1..* and
    numeroEnregistrement 0..1 and
    idNat_Decision 0..1 and
    numeroAllocataire 0..1

* identifier.use ^short = "L'idDecision est défini comme la slice idDecision caractérisée par identifier.use = official."
* identifier[idDecision].type from TDDUIBasicDecisionIdentifier (required)
* identifier[idDecision].type = TDDUIBasicDecisionIdentifier#IDDECISION "Identifiant principal de la décision"
* identifier[idDecision] ^short = "Identifiant principal de la décision"
* identifier[idDecision].system 1..1
* identifier[idDecision].system ^short = "oid de la MDPH"
* identifier[idDecision].value 1..1

* identifier[numeroEnregistrement].type from TDDUIBasicDecisionIdentifier (required)
* identifier[numeroEnregistrement].type = TDDUIBasicDecisionIdentifier#NUMENREG "Numéro d'enregistrement de la décision"
* identifier[numeroEnregistrement] ^short = "Numéro d'enregistrement de la décision"
* identifier[numeroEnregistrement].system 1..1
* identifier[numeroEnregistrement].system = "https://identifiant-medicosocial-numenregistrement.esante.gouv.fr/"
* identifier[numeroEnregistrement].value 1..1

* identifier[idNat_Decision].type from TDDUIBasicDecisionIdentifier (required)
* identifier[idNat_Decision].type = TDDUIBasicDecisionIdentifier#IDNATDECISION "Identifiant national de la décision"
* identifier[idNat_Decision] ^short = "Identifiant national de la décision"
* identifier[idNat_Decision].system 1..1
* identifier[idNat_Decision].system = "1.2.250.1.213.8.1"
* identifier[idNat_Decision].value 1..1

* identifier[numeroAllocataire].type from TDDUIBasicDecisionIdentifier (required)
* identifier[numeroAllocataire].type = TDDUIBasicDecisionIdentifier#NUMALLOC "Numéro d'allocataire"
* identifier[numeroAllocataire] ^short = "Numéro d'allocataire"
* identifier[numeroAllocataire].system 1..1
* identifier[numeroAllocataire].system = "https://identifiant-medicosocial-numallocataire.esante.gouv.fr/"
* identifier[numeroAllocataire].value 1..1

* extension contains TDDUIDecision named TDDUIDecision 1..1

Mapping:  ConceptMetier_TDDUIBasicDecision
Source:   TDDUIBasicDecision
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIBasicDecision
Title:    "Modèle de contenu DUI"
* -> "Decision"

* subject -> "DemandeOrientation"
* identifier[idDecision] -> "Decision.idDecision/idDecisionMAJ"
* identifier[numeroEnregistrement] -> "Decision.numeroEnregistrement"
* identifier[idNat_Decision] -> "Decision.idNat_Decision"
* identifier[numeroAllocataire] -> "DroitPrestation.numeroAllocataire"
* extension[TDDUIDecision].extension[decision] -> "Decision"
* extension[TDDUIDecision].extension[decision].extension[dateEffetCloture] -> "Decision.dateEffetCloture"
* extension[TDDUIDecision].extension[decision].extension[dateDecision] -> "Decision.dateDecision"
* extension[TDDUIDecision].extension[decision].extension[motivationLocale] -> "Decision.motivationLocale"
* extension[TDDUIDecision].extension[decision].extension[commentaire] -> "Decision.commentaire"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation] -> "DroitPrestation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateOuverture] -> "DroitPrestation.dateOuverture"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[dateEcheance] -> "DroitPrestation.dateEcheance"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[existencePAG] -> "DroitPrestation.existencePAG"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[creton] -> "DroitPrestation.creton"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[taux] -> "DroitPrestation.taux"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[commentaire] -> "DroitPrestation.commentaire"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation] -> "DetailPrestation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[temporaliteAccueil] -> "DetailPrestation.temporaliteAccueil"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[accueilSequentiel] -> "DetailPrestation.accueilSequentiel"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[formation] -> "DetailPrestation.formation"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[montantAttribue] -> "DetailPrestation.montantAttribue"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[frequence] -> "DetailPrestation.frequence"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[structureAccueil] -> "DetailPrestation.StructureAccueil"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge] -> "PriseCharge"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[modePriseCharge] -> "PriseCharge.modePriseCharge"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification] -> "Quantification"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[valeurPriseCharge] -> "Quantification.valeurPriseCharge"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[unitePriseCharge] -> "Quantification.UnitePriseCharge"
* extension[TDDUIDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge]..extension[quantification].extension[frequencePriseCharge] -> "Quantification.frequencePriseCharge"
