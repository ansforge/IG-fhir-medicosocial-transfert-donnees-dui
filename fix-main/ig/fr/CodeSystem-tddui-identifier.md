# TDDUI Patient Identifier - Médicosocial - Transfert de données DUI v2.3.0

## CodeSystem: TDDUI Patient Identifier 

 
CodeSystem pour la définition des codes d'identifiant de l'usager 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [TDDUIPatientIdentifier](ValueSet-tddui-patient-identifier.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier",
  "version" : "2.3.0",
  "name" : "TDDUIIdentifier",
  "title" : "TDDUI Patient Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T13:00:14+00:00",
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
      "display" : "France (la)"
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
