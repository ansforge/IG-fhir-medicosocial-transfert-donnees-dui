# TDDUI CarePlan supportingInfo - Médicosocial - Transfert de données DUI v2.3.0

## ValueSet: TDDUI CarePlan supportingInfo 

 
ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo. 

 **References** 

* [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-care-plan-supporting-info",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-care-plan-supporting-info",
  "version" : "2.3.0",
  "name" : "TDDUICarePlanSupportingInfo",
  "title" : "TDDUI CarePlan supportingInfo",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T13:07:35+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet définissant les types de notes pour l'élément CarePlan.supportingInfo.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-discriminator"]
    }],
    "exclude" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
      "concept" : [{
        "code" : "titreObjectif"
      },
      {
        "code" : "avisUsagerObjectif"
      },
      {
        "code" : "strategieMiseEnOeuvreObjectif"
      },
      {
        "code" : "origineAttente"
      },
      {
        "code" : "commentaireAttente"
      }]
    }]
  }
}

```
