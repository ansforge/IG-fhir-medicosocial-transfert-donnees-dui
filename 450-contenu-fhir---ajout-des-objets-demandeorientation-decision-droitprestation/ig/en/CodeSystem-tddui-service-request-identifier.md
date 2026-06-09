# TDDUI ServiceRequest Identifier - Médicosocial - Transfert de données DUI v2.3.0-ballot

## CodeSystem: TDDUI ServiceRequest Identifier 

 
CodeSystem pour la définition des codes d'identifiant des observations 

This Code system is referenced in the definition of the following value sets:

* [TDDUIServiceRequestIdentifierBesoin](ValueSet-tddui-service-request-identifier-besoin.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-service-request-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-service-request-identifier",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIServiceRequestIdentifier",
  "title" : "TDDUI ServiceRequest Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-09T09:58:53+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des codes d'identifiant des observations",
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
