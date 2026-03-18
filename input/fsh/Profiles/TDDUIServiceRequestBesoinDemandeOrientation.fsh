Profile: TDDUIServiceRequestDemandeOrientation
Parent: ServiceRequest
Id: tddui-service-request-demande-orientation
Title: "TDDUI ServiceRequest DemandeOrientation"
Description: "Profil de la ressource ServiceRequest permettant de représenter la demande d'orientation adressée à la CDAPH." 

* identifier 1..1
* identifier.value 1..1
* identifier.system 1..1
* identifier.system ^short = "oid de la MPDH"

* category 0..1

* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator').value"
* supportingInfo ^slicing.rules = #open 
* supportingInfo contains
    demandeOrientation 0..* and
    depotPoste 0..1 and
    reponseOrientation 0..1 and
    pieceComplementaire 0..*

* supportingInfo.extension contains
    TDDUIDiscriminator named TDDUIDiscriminator 1..4

* supportingInfo[demandeOrientation] ^short = "Demande d'orientation"
* supportingInfo[demandeOrientation].extension[TDDUIDiscriminator] 1..1
* supportingInfo[demandeOrientation].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUIServiceRequestSupportingInfo (required)
* supportingInfo[demandeOrientation].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminator#demandeOrientation
* supportingInfo[demandeOrientation] only Reference(TDDUIDocumentReference)

* supportingInfo[depotPoste] ^short = "Dépôt de la poste"
* supportingInfo[depotPoste].extension[TDDUIDiscriminator] 1..1
* supportingInfo[depotPoste].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUIServiceRequestSupportingInfo (required)
* supportingInfo[depotPoste].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminator#depotPoste
* supportingInfo[depotPoste] only Reference(TDDUIDocumentReference)

* supportingInfo[reponseOrientation] ^short = "Réponse de la CDAPH à la demande d'orientation"
* supportingInfo[reponseOrientation].extension[TDDUIDiscriminator] 1..1
* supportingInfo[reponseOrientation].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUIServiceRequestSupportingInfo (required)
* supportingInfo[reponseOrientation].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminator#reponseOrientation
* supportingInfo[reponseOrientation] only Reference(TDDUIDocumentReference)

* supportingInfo[pieceComplementaire] ^short = "Pièce(s) complémentaire(s) à la demande d'orientation."
* supportingInfo[pieceComplementaire].extension[TDDUIDiscriminator] 1..1
* supportingInfo[pieceComplementaire].extension[TDDUIDiscriminator].valueCodeableConcept from TDDUIServiceRequestSupportingInfo (required)
* supportingInfo[pieceComplementaire].extension[TDDUIDiscriminator].valueCodeableConcept = TDDUIDiscriminator#pieceComplementaire
* supportingInfo[pieceComplementaire] only Reference(TDDUIDocumentReference)

* subject only Reference(TDDUIPatient or TDDUIPatientINS)

Mapping:  ConceptMetier_TDDUIServiceRequestDemandeOrientation
Source:   TDDUIServiceRequestDemandeOrientation
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIServiceRequestDemandeOrientation
Title:    "Modèle de contenu DUI"
* -> "DemandeOrientation"

* identifier -> "idDemandeOrientation"
* category -> "typeDemande"
* code -> "natureDemande"
* supportingInfo[demandeOrientation] -> "demandeOrientation"
* supportingInfo[depotPoste] -> "depotPoste"
* supportingInfo[reponseOrientation] -> "reponseOrientation"
* supportingInfo[pieceComplementaire] -> "pieceComplementaire"
* occurrencePeriod.start -> "dateEnvoiDemande"
* occurrencePeriod.end -> "dateReponseOrientation"
* subject -> "Usager"