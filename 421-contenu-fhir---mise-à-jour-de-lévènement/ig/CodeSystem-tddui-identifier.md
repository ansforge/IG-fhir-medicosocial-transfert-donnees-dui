# TDDUI Patient Identifier - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Patient Identifier**

## CodeSystem: TDDUI Patient Identifier 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier | *Version*:2.2.0 |
| Active as of 2026-02-27 | *Computable Name*:TDDUIIdentifier |

 
CodeSystem pour la définition des codes d'identifiant de l'usager 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIPatientIdentifier](ValueSet-tddui-patient-identifier.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier",
  "version" : "2.2.0",
  "name" : "TDDUIIdentifier",
  "title" : "TDDUI Patient Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-27T13:39:19+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des codes d'identifiant de l'usager",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "PIN",
    "display" : "Patient initial number"
  }]
}

```
