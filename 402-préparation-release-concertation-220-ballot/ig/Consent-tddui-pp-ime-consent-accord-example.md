# tddui-pp-ime-consent-accord-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-pp-ime-consent-accord-example**

## Example Consent: tddui-pp-ime-consent-accord-example

Profil: [TDDUI Consent Accord](StructureDefinition-tddui-consent-accord.md)

**status**: Active

**scope**: Privacy Consent

**category**: Patient Consent

**dateTime**: 2024-01-15 09:00:00+0100

**performer**: [Practitioner Claire Martin](Practitioner-tddui-practitioner-example.md)

### Policies

| | |
| :--- | :--- |
| - | **Authority** |
| * | [https://www.cnsa.fr/](https://www.cnsa.fr/) |



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "tddui-pp-ime-consent-accord-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord"
    ]
  },
  "status" : "active",
  "scope" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
        "code" : "patient-privacy",
        "display" : "Privacy Consent"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "59284-0",
          "display" : "Patient Consent"
        }
      ]
    }
  ],
  "dateTime" : "2024-01-15T09:00:00+01:00",
  "performer" : [
    {
      "reference" : "Practitioner/tddui-practitioner-example"
    }
  ],
  "policy" : [
    {
      "authority" : "https://www.cnsa.fr/"
    }
  ]
}

```
