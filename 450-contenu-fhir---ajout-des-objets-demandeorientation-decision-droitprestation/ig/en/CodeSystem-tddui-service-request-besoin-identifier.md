# TDDUI ServiceRequest Besoin Identifier - Médicosocial - Transfert de données DUI v2.3.0-ballot

## CodeSystem: TDDUI ServiceRequest Besoin Identifier 

 
CodeSystem pour la définition des codes d'identifiant de besoin 

This Code system is referenced in the definition of the following value sets:

* [TDDUIServiceRequestBesoinIdentifier](ValueSet-tddui-service-request-besoin-identifier.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-service-request-besoin-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-service-request-besoin-identifier",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIServiceRequestBesoinIdentifier",
  "title" : "TDDUI ServiceRequest Besoin Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-09T07:55:39+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des codes d'identifiant de besoin",
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
    "code" : "BES",
    "display" : "Identifiant du besoin"
  }]
}

```
