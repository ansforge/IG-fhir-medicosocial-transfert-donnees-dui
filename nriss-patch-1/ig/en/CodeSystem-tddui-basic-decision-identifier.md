# TDDUI Basic Decision Identifier - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CodeSystem: TDDUI Basic Decision Identifier 

 
CodeSystem pour la définition des codes d'identifiant de la décision de la CDAPH 

This Code system is referenced in the definition of the following value sets:

* [TDDUIBasicDecisionIdentifier](ValueSet-tddui-basic-decision-identifier.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-basic-decision-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIBasicDecisionIdentifier",
  "title" : "TDDUI Basic Decision Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-22T09:09:11+00:00",
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
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "IDDECISION",
    "display" : "Identifiant principal de la décision"
  },
  {
    "code" : "IDDECISIONMAJ",
    "display" : "Identifiant révisé de la décision"
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
