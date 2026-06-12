# TDDUI QR Participant - Médicosocial - Transfert de données DUI v2.3.0-ballot

## Extension: TDDUI QR Participant 

Extension permettant d'ajouter le responsable et le porteur de l'évaluation dans un QuestionnaireResponse.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md)
* Examples for this Extension: [Bundle/tddui-pp-pa-bundle-example](Bundle-tddui-pp-pa-bundle-example.md) and [QuestionnaireResponse/tddui-pp-pa-questionnaire-response-aggir-pa-example](QuestionnaireResponse-tddui-pp-pa-questionnaire-response-aggir-pa-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-qr-participant.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-qr-participant.csv), [Excel](../StructureDefinition-tddui-qr-participant.xlsx), [Schematron](../StructureDefinition-tddui-qr-participant.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-qr-participant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-qr-participant",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIQRParticipant",
  "title" : "TDDUI QR Participant",
  "status" : "active",
  "date" : "2026-06-12T15:13:13+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension permettant d'ajouter le responsable et le porteur de l'évaluation dans un QuestionnaireResponse.",
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
    "expression" : "QuestionnaireResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI QR Participant",
      "definition" : "Extension permettant d'ajouter le responsable et le porteur de l'évaluation dans un QuestionnaireResponse."
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"]
      }]
    },
    {
      "id" : "Extension.extension:TDDUIHolder",
      "path" : "Extension.extension",
      "sliceName" : "TDDUIHolder",
      "short" : "Personne morale porteuse de l'évaluation de l'usager.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:TDDUIHolder.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:TDDUIHolder.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "TDDUIHolder"
    },
    {
      "id" : "Extension.extension:TDDUIHolder.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"]
      }]
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
    }]
  }
}

```
