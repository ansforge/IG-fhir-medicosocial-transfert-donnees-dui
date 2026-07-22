# TDDUI Participant Present - Médicosocial - Transfert de données DUI v2.4.0

## Extension: TDDUI Participant Present 

Indique la présence du participant à l'événement.

* **Événement** :Indique la présence du participant à l'événement.
* **Repas** : Indique la présence de l'usager au repas.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md) and [TDDUI Observation Repas](StructureDefinition-tddui-observation-repas.md)
* Examples for this Extension: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md) and [Observation/tddui-observation-repas-example](Observation-tddui-observation-repas-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-participant-present.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-participant-present.csv), [Excel](../StructureDefinition-tddui-participant-present.xlsx), [Schematron](../StructureDefinition-tddui-participant-present.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-participant-present",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-participant-present",
  "version" : "2.4.0",
  "name" : "TDDUIParticipantPresent",
  "title" : "TDDUI Participant Present",
  "status" : "active",
  "date" : "2026-07-22T13:04:03+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Indique la présence du participant à l'événement.\n- **Événement** :Indique la présence du participant à l'événement.\n- **Repas** : Indique la présence de l'usager au repas.",
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
    "expression" : "Encounter.participant"
  },
  {
    "type" : "element",
    "expression" : "Encounter.serviceProvider"
  },
  {
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Participant Present",
      "definition" : "Indique la présence du participant à l'événement.\n- **Événement** :Indique la présence du participant à l'événement.\n- **Repas** : Indique la présence de l'usager au repas."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-participant-present"
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
