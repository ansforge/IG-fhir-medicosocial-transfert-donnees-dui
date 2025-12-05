# TDDUI Encounter Participant ValueSet - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Encounter Participant ValueSet**

## ValueSet: TDDUI Encounter Participant ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-participant-vs | *Version*:2.1.0-ballot |
| Active as of 2025-12-05 | *Computable Name*:TDDUIEncounterParticipantVs |

 
ValueSet for TDDUI Encounter's participants 

 **References** 

* [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)

### Définition logique (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/TDDUIEncounterParticipant`](CodeSystem-TDDUIEncounterParticipant.md)version 📦2.1.0-ballot
* Importe tous les codes contenu dans [Participant type](http://hl7.org/fhir/R4/valueset-encounter-participant-type.html)

 

### Expansion

Expansion effectuée en interne basée sur :

* [codesystem Participant type v1.0.1 (CodeSystem)](http://terminology.hl7.org/7.0.0/CodeSystem-participant-type.html)
* [codesystem ParticipationType v5.0.0 (CodeSystem)](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ParticipationType.html)
* [codesystem TDDUI Encounter Participant Type v2.1.0-ballot (CodeSystem)](CodeSystem-TDDUIEncounterParticipant.md)
* [valueset Participant type v4.0.1 (ValueSet)](http://hl7.org/fhir/R4/valueset-encounter-participant-type.html)

Ce jeu de valeur (ValueSet) contient 13 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-encounter-participant-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-encounter-participant-vs",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIEncounterParticipantVs",
  "title" : "TDDUI Encounter Participant ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05T08:38:20+00:00",
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
  "description" : "ValueSet for TDDUI Encounter's participants",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/TDDUIEncounterParticipant"
      },
      {
        "valueSet" : ["http://hl7.org/fhir/ValueSet/encounter-participant-type"]
      }
    ]
  }
}

```
