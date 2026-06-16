# TDDUI Entry Date Origin - Médicosocial - Transfert de données DUI v2.3.0

## : TDDUI Entry Date Origin 

Extension permettant de véhiculer la date d'entrée dans l'ESSMS de provenance.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-entry-date-origin)

### 

 . 

*   
*   
*   
*   

#### Contraintes

** Résumé **

Extension simple avec le type dateTime : Extension permettant de véhiculer la date d'entrée dans l'ESSMS de provenance.

 **Differential View** 

#### Contraintes

** Résumé **

Extension simple avec le type dateTime : Extension permettant de véhiculer la date d'entrée dans l'ESSMS de provenance.

 

 , ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-entry-date-origin",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-entry-date-origin",
  "version" : "2.3.0",
  "name" : "TDDUIEntryDateOrigin",
  "title" : "TDDUI Entry Date Origin",
  "status" : "active",
  "date" : "2026-06-16T08:52:34+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension permettant de véhiculer la date d'entrée dans l'ESSMS de provenance.",
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
    "expression" : "Encounter.hospitalization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Entry Date Origin",
      "definition" : "Extension permettant de véhiculer la date d'entrée dans l'ESSMS de provenance."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-entry-date-origin"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
