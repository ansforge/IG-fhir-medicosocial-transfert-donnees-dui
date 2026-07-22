# TDDUI Goal Identifier - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CodeSystem: TDDUI Goal Identifier 

 
CodeSystem pour la défintion des identifiants de la ressource Goal 

This Code system is referenced in the definition of the following value sets:

* [TDDUIGoalIdentifierProjetVie](ValueSet-tddui-goal-Identifier-projet-vie.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-goal-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-goal-identifier",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIGoalIdentifier",
  "title" : "TDDUI Goal Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-22T08:24:42+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la défintion des identifiants de la ressource Goal",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "PDV",
    "display" : "Identifiant du projet de vie"
  }]
}

```
