# TDDUI Bundle - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Bundle**

## Resource Profile: TDDUI Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle | *Version*:2.0.0 |
| Active as of 2025-10-21 | *Computable Name*:TDDUIBundle |

 
Profil générique créé pour transmettre des données d'un logiciel DUI. 

**Usages:**

* Examples for this Profile: [Bundle/ExampleTDDUIBundle](Bundle-ExampleTDDUIBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-bundle.csv), [Excel](StructureDefinition-tddui-bundle.xlsx), [Schematron](StructureDefinition-tddui-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-bundle",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle",
  "version" : "2.0.0",
  "name" : "TDDUIBundle",
  "title" : "TDDUI Bundle",
  "status" : "active",
  "date" : "2025-10-21T07:57:56+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil générique créé pour transmettre des données d'un logiciel DUI.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "description" : "Slicing based on the profile conformance of the entry",
          "rules" : "open"
        }
      },
      {
        "id" : "Bundle.entry:DUIPatient",
        "path" : "Bundle.entry",
        "sliceName" : "DUIPatient",
        "short" : "Patient conforming to the TDDUIPatient profile, used to convey patients without an INS identity.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIPatient.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIPatient.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIPatient.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIPatientINS",
        "path" : "Bundle.entry",
        "sliceName" : "DUIPatientINS",
        "short" : "Patient conforming to the TDDUIPatientINS profile, used to convey patients identified by an INS identity.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIPatientINS.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIPatientINS.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIPatientINS.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIOrganization",
        "path" : "Bundle.entry",
        "sliceName" : "DUIOrganization",
        "short" : "Organization conforming to the TDDUIOrganization profile, used to convey the responsible organization.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIOrganization.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIOrganization.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIOrganization.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DUIEncounterSejour",
        "path" : "Bundle.entry",
        "sliceName" : "DUIEncounterSejour",
        "short" : "Encounter conforming to the TDDUIEncounterSejour profile, used to convey the patient's stay.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DUIEncounterSejour.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DUIEncounterSejour.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DUIEncounterSejour.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      }
    ]
  }
}

```
