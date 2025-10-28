# Mode d'exercice - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mode d'exercice**

## Extension: Mode d'exercice 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exercise-mode | *Version*:2.0.0 |
| Active as of 2025-10-28 | *Computable Name*:TDDUIExerciseMode |

Extension permettant de représenter le mode d'exercice du professionnel.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md)
* Examples for this Extension: [Bundle/ExampleTDDUIBundle](Bundle-ExampleTDDUIBundle.md) and [PractitionerRole/tddui-practitioner-role-example](PractitionerRole-tddui-practitioner-role-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-exercise-mode)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-exercise-mode.csv), [Excel](StructureDefinition-tddui-exercise-mode.xlsx), [Schematron](StructureDefinition-tddui-exercise-mode.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-exercise-mode",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exercise-mode",
  "version" : "2.0.0",
  "name" : "TDDUIExerciseMode",
  "title" : "Mode d'exercice",
  "status" : "active",
  "date" : "2025-10-28T15:41:17+00:00",
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
  "description" : "Extension permettant de représenter le mode d'exercice du professionnel.",
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
      "expression" : "PractitionerRole"
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
        "short" : "Mode d'exercice",
        "definition" : "Extension permettant de représenter le mode d'exercice du professionnel."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exercise-mode"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Mode d'exercice du professionnel. Décrit selon quelle modalité est exercée l'activité du professionnel par rapport à son établissement de rattachement.",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.value[x].coding",
        "path" : "Extension.value[x].coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J117-ModeExercice-ENREG/FHIR/JDV-J117-ModeExercice-ENREG"
        }
      }
    ]
  }
}

```
