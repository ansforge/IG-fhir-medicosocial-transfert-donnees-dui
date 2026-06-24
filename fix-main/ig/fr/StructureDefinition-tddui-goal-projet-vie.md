# TDDUI Goal Projet Vie - Médicosocial - Transfert de données DUI v2.3.0

## Profil de ressource: TDDUI Goal Projet Vie 

 
Profil de la ressource Goal permettant de représenter le projet de vie de l'usager. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Exemples pour ce/t/te Profil: [Goal/tddui-goal-projet-vie-example](Goal-tddui-goal-projet-vie-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-goal-projet-vie)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Goal](http://hl7.org/fhir/R4/goal.html) 

#### Contraintes

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Goal](http://hl7.org/fhir/R4/goal.html) 

** Résumé **

Obligatoire : 6 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author](StructureDefinition-tddui-status-author.md)
* [http://hl7.org/fhir/StructureDefinition/data-absent-reason](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-data-absent-reason.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Goal.identifier
* The element 1 is sliced based on the value of Goal.start[x]
* The element 1 is sliced based on the value of Goal.target.detail[x]
* The element 1 is sliced based on the value of Goal.target.due[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Goal](http://hl7.org/fhir/R4/goal.html) 

#### Contraintes

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Goal](http://hl7.org/fhir/R4/goal.html) 

** Résumé **

Obligatoire : 6 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-status-author](StructureDefinition-tddui-status-author.md)
* [http://hl7.org/fhir/StructureDefinition/data-absent-reason](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-data-absent-reason.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Goal.identifier
* The element 1 is sliced based on the value of Goal.start[x]
* The element 1 is sliced based on the value of Goal.target.detail[x]
* The element 1 is sliced based on the value of Goal.target.due[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-goal-projet-vie.csv), [Excel](../StructureDefinition-tddui-goal-projet-vie.xlsx), [Schematron](../StructureDefinition-tddui-goal-projet-vie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-goal-projet-vie",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-projet-vie",
  "version" : "2.3.0",
  "name" : "TDDUIGoalProjetVie",
  "title" : "TDDUI Goal Projet Vie",
  "status" : "active",
  "date" : "2026-06-24T12:28:11+00:00",
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
      "display" : "France (la)"
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
      "id" : "Goal.meta.lastUpdated",
      "path" : "Goal.meta.lastUpdated",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "Statut.dateStatut"
      }]
    },
    {
      "id" : "Goal.identifier",
      "path" : "Goal.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "short" : "Identifiant du projet de vie",
      "min" : 1,
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIGoalProjetVie",
        "map" : "idProjetVie"
      }]
    },
    {
      "id" : "Goal.identifier:idPDV",
      "path" : "Goal.identifier",
      "sliceName" : "idPDV",
      "min" : 1,
      "max" : "1",
      "constraint" : [{
        "key" : "GoalProjetVieIdentifierFormat",
        "severity" : "error",
        "human" : "l'identifiant du projet de vie doit respecter le format :  3+FINESS/identifiantLocalUsagerESSMS-PDV-idLocalProjetVie",
        "expression" : "value.matches('^3[0-9]{9}/[A-Za-z0-9]+-PDV-[A-Za-z0-9]+$')",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-projet-vie"
      }]
    },
    {
      "id" : "Goal.identifier:idPDV.type",
      "path" : "Goal.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-goal-identifier",
          "code" : "PDV"
        }]
      }
    },
    {
      "id" : "Goal.identifier:idPDV.system",
      "path" : "Goal.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-projetvie.esante.gouv.fr"
    },
    {
      "id" : "Goal.identifier:idPDV.value",
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
      "short" : "Correspondance des statuts métier avec les codes FHIR : ENPREPARATION → planned, ENCOURS → active, TERMINE → completed.",
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
      "id" : "Goal.target.measure.extension",
      "path" : "Goal.target.measure.extension",
      "min" : 1
    },
    {
      "id" : "Goal.target.measure.extension:DataAbsentReason",
      "path" : "Goal.target.measure.extension",
      "sliceName" : "DataAbsentReason",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/data-absent-reason"]
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
        "map" : "aspirationSouhait"
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
