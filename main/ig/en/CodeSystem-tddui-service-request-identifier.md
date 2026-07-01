# TDDUI ServiceRequest Identifier - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CodeSystem: TDDUI ServiceRequest Identifier 

 
CodeSystem pour la définition des codes d'identifiant des observations 

This Code system is referenced in the definition of the following value sets:

* [TDDUIServiceRequestIdentifierBesoin](ValueSet-tddui-service-request-identifier-besoin.md)
* [TDDUIServiceRequestIdentifierDemandeOrientation](ValueSet-tddui-service-request-identifier-demande-orientation.md)

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
  "version" : "2.4.0-ballot",
  "name" : "TDDUIServiceRequestIdentifier",
  "title" : "TDDUI ServiceRequest Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T14:33:44+00:00",
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
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "BES",
    "display" : "Identifiant du besoin"
  },
  {
    "code" : "DEMANDE_ORIENTATION",
    "display" : "Identifiant de la demande d'orientation"
  }]
}

```
