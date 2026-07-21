# TDDUI SERAFIN - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI SERAFIN 

 
ValueSet contenant les codes SERAFIN (prestations directes et indirectes) pour le profil TDDUI Encounter Evenement. 

 **References** 

* Inclus dans [TDDUIEncounterType](ValueSet-tddui-encounter-type.md)
* [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)
* [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-serafin",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-serafin",
  "version" : "2.4.0-ballot",
  "name" : "TDDUISerafin",
  "title" : "TDDUI SERAFIN",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T09:07:21+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet contenant les codes SERAFIN (prestations directes et indirectes) pour le profil TDDUI Encounter Evenement.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://mos.esante.gouv.fr/NOS/JDV_J283-PrestationsIndirects_SERAFIN/FHIR/JDV-J283-PrestationsIndirects-SERAFIN",
      "https://mos.esante.gouv.fr/NOS/JDV_J284-PrestationsDirects_SERAFIN/FHIR/JDV-J284-PrestationsDirects-SERAFIN"]
    }]
  }
}

```
