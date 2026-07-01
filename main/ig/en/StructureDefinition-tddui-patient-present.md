# TDDUI Patient Present - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Extension: TDDUI Patient Present 

* **Événement** : évènement nécessitant ou non la présence physique de l’usager.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-patient-present.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-patient-present.csv), [Excel](../StructureDefinition-tddui-patient-present.xlsx), [Schematron](../StructureDefinition-tddui-patient-present.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-patient-present",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-present",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIPatientPresent",
  "title" : "TDDUI Patient Present",
  "status" : "active",
  "date" : "2026-07-01T14:33:44+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "\n- **Événement** : évènement nécessitant ou non la présence physique de l’usager.\n",
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Patient Present",
      "definition" : "\n- **Événement** : évènement nécessitant ou non la présence physique de l’usager.\n"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-present"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
