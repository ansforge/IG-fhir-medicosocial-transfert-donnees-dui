# TDDUI Basic Droit Decision Example - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Basic Droit Decision Example**

## Example Basic: TDDUI Basic Droit Decision Example

Profil: [TDDUI Basic Droit Decision](StructureDefinition-tddui-basic-droit-decision.md)

> **TDDUI Droit Decision**
> **droitPrestation**
* dateOuverture: 2020-01-01
* dateEcheance: 2020-12-31
* existencePAG: false

> **url**decision

**identifier**: `https://identifiant-medicosocial-decision.esante.gouv.fr`/1254/194704032

**code**: Droits et Décision



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "tddui-basic-droit-decision-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-droit-decision"]
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
        }],
        "url" : "droitPrestation"
      }],
      "url" : "decision"
    }],
    "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-droit-decision"
  }],
  "identifier" : [{
    "system" : "https://identifiant-medicosocial-decision.esante.gouv.fr",
    "value" : "1254/194704032"
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-type",
      "code" : "DROITDECISION",
      "display" : "Droits et Décision"
    }]
  }
}

```
