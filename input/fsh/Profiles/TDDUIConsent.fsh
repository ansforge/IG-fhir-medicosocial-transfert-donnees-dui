Profile: TDDUIConsent
Parent: Consent
Id: tddui-consent
Title: "TDDUI Consent"
Description: "Profil de la ressource TDDUIConsent permettant de représenter l'accord de l'usager et de la structure." 

* extension contains
    $consentPeriod-r5 named TDDUI-consentPeriod-r5 0..1 

* performer 1..1
* performer only Reference(TDDUIPractitionerRole or TDDUIPractitioner or FRCoreRelatedPersonProfile or TDDUIPatient or TDDUIPatientINS)

* dateTime 1..1