# TDDUI Admission Date - Médicosocial - Transfert de données DUI v2.3.0

## : TDDUI Admission Date 

Date d’admission dans la structure ESSMS.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)
* Exemples pour ce/t/te Extension: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md) and [Encounter/tddui-encounter-sejour-example](Encounter-tddui-encounter-sejour-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-admission-date)

### 

 . 

*   
*   
*   
*   

#### Contraintes

** Résumé **

Extension simple avec le type dateTime : Date d’admission dans la structure ESSMS.

 **Differential View** 

#### Contraintes

** Résumé **

Extension simple avec le type dateTime : Date d’admission dans la structure ESSMS.

 

 , ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-admission-date",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-admission-date",
  "version" : "2.3.0",
  "name" : "TDDUIAdmissionDate",
  "title" : "TDDUI Admission Date",
  "status" : "active",
  "date" : "2026-06-16T10:35:13+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Date d’admission dans la structure ESSMS.",
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
      "short" : "TDDUI Admission Date",
      "definition" : "Date d’admission dans la structure ESSMS."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-admission-date"
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
