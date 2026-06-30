# TDDUI Encounter Identifier - Médicosocial - Transfert de données DUI v2.4.0-ballot

## CodeSystem: TDDUI Encounter Identifier 

 
CodeSystem pour la définition des codes d'identifiant de séjour 

This Code system is referenced in the definition of the following value sets:

* [TDDUIEncounterIdentifier](ValueSet-tddui-encounter-identifier.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-encounter-identifier",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-identifier",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIEncounterIdentifier",
  "title" : "TDDUI Encounter Identifier",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-30T14:42:47+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des codes d'identifiant de séjour",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "SEJ",
    "display" : "Identifiant du séjour"
  },
  {
    "code" : "NUMDOSS",
    "display" : "Numéro de dossier administratif du séjour"
  }]
}

```
