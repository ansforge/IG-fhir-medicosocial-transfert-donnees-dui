# TDDUI Patient Identifier - Médicosocial - Transfert de données DUI v2.3.0-ballot

## CodeSystem: TDDUI Patient Identifier 

 
CodeSystem pour la définition des codes d'identifiant de l'usager 

This Code system is referenced in the definition of the following value sets:

* [TDDUIPatientIdentifier](ValueSet-tddui-patient-identifier.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIIdentifier",
  "title" : "TDDUI Patient Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-25T10:03:25+00:00",
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
