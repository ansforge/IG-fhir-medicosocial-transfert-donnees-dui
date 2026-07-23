# TDDUI Observation Periode Scolaire - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Profil de ressource: TDDUI Observation Periode Scolaire 

 
Profil de la ressource Observation permettant de représenter la période scolaire de l'usager. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Exemples pour ce/t/te Profil: [Observation/tddui-observation-periodescolaire-example](Observation-tddui-observation-periodescolaire-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-observation-periode-scolaire)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

** Résumé **

Obligatoire : 6 éléments(5 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)
* [TDDUI RelatedPerson Contact (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact)](StructureDefinition-tddui-related-person-contact.md)
* [TDDUI Organization (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization)](StructureDefinition-tddui-organization.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.effective[x]
* The element 1 is sliced based on the value of Observation.performer
* The element 1 is sliced based on the value of Observation.component
* The element 1 is sliced based on the value of Observation.component.value[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

** Résumé **

Obligatoire : 6 éléments(5 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)
* [TDDUI RelatedPerson Contact (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact)](StructureDefinition-tddui-related-person-contact.md)
* [TDDUI Organization (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization)](StructureDefinition-tddui-organization.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.effective[x]
* The element 1 is sliced based on the value of Observation.performer
* The element 1 is sliced based on the value of Observation.component
* The element 1 is sliced based on the value of Observation.component.value[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-observation-periode-scolaire.csv), [Excel](../StructureDefinition-tddui-observation-periode-scolaire.xlsx), [Schematron](../StructureDefinition-tddui-observation-periode-scolaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-observation-periode-scolaire",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-periode-scolaire",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIObservationPeriodeScolaire",
  "title" : "TDDUI Observation Periode Scolaire",
  "status" : "active",
  "date" : "2026-07-23T07:57:40+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource Observation permettant de représenter la période scolaire de l'usager.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
    "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
    "name" : "Modèle de contenu DUI"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "PeriodeScolaire"
      }]
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "short" : "Identifiant de la période scolaire",
      "min" : 1,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "idPeriodeScolaire"
      }]
    },
    {
      "id" : "Observation.identifier.system",
      "path" : "Observation.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-periodescolaire.esante.gouv.fr"
    },
    {
      "id" : "Observation.identifier.value",
      "path" : "Observation.identifier.value",
      "min" : 1,
      "example" : [{
        "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PSCO-numPeriodeScolaire",
        "valueString" : "3480787529/147720425367411-PSCO-12548"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type",
          "code" : "PERIODESCOL",
          "display" : "Période scolaire"
        }]
      },
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-observation-type"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "Usager"
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
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
      "id" : "Observation.effective[x]:effectivePeriod",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectivePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Observation.effective[x]:effectivePeriod.start",
      "path" : "Observation.effective[x].start",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "dateDebutPeriodeScolaire"
      }]
    },
    {
      "id" : "Observation.effective[x]:effectivePeriod.end",
      "path" : "Observation.effective[x].end",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "dateFinPeriodeScolaire"
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.performer:referentScolaire",
      "path" : "Observation.performer",
      "sliceName" : "referentScolaire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "ReferentScolaire"
      }]
    },
    {
      "id" : "Observation.performer:ecole",
      "path" : "Observation.performer",
      "sliceName" : "ecole",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "Ecole"
      }]
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "commentaireAnneeScolaire"
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-observation-periode-scolaire"
      }
    },
    {
      "id" : "Observation.component.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1
    },
    {
      "id" : "Observation.component:typeEnseignementSpecialise",
      "path" : "Observation.component",
      "sliceName" : "typeEnseignementSpecialise",
      "min" : 0,
      "max" : "*",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "typeEnseignementSpecialise"
      }]
    },
    {
      "id" : "Observation.component:typeEnseignementSpecialise.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-periode-scolaire",
          "code" : "typeEnseignementSpecialise",
          "display" : "Type enseignement spécialisé"
        }]
      }
    },
    {
      "id" : "Observation.component:typeEnseignementSpecialise.value[x]",
      "path" : "Observation.component.value[x]",
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
      "id" : "Observation.component:typeEnseignementSpecialise.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j386-type-enseignement-specialise-ms"
      }
    },
    {
      "id" : "Observation.component:diplome",
      "path" : "Observation.component",
      "sliceName" : "diplome",
      "min" : 0,
      "max" : "*",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "diplome"
      }]
    },
    {
      "id" : "Observation.component:diplome.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-periode-scolaire",
          "code" : "diplome",
          "display" : "Diplôme"
        }]
      }
    },
    {
      "id" : "Observation.component:diplome.value[x]",
      "path" : "Observation.component.value[x]",
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
      "id" : "Observation.component:diplome.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J81-TypeDiplome-RASS/FHIR/JDV-J81-TypeDiplome-RASS"
      }
    },
    {
      "id" : "Observation.component:volumeScolarisation",
      "path" : "Observation.component",
      "sliceName" : "volumeScolarisation",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationPeriodeScolaire",
        "map" : "volumeScolarisation"
      }]
    },
    {
      "id" : "Observation.component:volumeScolarisation.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-periode-scolaire",
          "code" : "volumeScolarisation",
          "display" : "Volume de scolarisation"
        }]
      }
    },
    {
      "id" : "Observation.component:volumeScolarisation.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:volumeScolarisation.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
