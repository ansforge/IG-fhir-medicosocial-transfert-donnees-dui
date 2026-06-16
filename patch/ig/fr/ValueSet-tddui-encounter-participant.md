# TDDUI Encounter Participant - Médicosocial - Transfert de données DUI v2.3.0

## ValueSet: TDDUI Encounter Participant 

 
ValueSet pour la définition des codes de participant d'un événement 

 **References** 

Ce jeu de valeurs n'est pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-encounter-participant",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-participant",
  "version" : "2.3.0",
  "name" : "TDDUIEncounterParticipant",
  "title" : "TDDUI Encounter Participant",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T14:16:24+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour la définition des codes de participant d'un événement",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.org/fhir/ValueSet/encounter-participant-type"]
    }]
  }
}

```
