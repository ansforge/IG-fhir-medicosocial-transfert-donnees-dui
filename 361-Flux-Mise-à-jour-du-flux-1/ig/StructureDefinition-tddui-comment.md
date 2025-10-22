# Commentaire - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Commentaire**

## Extension: Commentaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment | *Version*:2.0.0 |
| Active as of 2025-10-22 | *Computable Name*:TDDUIComment |

* **Séjour** : commentaire relatif au séjour.
* **Événement** : commentaires sur le déroulé de l’évènement.
* **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.
* **Champ évalué** : commentaire spécifique à un item ou sous-item évalué.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md), [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md) and [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md)
* Examples for this Extension: [Bundle/ExampleTDDUIBundle](Bundle-ExampleTDDUIBundle.md), [Encounter/tddui-encounter-evenement-example](Encounter-tddui-encounter-evenement-example.md), [QuestionnaireResponse/tddui-questionnaire-response-serafin-precision-example](QuestionnaireResponse-tddui-questionnaire-response-serafin-precision-example.md) and [QuestionnaireResponse/tddui-questionnaire-response-serafin-sans-precision-example](QuestionnaireResponse-tddui-questionnaire-response-serafin-sans-precision-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-comment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-comment.csv), [Excel](StructureDefinition-tddui-comment.xlsx), [Schematron](StructureDefinition-tddui-comment.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-comment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment",
  "version" : "2.0.0",
  "name" : "TDDUIComment",
  "title" : "Commentaire",
  "status" : "active",
  "date" : "2025-10-22T07:21:52+00:00",
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
  "description" : "\n- **Séjour** : commentaire relatif au séjour.\n- **Événement** : commentaires sur le déroulé de l’évènement.\n- **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.\n- **Champ évalué** : commentaire spécifique à un item ou sous-item évalué.",
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
        "short" : "Commentaire",
        "definition" : "\n- **Séjour** : commentaire relatif au séjour.\n- **Événement** : commentaires sur le déroulé de l’évènement.\n- **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.\n- **Champ évalué** : commentaire spécifique à un item ou sous-item évalué."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Exemple de commentaire : Cet évènement a débuté plus tard l’usager était sous la douche à l’heure du début du rendez-vous.",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
