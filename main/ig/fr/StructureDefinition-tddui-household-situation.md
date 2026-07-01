# TDDUI Household Situation - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Extension: TDDUI Household Situation 

Extension complexe regroupant la situation familiale, la composition du foyer et sa description textuelle de l'usager.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md) and [TDDUI Patient](StructureDefinition-tddui-patient.md)
* Exemples pour ce/t/te Extension: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md), [Patient/tddui-patient-example](Patient-tddui-patient-example.md) and [Patient/tddui-patient-ins-example](Patient-tddui-patient-ins-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-household-situation)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension complexe regroupant la situation familiale, la composition du foyer et sa description textuelle de l'usager.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension complexe: Extension complexe regroupant la situation familiale, la composition du foyer et sa description textuelle de l'usager.

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-household-situation.csv), [Excel](../StructureDefinition-tddui-household-situation.xlsx), [Schematron](../StructureDefinition-tddui-household-situation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-household-situation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-household-situation",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIHouseholdSituation",
  "title" : "TDDUI Household Situation",
  "status" : "active",
  "date" : "2026-07-01T14:55:22+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension complexe regroupant la situation familiale, la composition du foyer et sa description textuelle de l'usager.",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Household Situation",
      "definition" : "Extension complexe regroupant la situation familiale, la composition du foyer et sa description textuelle de l'usager."
    },
    {
      "id" : "Extension.extension:familySituation",
      "path" : "Extension.extension",
      "sliceName" : "familySituation",
      "short" : "Situation familiale de l'usager",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:familySituation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:familySituation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "familySituation"
    },
    {
      "id" : "Extension.extension:familySituation.value[x]",
      "path" : "Extension.extension.value[x]",
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
      "id" : "Extension.extension:familySituation.value[x]:valueCodeableConcept",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J176-SituationVieQuotidienne-MDPH/FHIR/JDV-J176-SituationVieQuotidienne-MDPH"
      }
    },
    {
      "id" : "Extension.extension:householdComposition",
      "path" : "Extension.extension",
      "sliceName" : "householdComposition",
      "short" : "Composition du foyer",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:householdComposition.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:householdComposition.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "householdComposition"
    },
    {
      "id" : "Extension.extension:householdComposition.value[x]",
      "path" : "Extension.extension.value[x]",
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
      "id" : "Extension.extension:householdComposition.value[x]:valueCodeableConcept",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j385-composition-foyer-ms"
      }
    },
    {
      "id" : "Extension.extension:householdCompositionDescription",
      "path" : "Extension.extension",
      "sliceName" : "householdCompositionDescription",
      "short" : "Description de la composition du foyer",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:householdCompositionDescription.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:householdCompositionDescription.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "householdCompositionDescription"
    },
    {
      "id" : "Extension.extension:householdCompositionDescription.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-household-situation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
