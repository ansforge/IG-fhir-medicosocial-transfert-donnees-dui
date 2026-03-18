# TDDUI Decision - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Decision**

## Extension: TDDUI Decision 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision | *Version*:2.3.0-ballot |
| Active as of 2026-03-18 | *Computable Name*:TDDUIDecision |

Extension complexe représentant la décision et les droits associés

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [TDDUI Basic Decision](StructureDefinition-tddui-basic-decision.md)
* Exemples pour ce/t/te Extension: [Basic/tddui-basic-decision-example](Basic-tddui-basic-decision-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-decision)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-decision.csv), [Excel](StructureDefinition-tddui-decision.xlsx), [Schematron](StructureDefinition-tddui-decision.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-decision",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIDecision",
  "title" : "TDDUI Decision",
  "status" : "active",
  "date" : "2026-03-18T17:17:44+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension complexe représentant la décision et les droits associés",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
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
    "expression" : "Basic"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Decision",
      "definition" : "Extension complexe représentant la décision et les droits associés"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:decision",
      "path" : "Extension.extension",
      "sliceName" : "decision",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:dateEffetCloture",
      "path" : "Extension.extension.extension",
      "sliceName" : "dateEffetCloture",
      "short" : "Date d'effet de clôture",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:dateEffetCloture.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:dateEffetCloture.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "dateEffetCloture"
    },
    {
      "id" : "Extension.extension:decision.extension:dateEffetCloture.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:dateDecision",
      "path" : "Extension.extension.extension",
      "sliceName" : "dateDecision",
      "short" : "Date de la décision",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:dateDecision.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:dateDecision.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "dateDecision"
    },
    {
      "id" : "Extension.extension:decision.extension:dateDecision.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:motivationLocale",
      "path" : "Extension.extension.extension",
      "sliceName" : "motivationLocale",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:decision.extension:motivationLocale.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "motivationLocale"
    },
    {
      "id" : "Extension.extension:decision.extension:commentaire",
      "path" : "Extension.extension.extension",
      "sliceName" : "commentaire",
      "short" : "Commentaire de la décision",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:commentaire.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:commentaire.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "commentaire"
    },
    {
      "id" : "Extension.extension:decision.extension:commentaire.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation",
      "path" : "Extension.extension.extension",
      "sliceName" : "droitPrestation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension",
      "path" : "Extension.extension.extension.extension",
      "min" : 4
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:dateOuverture",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "dateOuverture",
      "short" : "Date d'ouverture du droit",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:dateOuverture.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:dateOuverture.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "dateOuverture"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:dateOuverture.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:dateEcheance",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "dateEcheance",
      "short" : "Date d'échéance du droit",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:dateEcheance.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:dateEcheance.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "dateEcheance"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:dateEcheance.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:existencePAG",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "existencePAG",
      "short" : "Existence d'un PAG",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:existencePAG.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:existencePAG.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "existencePAG"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:existencePAG.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:creton",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "creton",
      "short" : "Indicateur creton",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:creton.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:creton.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "creton"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:creton.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:taux",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "taux",
      "short" : "Taux",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:taux.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:taux.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "taux"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:taux.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:commentaire",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "commentaire",
      "short" : "Commentaire du droit de prestation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:commentaire.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:commentaire.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "commentaire"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:commentaire.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "detailPrestation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:temporaliteAccueil",
      "path" : "Extension.extension.extension.extension.extension",
      "sliceName" : "temporaliteAccueil",
      "short" : "Temporalité d'accueil",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:temporaliteAccueil.extension",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:temporaliteAccueil.url",
      "path" : "Extension.extension.extension.extension.extension.url",
      "fixedUri" : "temporaliteAccueil"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:temporaliteAccueil.value[x]",
      "path" : "Extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J30-TemporaliteAccueil-ROR/FHIR/JDV-J30-TemporaliteAccueil-ROR"
      }
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel",
      "path" : "Extension.extension.extension.extension.extension",
      "sliceName" : "accueilSequentiel",
      "short" : "Accueil séquentiel",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel.extension",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel.url",
      "path" : "Extension.extension.extension.extension.extension.url",
      "fixedUri" : "accueilSequentiel"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel.value[x]",
      "path" : "Extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:formation",
      "path" : "Extension.extension.extension.extension.extension",
      "sliceName" : "formation",
      "short" : "Formation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:formation.extension",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:formation.url",
      "path" : "Extension.extension.extension.extension.extension.url",
      "fixedUri" : "formation"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:formation.value[x]",
      "path" : "Extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue",
      "path" : "Extension.extension.extension.extension.extension",
      "sliceName" : "montantAttribue",
      "short" : "Montant attribué",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue.extension",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue.url",
      "path" : "Extension.extension.extension.extension.extension.url",
      "fixedUri" : "montantAttribue"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue.value[x]",
      "path" : "Extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Money"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:frequence",
      "path" : "Extension.extension.extension.extension.extension",
      "sliceName" : "frequence",
      "short" : "Fréquence",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:frequence.extension",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:frequence.url",
      "path" : "Extension.extension.extension.extension.extension.url",
      "fixedUri" : "frequence"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:frequence.value[x]",
      "path" : "Extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil",
      "path" : "Extension.extension.extension.extension.extension",
      "sliceName" : "structureAccueil",
      "short" : "Structure d'accueil",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil.extension",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil.url",
      "path" : "Extension.extension.extension.extension.extension.url",
      "fixedUri" : "structureAccueil"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil.value[x]",
      "path" : "Extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"]
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge",
      "path" : "Extension.extension.extension.extension.extension",
      "sliceName" : "priseCharge",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:modePriseCharge",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "sliceName" : "modePriseCharge",
      "short" : "Mode de prise en charge",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:modePriseCharge.extension",
      "path" : "Extension.extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:modePriseCharge.url",
      "path" : "Extension.extension.extension.extension.extension.extension.url",
      "fixedUri" : "modePriseCharge"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:modePriseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J264-ModeEtCentreDePriseEnCharge-MDPH/FHIR/JDV-J264-ModeEtCentreDePriseEnCharge-MDPH"
      }
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "sliceName" : "quantification",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge",
      "path" : "Extension.extension.extension.extension.extension.extension.extension",
      "sliceName" : "valeurPriseCharge",
      "short" : "Valeur de la prise en charge",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge.extension",
      "path" : "Extension.extension.extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge.url",
      "path" : "Extension.extension.extension.extension.extension.extension.extension.url",
      "fixedUri" : "valeurPriseCharge"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge",
      "path" : "Extension.extension.extension.extension.extension.extension.extension",
      "sliceName" : "unitePriseCharge",
      "short" : "Unité de la prise en charge",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge.extension",
      "path" : "Extension.extension.extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge.url",
      "path" : "Extension.extension.extension.extension.extension.extension.extension.url",
      "fixedUri" : "unitePriseCharge"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:frequencePriseCharge",
      "path" : "Extension.extension.extension.extension.extension.extension.extension",
      "sliceName" : "frequencePriseCharge",
      "short" : "Fréquence de la prise en charge",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:frequencePriseCharge.extension",
      "path" : "Extension.extension.extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:frequencePriseCharge.url",
      "path" : "Extension.extension.extension.extension.extension.extension.extension.url",
      "fixedUri" : "frequencePriseCharge"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:frequencePriseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J37-UcumUniteTemps/FHIR/JDV-J37-UcumUniteTemps"
      }
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.url",
      "path" : "Extension.extension.extension.extension.extension.extension.url",
      "fixedUri" : "quantification"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.value[x]",
      "path" : "Extension.extension.extension.extension.extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.url",
      "path" : "Extension.extension.extension.extension.extension.url",
      "fixedUri" : "priseCharge"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "detailPrestation"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.extension:detailPrestation.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "droitPrestation"
    },
    {
      "id" : "Extension.extension:decision.extension:droitPrestation.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:decision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "decision"
    },
    {
      "id" : "Extension.extension:decision.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
