# TDDUI Encounter Participant Type - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Participant Type**

## CodeSystem: TDDUI Encounter Participant Type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-participant | *Version*:2.2.0-ballot |
| Active as of 2026-01-28 | *Computable Name*:TDDUIEncounterParticipant |

 
CodeSystem définissant les types de participants dans le profil TDDUIEncounterEvenement. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIEncounterParticipant](ValueSet-tddui-encounter-participant.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-encounter-participant",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-encounter-participant",
  "version" : "2.2.0-ballot",
  "name" : "TDDUIEncounterParticipant",
  "title" : "TDDUI Encounter Participant Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-28T15:51:30+00:00",
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
  "description" : "CodeSystem définissant les types de participants dans le profil TDDUIEncounterEvenement.",
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
