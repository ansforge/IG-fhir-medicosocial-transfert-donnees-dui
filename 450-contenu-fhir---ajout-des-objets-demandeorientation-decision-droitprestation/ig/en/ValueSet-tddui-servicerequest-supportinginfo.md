# TDDUI ServiceRequest SupportingInfo - Médicosocial - Transfert de données DUI v2.3.0-ballot

## ValueSet: TDDUI ServiceRequest SupportingInfo 

 
ValueSet définissant les types d'objet binaire de la demande d'orientation. 

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
  "id" : "tddui-servicerequest-supportinginfo",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-servicerequest-supportinginfo",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIServiceRequestSupportingInfo",
  "title" : "TDDUI ServiceRequest SupportingInfo",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-24T08:54:25+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet définissant les types d'objet binaire de la demande d'orientation.",
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
        "code" : "accordUsager"
      },
      {
        "code" : "accordStructure"
      },
      {
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
