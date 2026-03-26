# TDDUI PP PA Consent Accord Example - Médicosocial - Transfert de données DUI v2.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI PP PA Consent Accord Example**

## Example Consent: TDDUI PP PA Consent Accord Example

Profil: [TDDUI Consent Accord](StructureDefinition-tddui-consent-accord.md)

## Participants

* **Role**: Party
  * **Details**: [Practitioner Élodie Bernard ](Practitioner-tddui-pp-pa-practitioner-ide-example.md)

This consent is made under the policy .

The subject has given their consent.



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "tddui-pp-pa-consent-accord-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord"]
  },
  "status" : "active",
  "scope" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
      "code" : "patient-privacy",
      "display" : "Privacy Consent"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "59284-0"
    }]
  }],
  "dateTime" : "2024-01-15T09:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/tddui-pp-pa-practitioner-ide-example"
  }],
  "policy" : [{
    "authority" : "https://www.cnsa.fr/"
  }]
}

```
