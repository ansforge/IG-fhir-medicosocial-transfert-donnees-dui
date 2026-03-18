# TDDUI Basic Decision Example - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Basic Decision Example**

## Example Basic: TDDUI Basic Decision Example

Profil: [TDDUI Basic Decision](StructureDefinition-tddui-basic-decision.md)

> **TDDUI Decision**
> **droitPrestation**
> **url**dateOuverture
**value**: 2020-01-01
> **url**dateEcheance
**value**: 2020-12-31
> **url**existencePAG
**value**: false
> **url**detailPrestation

> **url**decision

**identifier**: Identifiant principal de la décision/1254 (utilisation : official, )

**code**: Décision

**subject**: [ServiceRequest : identifier = 2.16.840.1.113883.2.8.3.75.1#1234; status = active; intent = plan; occurrence[x] = 2020-01-01 --> 2020-01-31](ServiceRequest-tddui-service-request-demande-orientation-example.md)



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "tddui-basic-decision-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-decision"]
  },
  "extension" : [{
    "extension" : [{
      "extension" : [{
        "extension" : [{
          "url" : "dateOuverture",
          "valueDate" : "2020-01-01"
        },
        {
          "url" : "dateEcheance",
          "valueDate" : "2020-12-31"
        },
        {
          "url" : "existencePAG",
          "valueBoolean" : false
        },
        {
          "extension" : [{
            "url" : "structureAccueil"
          }],
          "url" : "detailPrestation"
        }],
        "url" : "droitPrestation"
      }],
      "url" : "decision"
    }],
    "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
        "code" : "IDDECISION",
        "display" : "Identifiant principal de la décision"
      }]
    },
    "system" : "2.16.840.1.113883.2.8.3.75.1",
    "value" : "1254"
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-type",
      "code" : "DECISION",
      "display" : "Décision"
    }]
  },
  "subject" : {
    "reference" : "ServiceRequest/tddui-service-request-demande-orientation-example"
  }
}

```
