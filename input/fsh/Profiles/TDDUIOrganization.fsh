Profile: TDDUIOrganization
Parent: FRCoreOrganizationProfile
Id: tddui-Organization
Title: "TDDUI Organization"
Description: "Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques." 
* identifier[idNatSt] 1..1

Mapping:  ConceptMetier_TDDUIOganization
Source:   TDDUIOrganization
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIOrganization
Title:    "ESSMS Entités juridiques"
* -> "Entités juridiques"
* name -> "raisonSocial"
* identifier[idNatSt] -> "idNat_Struct"