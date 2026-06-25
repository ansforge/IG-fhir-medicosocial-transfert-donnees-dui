# TDDUI Basic Decision - Médicosocial - Transfert de données DUI v2.3.0-ballot

## Resource Profile: TDDUI Basic Decision 

 
Profil de la ressource Basic permettant de représenter la décision de la CDAPH ainsi que les droits associés. 

**Usages:**

* Use this Profile: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Examples for this Profile: [Basic/tddui-basic-decision-example](Basic-tddui-basic-decision-example.md)
* CapabilityStatements using this Profile: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-basic-decision.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-basic-decision.csv), [Excel](../StructureDefinition-tddui-basic-decision.xlsx), [Schematron](../StructureDefinition-tddui-basic-decision.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-basic-decision",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-decision",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIBasicDecision",
  "title" : "TDDUI Basic Decision",
  "status" : "active",
  "date" : "2026-06-25T08:27:57+00:00",
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
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUIBasicDecision",
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
      "constraint" : [{
        "key" : "idDecisionMAJCardinality",
        "severity" : "error",
        "human" : "L'idDecisionMAJ est obligatoire si typeDecision = '5' (Clôture de droit) ou typeDecision ='1' (Attribution) et DroitPrestation.natureDroit = '6' (Renouvellement) ou '7' (Révision).",
        "expression" : "((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='typeDecision').valueCodeableConcept.coding.code='1') and ((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='droitPrestation').extension.where(url='natureDroitPrestation').valueCodeableConcept.coding.code='6') or (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='droitPrestation').extension.where(url='natureDroitPrestation').valueCodeableConcept.coding.code='7'))) implies (identifier.where(type.coding.code='IDDECISIONMAJ').exists())",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-decision"
      },
      {
        "key" : "idDecisionMAJInterdiction",
        "severity" : "error",
        "human" : "L'idDecisionMAJ n'est pas à transmettre si typeDecision = '1' (Attribution) et DroitPrestation.natureDroit = '1' (Attribution)",
        "expression" : "((extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='typeDecision').valueCodeableConcept.coding.code='1') and (extension.where(url='https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision').extension.where(url='droitPrestation').extension.where(url='natureDroitPrestation').valueCodeableConcept.coding.code='1')) implies (identifier.where(type.coding.code='IDDECISIONMAJ').exists().not())",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-decision"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision"
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
      "id" : "Basic.extension:TDDUIDecision",
      "path" : "Basic.extension",
      "sliceName" : "TDDUIDecision",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:typeDecision",
      "path" : "Basic.extension.extension",
      "sliceName" : "typeDecision",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.typeDecision"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:dateEffetCloture",
      "path" : "Basic.extension.extension",
      "sliceName" : "dateEffetCloture",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.dateEffetCloture"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:dateDecision",
      "path" : "Basic.extension.extension",
      "sliceName" : "dateDecision",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.dateDecision"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:motivation",
      "path" : "Basic.extension.extension",
      "sliceName" : "motivation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.motivation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:motivationLocale",
      "path" : "Basic.extension.extension",
      "sliceName" : "motivationLocale",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.motivationLocale"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:commentaire",
      "path" : "Basic.extension.extension",
      "sliceName" : "commentaire",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.commentaire"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation",
      "path" : "Basic.extension.extension",
      "sliceName" : "droitPrestation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:categorieDroitPrestation",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "categorieDroitPrestation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.categorieDroitPrestation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:typeDroitPrestation",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "typeDroitPrestation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.typeDroitPrestation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:natureDroitPrestation",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "natureDroitPrestation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.natureDroitPrestation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:dateOuverture",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "dateOuverture",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.dateOuverture"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:dateEcheance",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "dateEcheance",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.dateEcheance"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:existencePAG",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "existencePAG",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.existencePAG"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:motifFinPAG",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "motifFinPAG",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.motifFinPAG"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:creton",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "creton",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.creton"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:taux",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "taux",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.taux"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:typeCompensation",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "typeCompensation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.typeCompensation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:commentaire",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "commentaire",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.commentaire"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation",
      "path" : "Basic.extension.extension.extension",
      "sliceName" : "detailPrestation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DetailPrestation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:temporaliteAccueil",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "temporaliteAccueil",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DetailPrestation.temporaliteAccueil"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:precisionOrientation",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "precisionOrientation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DetailPrestation.precisionOrientation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "accueilSequentiel",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DetailPrestation.accueilSequentiel"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:formation",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "formation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DetailPrestation.formation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "montantAttribue",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DetailPrestation.montantAttribue"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:frequence",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "frequence",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DetailPrestation.frequence"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:qualificationOrientation",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "qualificationOrientation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DetailPrestation.qualificationOrientation"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "structureAccueil",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DetailPrestation.StructureAccueil"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge",
      "path" : "Basic.extension.extension.extension.extension",
      "sliceName" : "priseCharge",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "PriseCharge"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:modePriseCharge",
      "path" : "Basic.extension.extension.extension.extension.extension",
      "sliceName" : "modePriseCharge",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "PriseCharge.modePriseCharge"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification",
      "path" : "Basic.extension.extension.extension.extension.extension",
      "sliceName" : "quantification",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Quantification"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge",
      "path" : "Basic.extension.extension.extension.extension.extension.extension",
      "sliceName" : "valeurPriseCharge",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Quantification.valeurPriseCharge"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge",
      "path" : "Basic.extension.extension.extension.extension.extension.extension",
      "sliceName" : "unitePriseCharge",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Quantification.UnitePriseCharge"
      }]
    },
    {
      "id" : "Basic.extension:TDDUIDecision.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:frequencePriseCharge",
      "path" : "Basic.extension.extension.extension.extension.extension.extension",
      "sliceName" : "frequencePriseCharge",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Quantification.frequencePriseCharge"
      }]
    },
    {
      "id" : "Basic.identifier",
      "path" : "Basic.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Basic.identifier.use",
      "path" : "Basic.identifier.use",
      "short" : "L'idDecision est défini comme la slice idDecision caractérisée par identifier.use = official."
    },
    {
      "id" : "Basic.identifier.type",
      "path" : "Basic.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-basic-decision-identifier"
      }
    },
    {
      "id" : "Basic.identifier:idDecision",
      "path" : "Basic.identifier",
      "sliceName" : "idDecision",
      "short" : "Identifiants de la ou des décisions révisées ou renouvelées à l'origine du droit ou identifiant de la décision clôturée (concerne une seule décision) en cas de clôture de droit.",
      "min" : 1,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.idDecision"
      }]
    },
    {
      "id" : "Basic.identifier:idDecision.type",
      "path" : "Basic.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
          "code" : "IDDECISION",
          "display" : "Identifiant principal de la décision"
        }]
      }
    },
    {
      "id" : "Basic.identifier:idDecision.system",
      "path" : "Basic.identifier.system",
      "short" : "oid de la MDPH",
      "min" : 1
    },
    {
      "id" : "Basic.identifier:idDecision.value",
      "path" : "Basic.identifier.value",
      "min" : 1
    },
    {
      "id" : "Basic.identifier:idDecisionMAJ",
      "path" : "Basic.identifier",
      "sliceName" : "idDecisionMAJ",
      "short" : "Identifiants de la ou des décisions révisées ou renouvelées à l'origine du droit ou identifiant de la décision clôturée (concerne une seule décision) en cas de clôture de droit.",
      "min" : 0,
      "max" : "*",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.idDecisionMAJ"
      }]
    },
    {
      "id" : "Basic.identifier:idDecisionMAJ.type",
      "path" : "Basic.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
          "code" : "IDDECISIONMAJ",
          "display" : "Identifiant révisé de la décision"
        }]
      }
    },
    {
      "id" : "Basic.identifier:idDecisionMAJ.system",
      "path" : "Basic.identifier.system",
      "short" : "oid de la MDPH",
      "min" : 1
    },
    {
      "id" : "Basic.identifier:idDecisionMAJ.value",
      "path" : "Basic.identifier.value",
      "min" : 1
    },
    {
      "id" : "Basic.identifier:numeroEnregistrement",
      "path" : "Basic.identifier",
      "sliceName" : "numeroEnregistrement",
      "short" : "Numéro d’enregistrement au conseil général si différent du numéro d’identification MDPH.",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.numeroEnregistrement"
      }]
    },
    {
      "id" : "Basic.identifier:numeroEnregistrement.type",
      "path" : "Basic.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
          "code" : "NUMENREG",
          "display" : "Numéro enregistrement de la décision"
        }]
      }
    },
    {
      "id" : "Basic.identifier:numeroEnregistrement.system",
      "path" : "Basic.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-numenregistrement.esante.gouv.fr/"
    },
    {
      "id" : "Basic.identifier:numeroEnregistrement.value",
      "path" : "Basic.identifier.value",
      "min" : 1
    },
    {
      "id" : "Basic.identifier:idNat_Decision",
      "path" : "Basic.identifier",
      "sliceName" : "idNat_Decision",
      "short" : " Identifiant technique unique de la décision attribué par ViaTrajectoire",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "Decision.idNat_Decision"
      }]
    },
    {
      "id" : "Basic.identifier:idNat_Decision.type",
      "path" : "Basic.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
          "code" : "IDNATDECISION",
          "display" : "Identifiant national de la décision"
        }]
      }
    },
    {
      "id" : "Basic.identifier:idNat_Decision.system",
      "path" : "Basic.identifier.system",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.250.1.213.8.1"
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
      "short" : "Numéro allocataire",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DroitPrestation.numeroAllocataire"
      }]
    },
    {
      "id" : "Basic.identifier:numeroAllocataire.type",
      "path" : "Basic.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
          "code" : "NUMALLOC",
          "display" : "Numéro allocataire"
        }]
      }
    },
    {
      "id" : "Basic.identifier:numeroAllocataire.system",
      "path" : "Basic.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-numallocataire.esante.gouv.fr/"
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
          "code" : "DECISION",
          "display" : "Décision"
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
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-demande-orientation"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIBasicDecision",
        "map" : "DemandeOrientation"
      }]
    }]
  }
}

```
