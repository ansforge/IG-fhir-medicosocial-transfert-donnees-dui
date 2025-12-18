# Responsable et auteur du statut de l'évaluation - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Responsable et auteur du statut de l'évaluation**

## Extension: Responsable et auteur du statut de l'évaluation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-qr-participant | *Version*:2.2.0-ballot |
| Active as of 2025-12-18 | *Computable Name*:TDDUIQRParticipant |

Extension permettant d'ajouter le responsable de l'évaluation et l'auteur du statut de l'évaluation dans un QuestionnaireResponse.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-qr-participant)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-qr-participant.csv), [Excel](StructureDefinition-tddui-qr-participant.xlsx), [Schematron](StructureDefinition-tddui-qr-participant.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-qr-participant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-qr-participant",
  "version" : "2.2.0-ballot",
  "name" : "TDDUIQRParticipant",
  "title" : "Responsable et auteur du statut de l'évaluation",
  "status" : "active",
  "date" : "2025-12-18T10:47:46+00:00",
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
  "description" : "Extension permettant d'ajouter le responsable de l'évaluation et l'auteur du statut de l'évaluation dans un QuestionnaireResponse.",
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
      "expression" : "QuestionnaireResponse"
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
        "short" : "Responsable et auteur du statut de l'évaluation",
        "definition" : "Extension permettant d'ajouter le responsable de l'évaluation et l'auteur du statut de l'évaluation dans un QuestionnaireResponse."
      },
      {
        "id" : "Extension.extension:TDDUIResponsible",
        "path" : "Extension.extension",
        "sliceName" : "TDDUIResponsible",
        "short" : "Responsable de l'évaluation.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:TDDUIResponsible.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:TDDUIResponsible.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "TDDUIResponsible"
      },
      {
        "id" : "Extension.extension:TDDUIResponsible.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:TDDUIStatusAuthor",
        "path" : "Extension.extension",
        "sliceName" : "TDDUIStatusAuthor",
        "short" : "Auteur du statut de l'évaluation.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:TDDUIStatusAuthor.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:TDDUIStatusAuthor.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "TDDUIStatusAuthor"
      },
      {
        "id" : "Extension.extension:TDDUIStatusAuthor.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-qr-participant"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
