# TDDUI Basic Decision Identifier - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI Basic Decision Identifier 

 
ValueSet pour la définition des codes d'identifiant de la décision de la CDAPH. 

 **References** 

* [TDDUI Basic Decision](StructureDefinition-tddui-basic-decision.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-basic-decision-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-basic-decision-identifier",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIBasicDecisionIdentifier",
  "title" : "TDDUI Basic Decision Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-24T09:36:36+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des codes d'identifiant de la décision de la CDAPH.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier"
    }]
  }
}

```
