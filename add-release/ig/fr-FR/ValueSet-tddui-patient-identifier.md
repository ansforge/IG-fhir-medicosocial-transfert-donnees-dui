# TDDUI Patient Identifier - Médicosocial - Transfert de données DUI v2.3.0

## ValueSet: TDDUI Patient Identifier 

 
ValueSet pour la définition des codes d'identifiant de l'usager 

 **References** 

* [TDDUI Patient](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-patient-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-patient-identifier",
  "version" : "2.3.0",
  "name" : "TDDUIPatientIdentifier",
  "title" : "TDDUI Patient Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T09:20:43+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des codes d'identifiant de l'usager",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier"
    },
    {
      "valueSet" : ["http://hl7.org/fhir/ValueSet/identifier-type"]
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
      "version" : "2.9"
    },
    {
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
    }]
  }
}

```
