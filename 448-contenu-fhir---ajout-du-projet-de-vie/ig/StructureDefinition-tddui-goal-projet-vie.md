# TDDUI Goal Projet Vie - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Goal Projet Vie**

## Resource Profile: TDDUI Goal Projet Vie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-projet-vie | *Version*:2.3.0-ballot |
| Active as of 2026-03-06 | *Computable Name*:TDDUIGoalProjetVie |

 
Profil de la ressource Goal permettant de représenter le projet de vie de l'usager. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-goal-projet-vie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-goal-projet-vie.csv), [Excel](StructureDefinition-tddui-goal-projet-vie.xlsx), [Schematron](StructureDefinition-tddui-goal-projet-vie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-goal-projet-vie",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-projet-vie",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIGoalProjetVie",
  "title" : "TDDUI Goal Projet Vie",
  "status" : "active",
  "date" : "2026-03-06T12:21:15+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource Goal permettant de représenter le projet de vie de l'usager.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUIGoalProjetVie",
    "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
    "name" : "Modèle de contenu DUI"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Goal",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Goal",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Goal",
      "path" : "Goal",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "ProjetVie"
      }]
    },
    {
      "id" : "Goal.identifier",
      "path" : "Goal.identifier",
      "short" : "Identifiant de l'attente",
      "min" : 1,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "idProjetVie"
      }]
    },
    {
      "id" : "Goal.identifier.system",
      "path" : "Goal.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-projetvie.esante.gouv.fr"
    },
    {
      "id" : "Goal.identifier.value",
      "path" : "Goal.identifier.value",
      "min" : 1,
      "example" : [{
        "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PDV-idLocalProjetVie",
        "valueString" : "3480787529/123456789-PDV-1234"
      }]
    },
    {
      "id" : "Goal.lifecycleStatus",
      "path" : "Goal.lifecycleStatus",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "Statut.statut"
      }]
    },
    {
      "id" : "Goal.lifecycleStatus.extension",
      "path" : "Goal.lifecycleStatus.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Goal.lifecycleStatus.extension:TDDUIStatusAuthor",
      "path" : "Goal.lifecycleStatus.extension",
      "sliceName" : "TDDUIStatusAuthor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "Statut.auteur"
      }]
    },
    {
      "id" : "Goal.description.text",
      "path" : "Goal.description.text",
      "min" : 1,
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "titreProjetVie"
      }]
    },
    {
      "id" : "Goal.subject",
      "path" : "Goal.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "Usager"
      }]
    },
    {
      "id" : "Goal.start[x]",
      "path" : "Goal.start[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Goal.start[x]:startDate",
      "path" : "Goal.start[x]",
      "sliceName" : "startDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "dateDebutProjetVie"
      }]
    },
    {
      "id" : "Goal.target.detail[x]",
      "path" : "Goal.target.detail[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Goal.target.detail[x]:detailString",
      "path" : "Goal.target.detail[x]",
      "sliceName" : "detailString",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "aspirationProjetVie"
      }]
    },
    {
      "id" : "Goal.target.due[x]",
      "path" : "Goal.target.due[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Goal.target.due[x]:dueDate",
      "path" : "Goal.target.due[x]",
      "sliceName" : "dueDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "dateFinProjetVie"
      }]
    }]
  }
}

```
