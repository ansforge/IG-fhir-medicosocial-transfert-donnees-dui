# TDDUI Encounter Participant Type - Médicosocial - Transfert de données DUI v2.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Participant Type**

## CodeSystem: TDDUI Encounter Participant Type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/TDDUIEncounterParticipant | *Version*:2.0.0-ballot |
| Active as of 2025-10-10 | *Computable Name*:TDDUIEncounterParticipant |

 
CodeSystem for the participant types in TDDUI Encounter 

 This Code system is referenced in the content logical definition of the following value sets: 

* Cette terminologie de référence (CodeSystem) nest pas utilisée ici; elle peut être utilisée ailleurs (par exemple spécifications et/ou implémentations qui utilisent ce contenu)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "TDDUIEncounterParticipant",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/TDDUIEncounterParticipant",
  "version" : "2.0.0-ballot",
  "name" : "TDDUIEncounterParticipant",
  "title" : "TDDUI Encounter Participant Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-10T14:52:44+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "CodeSystem for the participant types in TDDUI Encounter",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "AUT",
      "display" : "Auteur du statut de la ressource"
    }
  ]
}

```
