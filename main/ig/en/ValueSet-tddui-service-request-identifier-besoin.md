# TDDUI ServiceRequest Besoin Identifier - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI ServiceRequest Besoin Identifier 

 
ValueSet pour la définition des codes d'identifiant de besoin 

 **References** 

* [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-service-request-identifier-besoin",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-service-request-identifier-besoin",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIServiceRequestIdentifierBesoin",
  "title" : "TDDUI ServiceRequest Besoin Identifier",
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
  "description" : "ValueSet pour la définition des codes d'identifiant de besoin",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-service-request-identifier",
      "concept" : [{
        "code" : "BES"
      }]
    },
    {
      "valueSet" : ["http://hl7.org/fhir/ValueSet/identifier-type"]
    }]
  }
}

```
