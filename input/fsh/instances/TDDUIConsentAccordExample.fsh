Instance: tddui-pp-pa-consent-accord-example
InstanceOf: TDDUIConsentAccord
Usage: #example
Description: "Exemple d'un accord de la structure"

* status = #active

* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category = http://loinc.org#59284-0

* policy.authority = "https://www.cnsa.fr/"

* dateTime = "2024-01-15T09:00:00+01:00"

* performer = Reference(tddui-pp-pa-practitioner-ide-example)