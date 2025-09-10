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
