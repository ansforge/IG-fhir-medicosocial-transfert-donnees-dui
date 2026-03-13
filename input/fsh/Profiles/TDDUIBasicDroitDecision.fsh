Profile: TDDUIBasicDroitDecision
Parent: Basic
Id: tddui-basic-droit-decision
Title: "TDDUI Basic Droit Decision"
Description: "Profil de la ressource Basic permettant de représenter la décision de la CDAPH ainsi que les droits associés." 

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

* code from TDDUIBasicType (required)
* code = TDDUIBasicType#DROITDECISION "Droits et Décision"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    idDecision 1..1 and
    numeroEnregistrement 0..1 and
    idDecisionMAJ 0..* and
    idNat_Decision 0..1 and
    numeroAllocataire 0..1

* identifier[idDecision] ^short = "Identifiant principal de la décision"
* identifier[idDecision].system 1..1
* identifier[idDecision].system = "https://identifiant-medicosocial-decision.esante.gouv.fr"
* identifier[idDecision].value 1..1

* identifier[numeroEnregistrement] ^short = "Numéro d'enregistrement de la décision"
* identifier[numeroEnregistrement].system 1..1
* identifier[numeroEnregistrement].system = "https://identifiant-medicosocial-numeroEnregistrement.esante.gouv.fr"
* identifier[numeroEnregistrement].value 1..1

* identifier[idDecisionMAJ] ^short = "Identifiant de la décision mise à jour"
* identifier[idDecisionMAJ].system 1..1
* identifier[idDecisionMAJ].system = "https://identifiant-medicosocial-decision-maj.esante.gouv.fr"
* identifier[idDecisionMAJ].value 1..1

* identifier[idNat_Decision] ^short = "Identifiant national de la décision"
* identifier[idNat_Decision].system 1..1
* identifier[idNat_Decision].system = "https://identifiant-medicosocial-decision-viatrajectoire.esante.gouv.fr"
* identifier[idNat_Decision].value 1..1

* identifier[numeroAllocataire] ^short = "Numéro d'allocataire"
* identifier[numeroAllocataire].system 1..1
* identifier[numeroAllocataire].system = "https://identifiant-medicosocial-numeroAllocataire.esante.gouv.fr"
* identifier[numeroAllocataire].value 1..1

* extension contains TDDUIDroitDecision named TDDUIDroitDecision 1..1

Mapping:  ConceptMetier_TDDUIBasicDroitDecision
Source:   TDDUIBasicDroitDecision
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIBasicDroitDecision
Title:    "Modèle de contenu DUI"
* -> "DroitDecision"

* subject -> "Usager"
* identifier[idDecision] -> "Decision.idDecision"
* identifier[numeroEnregistrement] -> "Decision.numeroEnregistrement"
* identifier[idDecisionMAJ] -> "Decision.idDecisionMAJ"
* identifier[idNat_Decision] -> "Decision.idNat_Decision"
* identifier[numeroAllocataire] -> "DroitPrestation.numeroAllocataire"
* extension[TDDUIDroitDecision].extension[decision] -> "Decision"
* extension[TDDUIDroitDecision].extension[decision].extension[dateEffetCloture] -> "Decision.dateEffetCloture"
* extension[TDDUIDroitDecision].extension[decision].extension[dateDecision] -> "Decision.dateDecision"
* extension[TDDUIDroitDecision].extension[decision].extension[motivationLocale] -> "Decision.motivationLocale"
* extension[TDDUIDroitDecision].extension[decision].extension[commentaire] -> "Decision.commentaire"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation] -> "DroitPrestation"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[dateOuverture] -> "DroitPrestation.dateOuverture"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[dateEcheance] -> "DroitPrestation.dateEcheance"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[existencePAG] -> "DroitPrestation.existencePAG"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[creton] -> "DroitPrestation.creton"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[taux] -> "DroitPrestation.taux"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[commentaire] -> "DroitPrestation.commentaire"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation] -> "DetailPrestation"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[accueilSequentiel] -> "DetailPrestation.accueilSequentiel"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[formation] -> "DetailPrestation.formation"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[montantAttribue] -> "DetailPrestation.montantAttribue"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[frequence] -> "DetailPrestation.frequence"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[structureAccueil] -> "DetailPrestation.StructureAccueil"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge] -> "PriseCharge"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification] -> "Quantification"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[valeurPriseCharge] -> "Quantification.valeurPriseCharge"
* extension[TDDUIDroitDecision].extension[decision].extension[droitPrestation].extension[detailPrestation].extension[priseCharge].extension[quantification].extension[unitePriseCharge] -> "Quantification.UnitePriseCharge"