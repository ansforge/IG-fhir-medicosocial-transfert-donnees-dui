Profile: TDDUIConsentAccord
Parent: Consent
Id: tddui-consent-accord
Title: "TDDUI Consent Accord"
Description: "Profil de la ressource TDDUIConsent permettant de représenter l'accord de l'usager et de la structure." 

* extension contains
    $consentPeriod-r5 named TDDUI-consentPeriod-r5 0..1 

* performer 1..1
* performer only Reference(TDDUIOrganization or TDDUIPractitionerRole or TDDUIPractitioner or FRCoreRelatedPersonProfile or TDDUIPatient or TDDUIPatientINS)

* dateTime 1..1

Mapping:  TDDUIConsentAccord
Source:   TDDUIConsentAccord
Target: "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html"
Id:       specmetier-to-TDDUIConsentAccord
Title:    "Modèle de contenu DUI"
* -> "Accord"

* performer -> "auteur"
* dateTime -> "dateSignature"
* extension[TDDUI-consentPeriod-r5] -> "dureeValidite"
