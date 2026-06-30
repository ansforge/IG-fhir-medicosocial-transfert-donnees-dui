# TDDUI Observation Periode Scolaire - Médicosocial - Transfert de données DUI v2.3.0

## CodeSystem: TDDUI Observation Periode Scolaire 

 
CodeSystem pour l'Observation de la Période Scolaire. 

This Code system is referenced in the definition of the following value sets:

* [TDDUIObservationPeriodeScolaire](ValueSet-tddui-observation-periode-scolaire.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-observation-periode-scolaire",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-periode-scolaire",
  "version" : "2.3.0",
  "name" : "TDDUIObservationPeriodeScolaire",
  "title" : "TDDUI Observation Periode Scolaire",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-30T13:41:45+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour l'Observation de la Période Scolaire.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "typeEnseignementSpecialise",
    "display" : "Type enseignement spécialisé"
  },
  {
    "code" : "diplome",
    "display" : "Diplôme"
  },
  {
    "code" : "volumeScolarisation",
    "display" : "Volume de scolarisation"
  }]
}

```
