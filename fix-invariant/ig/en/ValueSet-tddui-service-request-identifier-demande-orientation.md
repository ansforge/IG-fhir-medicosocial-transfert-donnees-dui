# TDDUI ServiceRequest DemandeOrientation Identifier - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI ServiceRequest DemandeOrientation Identifier 

 
ValueSet pour la définition des codes d'identifiant de demande d'orientation 

 **References** 

* [TDDUI ServiceRequest DemandeOrientation](StructureDefinition-tddui-service-request-demande-orientation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-service-request-identifier-demande-orientation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-service-request-identifier-demande-orientation",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIServiceRequestIdentifierDemandeOrientation",
  "title" : "TDDUI ServiceRequest DemandeOrientation Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-16T12:36:44+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des codes d'identifiant de demande d'orientation",
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
        "code" : "DEMANDE_ORIENTATION"
      }]
    },
    {
      "valueSet" : ["http://hl7.org/fhir/ValueSet/identifier-type"]
    }]
  }
}

```
