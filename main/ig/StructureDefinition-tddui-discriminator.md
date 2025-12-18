# TDDUI Discriminator Extension - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Discriminator Extension**

## Extension: TDDUI Discriminator Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*:TDDUIDiscriminator |

Extension pour discriminer les éléments CarePlan.supportingInfo et Goal.note.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md), [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md) and [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)
* Exemples pour ce Extension: [CarePlan/tddui-pp-ime-careplan-example](CarePlan-tddui-pp-ime-careplan-example.md), [CarePlan/tddui-pp-pa-careplan-example](CarePlan-tddui-pp-pa-careplan-example.md), [Goal/tddui-pp-ime-goal-objectif-1-example](Goal-tddui-pp-ime-goal-objectif-1-example.md), [Goal/tddui-pp-ime-goal-objectif-2-example](Goal-tddui-pp-ime-goal-objectif-2-example.md)...Show 5 more,[Goal/tddui-pp-pa-goal-attente-famille-example](Goal-tddui-pp-pa-goal-attente-famille-example.md),[Goal/tddui-pp-pa-goal-attente-usager-example](Goal-tddui-pp-pa-goal-attente-usager-example.md),[Goal/tddui-pp-pa-goal-objectif-1-example](Goal-tddui-pp-pa-goal-objectif-1-example.md),[Goal/tddui-pp-pa-goal-objectif-2-example](Goal-tddui-pp-pa-goal-objectif-2-example.md)and[Goal/tddui-pp-pa-goal-objectif-3-example](Goal-tddui-pp-pa-goal-objectif-3-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-discriminator)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-discriminator.csv), [Excel](StructureDefinition-tddui-discriminator.xlsx), [Schematron](StructureDefinition-tddui-discriminator.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-discriminator",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator",
  "version" : "2.1.0",
  "name" : "TDDUIDiscriminator",
  "title" : "TDDUI Discriminator Extension",
  "status" : "active",
  "date" : "2025-12-18T17:22:25+00:00",
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
  "description" : "Extension pour discriminer les éléments CarePlan.supportingInfo et Goal.note.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "CarePlan.supportingInfo"
    },
    {
      "type" : "element",
      "expression" : "Goal.note"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "TDDUI Discriminator Extension",
        "definition" : "Extension pour discriminer les éléments CarePlan.supportingInfo et Goal.note."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-discriminator-vs"
        }
      }
    ]
  }
}

```
