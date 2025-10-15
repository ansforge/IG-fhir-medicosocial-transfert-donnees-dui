Profile: TDDUIPractitioner
Parent: FRCorePractitionerProfile
Id: tddui-practitioner
Title: "TDDUI Practitioner"
Description: "Profil de la ressource FRCorePractitionerProfile permettant de représenter un professionnel du médicosocial dans le cadre de TDDUI. Le profil AsPractitionerRoleProfile n'a pas été utilisé car il comportait trop de contraintes non présentes dans les DUI.

* identifier[idNatPs] 1..1

* name 0..1
* name only tddui-humanname

Mapping:  ConceptMetier_TDDUIPractitioner
Source:   TDDUIPractitioner
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIPractitioner
Title:    "Professionnel"
* -> "Professionnel"

* identifier[idNatPs] -> "idNat_PS"
* name.family -> "nom"
* name.given -> "prenom"
* name.prefix -> "civilite"
