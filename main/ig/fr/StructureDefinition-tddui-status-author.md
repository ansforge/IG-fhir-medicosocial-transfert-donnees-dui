# TDDUI Status Author - Médicosocial - Transfert de données DUI v2.3.0

## Extension: TDDUI Status Author 

Extension permettant de représenter l'auteur du statut.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md), [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md), [TDDUI Goal Projet Vie](StructureDefinition-tddui-goal-projet-vie.md)... Show 4 more, [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md), [TDDUI Slot Presence Absence](StructureDefinition-tddui-slot-presence-absence.md), [TDDUI Task Action](StructureDefinition-tddui-task-action.md) and [TDDUI Task Prestation](StructureDefinition-tddui-task-prestation.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-status-author)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type Reference : Extension permettant de représenter l'auteur du statut.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type Reference : Extension permettant de représenter l'auteur du statut.

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-status-author.csv), [Excel](../StructureDefinition-tddui-status-author.xlsx), [Schematron](../StructureDefinition-tddui-status-author.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-status-author",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author",
  "version" : "2.3.0",
  "name" : "TDDUIStatusAuthor",
  "title" : "TDDUI Status Author",
  "status" : "active",
  "date" : "2026-06-29T13:11:00+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension permettant de représenter l'auteur du statut.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Goal.lifecycleStatus"
  },
  {
    "type" : "element",
    "expression" : "CarePlan.status"
  },
  {
    "type" : "element",
    "expression" : "Task.status"
  },
  {
    "type" : "element",
    "expression" : "Encounter.status"
  },
  {
    "type" : "element",
    "expression" : "QuestionnaireResponse.status"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Status Author",
      "definition" : "Extension permettant de représenter l'auteur du statut."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Auteur du statut.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role"]
      }]
    }]
  }
}

```
