# Pièce jointe - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pièce jointe**

## Extension: Pièce jointe 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment | *Version*:2.1.0-ballot |
| Active as of 2025-12-12 | *Computable Name*:TDDUIAttachment |

Extension permettant de véhiculer des pièces jointes que ce soit pour l'évaluation, l'évènement ou le projet personnalisé. L'extension référence le profil PDSm_SimplifiedPublish.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md), [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md), [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)...Show 2 more,[TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md)and[TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md)
* Exemples pour ce Extension: [CarePlan/tddui-pp-pa-careplan-example](CarePlan-tddui-pp-pa-careplan-example.md) and [Goal/tddui-pp-pa-goal-objectif-1-example](Goal-tddui-pp-pa-goal-objectif-1-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-attachment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-attachment.csv), [Excel](StructureDefinition-tddui-attachment.xlsx), [Schematron](StructureDefinition-tddui-attachment.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-attachment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIAttachment",
  "title" : "Pièce jointe",
  "status" : "active",
  "date" : "2025-12-12T08:56:07+00:00",
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
  "description" : "Extension permettant de véhiculer des pièces jointes que ce soit pour l'évaluation, l'évènement ou le projet personnalisé. L'extension référence le profil PDSm_SimplifiedPublish.",
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
      "expression" : "Encounter"
    },
    {
      "type" : "element",
      "expression" : "CarePlan"
    },
    {
      "type" : "element",
      "expression" : "Goal"
    },
    {
      "type" : "element",
      "expression" : "ServiceRequest"
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
        "short" : "Pièce jointe",
        "definition" : "Extension permettant de véhiculer des pièces jointes que ce soit pour l'évaluation, l'évènement ou le projet personnalisé. L'extension référence le profil PDSm_SimplifiedPublish."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-attachment"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"
            ]
          }
        ]
      }
    ]
  }
}

```
