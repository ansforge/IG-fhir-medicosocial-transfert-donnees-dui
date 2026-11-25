# jdv-j400-nature-droit-prestation-ms-tru - Médicosocial - Transfert de données DUI v2.4.0-tru

## ValueSet: jdv-j400-nature-droit-prestation-ms-tru 

 
ValueSet pour le code de la ressource Basic. 

 **References** 

* [TDDUI Decision](StructureDefinition-tddui-decision.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-j400-nature-droit-prestation-ms-tru",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/jdv-j400-nature-droit-prestation-ms-tru",
  "version" : "2.4.0-tru",
  "name" : "jdv-j400-nature-droit-prestation-ms-tru",
  "title" : "jdv-j400-nature-droit-prestation-ms-tru",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T07:58:09+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour le code de la ressource Basic.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R327-TypeDecision/FHIR/TRE-R327-TypeDecision",
      "version" : "20260505120000"
    }]
  }
}

```
