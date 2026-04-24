# TDDUI Household Situation - Médicosocial - Transfert de données DUI v2.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Household Situation**

## Extension: TDDUI Household Situation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-household-situation | *Version*:2.3.0 |
| Active as of 2026-04-24 | *Computable Name*:TDDUIHouseholdSituation |

Extension complexe regroupant la situation familiale, la composition du foyer et sa description textuelle de l'usager.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md) and [TDDUI Patient](StructureDefinition-tddui-patient.md)
* Exemples pour ce/t/te Extension: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md), [Patient/tddui-patient-example](Patient-tddui-patient-example.md) and [Patient/tddui-patient-ins-example](Patient-tddui-patient-ins-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-household-situation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-household-situation.csv), [Excel](StructureDefinition-tddui-household-situation.xlsx), [Schematron](StructureDefinition-tddui-household-situation.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-household-situation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-household-situation",
  "version" : "2.3.0",
  "name" : "TDDUIHouseholdSituation",
  "title" : "TDDUI Household Situation",
  "status" : "active",
  "date" : "2026-04-24T08:33:47+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension complexe regroupant la situation familiale, la composition du foyer et sa description textuelle de l'usager.",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Household Situation",
      "definition" : "Extension complexe regroupant la situation familiale, la composition du foyer et sa description textuelle de l'usager."
    },
    {
      "id" : "Extension.extension:familySituation",
      "path" : "Extension.extension",
      "sliceName" : "familySituation",
      "short" : "Situation familiale de l'usager",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:familySituation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:familySituation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "familySituation"
    },
    {
      "id" : "Extension.extension:familySituation.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:familySituation.value[x]:valueCodeableConcept",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J176-SituationVieQuotidienne-MDPH/FHIR/JDV-J176-SituationVieQuotidienne-MDPH"
      }
    },
    {
      "id" : "Extension.extension:householdComposition",
      "path" : "Extension.extension",
      "sliceName" : "householdComposition",
      "short" : "Composition du foyer",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:householdComposition.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:householdComposition.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "householdComposition"
    },
    {
      "id" : "Extension.extension:householdComposition.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:householdComposition.value[x]:valueCodeableConcept",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j385-composition-foyer-ms"
      }
    },
    {
      "id" : "Extension.extension:householdCompositionDescription",
      "path" : "Extension.extension",
      "sliceName" : "householdCompositionDescription",
      "short" : "Description de la composition du foyer",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:householdCompositionDescription.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:householdCompositionDescription.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "householdCompositionDescription"
    },
    {
      "id" : "Extension.extension:householdCompositionDescription.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-household-situation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
