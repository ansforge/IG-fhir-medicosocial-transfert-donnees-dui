# TDDUI Basic Droit Decision - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Basic Droit Decision**

## Resource Profile: TDDUI Basic Droit Decision 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-droit-decision | *Version*:2.3.0-ballot |
| Active as of 2026-03-17 | *Computable Name*:TDDUIBasicDroitDecision |

 
Profil de la ressource Basic permettant de représenter la décision de la CDAPH ainsi que les droits associés. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Exemples pour ce/t/te Profil: [Basic/tddui-basic-droit-decision-example](Basic-tddui-basic-droit-decision-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-basic-droit-decision)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-basic-droit-decision.csv), [Excel](StructureDefinition-tddui-basic-droit-decision.xlsx), [Schematron](StructureDefinition-tddui-basic-droit-decision.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-basic-droit-decision",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-droit-decision",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIBasicDroitDecision",
  "title" : "TDDUI Basic Droit Decision",
  "status" : "active",
  "date" : "2026-03-17T13:04:13+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource Basic permettant de représenter la décision de la CDAPH ainsi que les droits associés.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUIBasicDroitDecision",
    "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
    "name" : "Modèle de contenu DUI"
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
  "type" : "Basic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Basic",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Basic",
      "path" : "Basic",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DroitDecision"
      }]
    },
    {
      "id" : "Basic.extension",
      "path" : "Basic.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision",
      "path" : "Basic.extension",
      "sliceName" : "TDDUIDroitDecision",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-droit-decision"]
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision",
      "path" : "Basic.extension.extension",
      "sliceName" : "decision",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Decision"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:dateEffetCloture",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "dateEffetCloture",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Decision.dateEffetCloture"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:dateDecision",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "dateDecision",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Decision.dateDecision"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:motivationLocale",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "motivationLocale",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Decision.motivationLocale"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:commentaire",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "commentaire",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Decision.commentaire"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "droitPrestation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DroitPrestation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:dateOuverture",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "dateOuverture",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DroitPrestation.dateOuverture"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:dateEcheance",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "dateEcheance",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DroitPrestation.dateEcheance"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:existencePAG",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "existencePAG",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DroitPrestation.existencePAG"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:creton",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "creton",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DroitPrestation.creton"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:taux",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "taux",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DroitPrestation.taux"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:commentaire",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "commentaire",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DroitPrestation.commentaire"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "detailPrestation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DetailPrestation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel",
      "path" : "Basic.extension.extension.extension.extension.extension",
      "sliceName" : "accueilSequentiel",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DetailPrestation.accueilSequentiel"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:formation",
      "path" : "Basic.extension.extension.extension.extension.extension",
      "sliceName" : "formation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DetailPrestation.formation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue",
      "path" : "Basic.extension.extension.extension.extension.extension",
      "sliceName" : "montantAttribue",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DetailPrestation.montantAttribue"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:frequence",
      "path" : "Basic.extension.extension.extension.extension.extension",
      "sliceName" : "frequence",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DetailPrestation.frequence"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil",
      "path" : "Basic.extension.extension.extension.extension.extension",
      "sliceName" : "structureAccueil",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DetailPrestation.StructureAccueil"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge",
      "path" : "Basic.extension.extension.extension.extension.extension",
      "sliceName" : "priseCharge",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "PriseCharge"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification",
      "path" : "Basic.extension.extension.extension.extension.extension.extension",
      "sliceName" : "quantification",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Quantification"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge",
      "path" : "Basic.extension.extension.extension.extension.extension.extension.extension",
      "sliceName" : "valeurPriseCharge",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Quantification.valeurPriseCharge"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDroitDecision.extension:decision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge",
      "path" : "Basic.extension.extension.extension.extension.extension.extension.extension",
      "sliceName" : "unitePriseCharge",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Quantification.UnitePriseCharge"
      }]
    },
    {
      "id" : "Basic.identifier",
      "path" : "Basic.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Basic.identifier:idDecision",
      "path" : "Basic.identifier",
      "sliceName" : "idDecision",
      "short" : "Identifiant principal de la décision",
      "min" : 1,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Decision.idDecision"
      }]
    },
    {
      "id" : "Basic.identifier:idDecision.system",
      "path" : "Basic.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-decision.esante.gouv.fr"
    },
    {
      "id" : "Basic.identifier:idDecision.value",
      "path" : "Basic.identifier.value",
      "min" : 1
    },
    {
      "id" : "Basic.identifier:numeroEnregistrement",
      "path" : "Basic.identifier",
      "sliceName" : "numeroEnregistrement",
      "short" : "Numéro d'enregistrement de la décision",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Decision.numeroEnregistrement"
      }]
    },
    {
      "id" : "Basic.identifier:numeroEnregistrement.system",
      "path" : "Basic.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-numeroEnregistrement.esante.gouv.fr"
    },
    {
      "id" : "Basic.identifier:numeroEnregistrement.value",
      "path" : "Basic.identifier.value",
      "min" : 1
    },
    {
      "id" : "Basic.identifier:idDecisionMAJ",
      "path" : "Basic.identifier",
      "sliceName" : "idDecisionMAJ",
      "short" : "Identifiant de la décision mise à jour",
      "min" : 0,
      "max" : "*",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Decision.idDecisionMAJ"
      }]
    },
    {
      "id" : "Basic.identifier:idDecisionMAJ.system",
      "path" : "Basic.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-decision-maj.esante.gouv.fr"
    },
    {
      "id" : "Basic.identifier:idDecisionMAJ.value",
      "path" : "Basic.identifier.value",
      "min" : 1
    },
    {
      "id" : "Basic.identifier:idNat_Decision",
      "path" : "Basic.identifier",
      "sliceName" : "idNat_Decision",
      "short" : "Identifiant national de la décision",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Decision.idNat_Decision"
      }]
    },
    {
      "id" : "Basic.identifier:idNat_Decision.system",
      "path" : "Basic.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-decision-viatrajectoire.esante.gouv.fr"
    },
    {
      "id" : "Basic.identifier:idNat_Decision.value",
      "path" : "Basic.identifier.value",
      "min" : 1
    },
    {
      "id" : "Basic.identifier:numeroAllocataire",
      "path" : "Basic.identifier",
      "sliceName" : "numeroAllocataire",
      "short" : "Numéro d'allocataire",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "DroitPrestation.numeroAllocataire"
      }]
    },
    {
      "id" : "Basic.identifier:numeroAllocataire.system",
      "path" : "Basic.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-numeroAllocataire.esante.gouv.fr"
    },
    {
      "id" : "Basic.identifier:numeroAllocataire.value",
      "path" : "Basic.identifier.value",
      "min" : 1
    },
    {
      "id" : "Basic.code",
      "path" : "Basic.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-type",
          "code" : "DROITDECISION",
          "display" : "Droits et Décision"
        }]
      },
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-basic-type"
      }
    },
    {
      "id" : "Basic.subject",
      "path" : "Basic.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDroitDecision",
        "map" : "Usager"
      }]
    }]
  }
}

```
