# TDDUI Related Person Relashionship - Médicosocial - Transfert de données DUI v2.3.0

## ValueSet: TDDUI Related Person Relashionship 

 
ValueSet définissant les slices de RelatedPerson.relationship. 

 **References** 

* [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-contact-related-person-relashionship",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-related-person-relashionship",
  "version" : "2.3.0",
  "name" : "TDDUIRelatedPersonRelashionship",
  "title" : "TDDUI Related Person Relashionship",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-08T13:38:02+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet définissant les slices de RelatedPerson.relationship.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j384-role-membre-famille-ms"]
    },
    {
      "valueSet" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-relation"]
    },
    {
      "valueSet" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-protection-juridique"]
    }]
  }
}

```
