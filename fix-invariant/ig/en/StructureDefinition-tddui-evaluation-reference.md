# TDDUI Evaluation Ref - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Extension: TDDUI Evaluation Ref 

Liens vers l'évaluation, utilisables dans le profil TDDUIGoalObjectif.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-evaluation-reference.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-evaluation-reference.csv), [Excel](../StructureDefinition-tddui-evaluation-reference.xlsx), [Schematron](../StructureDefinition-tddui-evaluation-reference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-evaluation-reference",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-evaluation-reference",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIEvaluationRef",
  "title" : "TDDUI Evaluation Ref",
  "status" : "active",
  "date" : "2026-07-16T12:36:44+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Liens vers l'évaluation, utilisables dans le profil TDDUIGoalObjectif.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Goal"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Evaluation Ref",
      "definition" : "Liens vers l'évaluation, utilisables dans le profil TDDUIGoalObjectif."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-evaluation-reference"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"]
      }]
    }]
  }
}

```
