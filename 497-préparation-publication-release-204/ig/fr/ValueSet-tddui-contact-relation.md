# TDDUI Contact Relation - Médicosocial - Transfert de données DUI v2.4.0

## ValueSet: TDDUI Contact Relation 

 
ValueSet définissant les relations. 

 **References** 

* Inclus dans [TDDUIRelatedPersonRelashionship](ValueSet-tddui-contact-related-person-relashionship.md)
* [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-contact-relation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-relation",
  "version" : "2.4.0",
  "name" : "TDDUIContactRelation",
  "title" : "TDDUI Contact Relation",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-22T12:30:17+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet définissant les relations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS"]
    },
    {
      "valueSet" : ["https://mos.esante.gouv.fr/NOS/JDV_J14-QualiteRepresentantLegal-CISIS/FHIR/JDV-J14-QualiteRepresentantLegal-CISIS"]
    }],
    "exclude" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique",
      "concept" : [{
        "code" : "TUTEUR",
        "display" : "Tuteur"
      },
      {
        "code" : "CURATEUR",
        "display" : "Curateur"
      },
      {
        "code" : "MSVG",
        "display" : "Mandataire de sauvegarde"
      }]
    }]
  }
}

```
