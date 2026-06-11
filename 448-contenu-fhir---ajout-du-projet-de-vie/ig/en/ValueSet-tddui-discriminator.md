# TDDUI Discriminator - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI Discriminator 

 
ValueSet définissant les codes discriminants. 

 **References** 

* Included into [TDDUICarePlanSupportingInfo](ValueSet-tddui-care-plan-supporting-info.md)
* Included into [TDDUIGoalAttenteNote](ValueSet-tddui-goal-attente-note.md)
* Included into [TDDUIGoalObjectifNote](ValueSet-tddui-goal-objectif-note.md)
* [TDDUI Discriminator](StructureDefinition-tddui-discriminator.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-discriminator",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-discriminator",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIDiscriminator",
  "title" : "TDDUI Discriminator",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T14:21:35+00:00",
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
      "display" : "France"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator"
    }]
  }
}

```
