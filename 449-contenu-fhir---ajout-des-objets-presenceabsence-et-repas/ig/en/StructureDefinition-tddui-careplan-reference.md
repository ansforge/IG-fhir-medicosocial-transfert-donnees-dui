# TDDUI CarePlan Projet Perso Ref - Médicosocial - Transfert de données DUI v2.3.0-ballot

## Extension: TDDUI CarePlan Projet Perso Ref 

Liens vers le projet personnalisé, utilisables dans le profil TDDUIGoalObjectif.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md) and [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)
* Examples for this Extension: [Bundle/tddui-pp-ime-bundle-example](Bundle-tddui-pp-ime-bundle-example.md), [Bundle/tddui-pp-pa-bundle-example](Bundle-tddui-pp-pa-bundle-example.md), [Goal/tddui-pp-ime-goal-objectif-1-example](Goal-tddui-pp-ime-goal-objectif-1-example.md), [Goal/tddui-pp-ime-goal-objectif-2-example](Goal-tddui-pp-ime-goal-objectif-2-example.md)... Show 5 more, [Goal/tddui-pp-pa-goal-attente-famille-example](Goal-tddui-pp-pa-goal-attente-famille-example.md), [Goal/tddui-pp-pa-goal-attente-usager-example](Goal-tddui-pp-pa-goal-attente-usager-example.md), [Goal/tddui-pp-pa-goal-objectif-1-example](Goal-tddui-pp-pa-goal-objectif-1-example.md), [Goal/tddui-pp-pa-goal-objectif-2-example](Goal-tddui-pp-pa-goal-objectif-2-example.md) and [Goal/tddui-pp-pa-goal-objectif-3-example](Goal-tddui-pp-pa-goal-objectif-3-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-careplan-reference.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-careplan-reference.csv), [Excel](../StructureDefinition-tddui-careplan-reference.xlsx), [Schematron](../StructureDefinition-tddui-careplan-reference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-careplan-reference",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
  "version" : "2.3.0-ballot",
  "name" : "TDDUICarePlanProjetPersoRef",
  "title" : "TDDUI CarePlan Projet Perso Ref",
  "status" : "active",
  "date" : "2026-06-09T13:44:39+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Liens vers le projet personnalisé, utilisables dans le profil TDDUIGoalObjectif.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
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
      "short" : "TDDUI CarePlan Projet Perso Ref",
      "definition" : "Liens vers le projet personnalisé, utilisables dans le profil TDDUIGoalObjectif."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"]
      }]
    }]
  }
}

```
