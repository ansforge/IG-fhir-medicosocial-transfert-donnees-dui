# TDDUI Status Author - Médicosocial - Transfert de données DUI v2.3.0

## Extension: TDDUI Status Author 

Extension permettant de représenter l'auteur du statut.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md), [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md), [TDDUI Goal Projet Vie](StructureDefinition-tddui-goal-projet-vie.md)... Show 4 more, [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md), [TDDUI Slot Presence Absence](StructureDefinition-tddui-slot-presence-absence.md), [TDDUI Task Action](StructureDefinition-tddui-task-action.md) and [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-status-author.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-status-author.csv), [Excel](../StructureDefinition-tddui-status-author.xlsx), [Schematron](../StructureDefinition-tddui-status-author.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-status-author",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author",
  "version" : "2.3.0",
  "name" : "TDDUIStatusAuthor",
  "title" : "TDDUI Status Author",
  "status" : "active",
  "date" : "2026-06-29T13:00:14+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension permettant de représenter l'auteur du statut.",
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
    "expression" : "Goal.lifecycleStatus"
  },
  {
    "type" : "element",
    "expression" : "CarePlan.status"
  },
  {
    "type" : "element",
    "expression" : "Task.status"
  },
  {
    "type" : "element",
    "expression" : "Encounter.status"
  },
  {
    "type" : "element",
    "expression" : "QuestionnaireResponse.status"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Status Author",
      "definition" : "Extension permettant de représenter l'auteur du statut."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Auteur du statut.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role"]
      }]
    }]
  }
}

```
