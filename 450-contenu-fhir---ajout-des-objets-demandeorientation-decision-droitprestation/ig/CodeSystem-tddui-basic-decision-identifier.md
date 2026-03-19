# TDDUI Basic Decision Identifier - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Basic Decision Identifier**

## CodeSystem: TDDUI Basic Decision Identifier 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier | *Version*:2.3.0-ballot |
| Active as of 2026-03-19 | *Computable Name*:TDDUIBasicDecisionIdentifier |

 
CodeSystem pour la définition des codes d'identifiant de la décision de la CDAPH 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIBasicDecisionIdentifier](ValueSet-tddui-basic-decision-identifier.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-basic-decision-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIBasicDecisionIdentifier",
  "title" : "TDDUI Basic Decision Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-19T09:35:09+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des codes d'identifiant de la décision de la CDAPH",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "IDDECISION",
    "display" : "Identifiant principal de la décision"
  },
  {
    "code" : "NUMENREG",
    "display" : "Numéro enregistrement de la décision"
  },
  {
    "code" : "IDNATDECISION",
    "display" : "Identifiant national de la décision"
  },
  {
    "code" : "NUMALLOC",
    "display" : "Numéro allocataire"
  }]
}

```
