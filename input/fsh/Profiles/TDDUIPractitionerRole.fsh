Profile: TDDUIPractitionerRole
Parent: FRCorePractitionerRole
Id: tddui-practitioner-role
Title: "TDDUI Practitioner Role"
Description: "Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel."

* code 0..1
* code ^short = "Rôle fonctionnel du professionnel."
* code.coding from $JDV-J47-FunctionCode-CISIS

* code.extension contains 
    TDDUIProfession named tddui-profession 0..1

// Etablissement de rattachement 
* organization only Reference(TDDUIOrganization)

// Practitioner
* practitioner only Reference(TDDUIPractitioner)

Mapping:  ConceptMetier_TDDUIPractitionerRole
Source:   TDDUIPractitionerRole
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIPractitionerRole
Title:    "Professionnel"
* -> "Professionnel"

* code -> "rôle"
* code.extension[TDDUIProfession] -> "profession"
* organization -> "etablissementDeRattachement"
