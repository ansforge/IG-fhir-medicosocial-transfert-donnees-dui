# TDDUI Encounter Identifier - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Identifier**

## CodeSystem: TDDUI Encounter Identifier 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier | *Version*:2.3.0-ballot |
| Active as of 2026-03-05 | *Computable Name*:TDDUIEncounterIdentifier |

 
CodeSystem pour la définition des codes d'identifiant de séjour 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIEncounterIdentifier](ValueSet-tddui-encounter-identifier.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-encounter-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIEncounterIdentifier",
  "title" : "TDDUI Encounter Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-05T13:54:22+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des codes d'identifiant de séjour",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "SEJ",
    "display" : "Identifiant du séjour"
  },
  {
    "code" : "NUMDOSS",
    "display" : "Numéro de dossier administratif du séjour"
  }]
}

```
