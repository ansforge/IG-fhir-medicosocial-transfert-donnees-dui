# TDDUI Observation Periode Scolaire - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Observation Periode Scolaire**

## CodeSystem: TDDUI Observation Periode Scolaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-periode-scolaire | *Version*:2.2.0-ballot |
| Active as of 2026-02-12 | *Computable Name*:TDDUIObservationPeriodeScolaire |

 
CodeSystem for the Observation school period 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [TDDUIObservationPeriodeScolaire](ValueSet-tddui-observation-periode-scolaire.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-observation-periode-scolaire",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-periode-scolaire",
  "version" : "2.2.0-ballot",
  "name" : "TDDUIObservationPeriodeScolaire",
  "title" : "TDDUI Observation Periode Scolaire",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-12T14:50:08+00:00",
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
  "description" : "CodeSystem for the Observation school period",
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
  "count" : 5,
  "concept" : [
    {
      "code" : "niveauScolaireReel",
      "display" : "Niveau scolaire réel"
    },
    {
      "code" : "niveauScolaireSuivi",
      "display" : "Niveau scolaire suivi"
    },
    {
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
    }
  ]
}

```
