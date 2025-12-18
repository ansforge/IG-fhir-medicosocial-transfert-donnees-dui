# Lien vers le projet personnalisé - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lien vers le projet personnalisé**

## Extension: Lien vers le projet personnalisé 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*:TDDUICarePlanProjetPersoRef |

Liens vers le projet personnalisé, utilisables dans le profil TDDUIGoalObjectif.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md) and [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)
* Exemples pour ce Extension: [Goal/tddui-pp-ime-goal-objectif-1-example](Goal-tddui-pp-ime-goal-objectif-1-example.md), [Goal/tddui-pp-ime-goal-objectif-2-example](Goal-tddui-pp-ime-goal-objectif-2-example.md), [Goal/tddui-pp-pa-goal-attente-famille-example](Goal-tddui-pp-pa-goal-attente-famille-example.md), [Goal/tddui-pp-pa-goal-attente-usager-example](Goal-tddui-pp-pa-goal-attente-usager-example.md)...Show 3 more,[Goal/tddui-pp-pa-goal-objectif-1-example](Goal-tddui-pp-pa-goal-objectif-1-example.md),[Goal/tddui-pp-pa-goal-objectif-2-example](Goal-tddui-pp-pa-goal-objectif-2-example.md)and[Goal/tddui-pp-pa-goal-objectif-3-example](Goal-tddui-pp-pa-goal-objectif-3-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-careplan-reference)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-careplan-reference.csv), [Excel](StructureDefinition-tddui-careplan-reference.xlsx), [Schematron](StructureDefinition-tddui-careplan-reference.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-careplan-reference",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
  "version" : "2.1.0",
  "name" : "TDDUICarePlanProjetPersoRef",
  "title" : "Lien vers le projet personnalisé",
  "status" : "active",
  "date" : "2025-12-18T14:20:56+00:00",
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
  "description" : "Liens vers le projet personnalisé, utilisables dans le profil TDDUIGoalObjectif.",
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
      "expression" : "Goal"
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
        "short" : "Lien vers le projet personnalisé",
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
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"
            ]
          }
        ]
      }
    ]
  }
}

```
