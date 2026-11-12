# TDDUI Discriminator - Médicosocial - Transfert de données DUI v2.4.0

## ValueSet: TDDUI Discriminator 

 **References** 

* Inclus dans [TDDUI CarePlan supportingInfo](ValueSet-tddui-care-plan-supporting-info.md)
* Inclus dans [TDDUI Goal Attente Note](ValueSet-tddui-goal-attente-note.md)
* Inclus dans [TDDUI Goal Objectif Note](ValueSet-tddui-goal-objectif-note.md)
* Inclus dans [TDDUI ServiceRequest SupportingInfo](ValueSet-tddui-servicerequest-supportinginfo.md)
* [TDDUI Discriminator](StructureDefinition-tddui-discriminator.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-discriminator",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-discriminator",
  "version" : "2.4.0",
  "name" : "TDDUIDiscriminator",
  "title" : "TDDUI Discriminator",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-12T14:49:35+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet définissant les codes discriminants.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator"
    }]
  }
}

```
