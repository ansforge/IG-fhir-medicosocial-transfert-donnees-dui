# TDDUI Contact Protection Juridique - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Contact Protection Juridique 

 
ValueSet définissant la protection juridique. 

 **References** 

* Included into [TDDUIRelatedPersonRelashionship](ValueSet-tddui-contact-related-person-relashionship.md)
* [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-contact-protection-juridique",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-protection-juridique",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIContactProtectionJuridique",
  "title" : "TDDUI Contact Protection Juridique",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T13:56:20+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet définissant la protection juridique.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique",
      "version" : "20231215120000"
    }]
  }
}

```
