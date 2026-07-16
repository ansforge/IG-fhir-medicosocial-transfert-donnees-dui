# TDDUI Decision - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Extension: TDDUI Decision 

Extension complexe représentant la décision et les droits associés

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Basic Decision](StructureDefinition-tddui-basic-decision.md)
* Examples for this Extension: [Basic/tddui-basic-decision-example](Basic-tddui-basic-decision-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-decision.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-decision.csv), [Excel](../StructureDefinition-tddui-decision.xlsx), [Schematron](../StructureDefinition-tddui-decision.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-decision",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIDecision",
  "title" : "TDDUI Decision",
  "status" : "active",
  "date" : "2026-07-16T14:55:44+00:00",
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
      "definition" : "Extension complexe représentant la décision et les droits associés",
      "constraint" : [{
        "key" : "motivationLocaleRequired",
        "severity" : "error",
        "human" : "La motivation locale doit être renseignée si la motivation de la décision est '9999' (Autre).",
        "expression" : "(extension.where(url='motivation').value.ofType(CodeableConcept).coding.where(code='9999').exists()) implies (extension.where(url='motivationLocale').value.ofType(string).exists())",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      },
      {
        "key" : "DateEffetClotureCardinality",
        "severity" : "error",
        "human" : "Si typeDecision = '5' (Clôture de droit) alors dateEffetCloture est obligatoire.",
        "expression" : "(extension.where(url='typeDecision').value.ofType(CodeableConcept).coding.where(code='5').exists()) implies (extension.where(url='dateEffetCloture').exists())",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:typeDecision",
      "path" : "Extension.extension",
      "sliceName" : "typeDecision",
      "short" : "Caractérise le type de décision prise par la CDAPH",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:typeDecision.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:typeDecision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "typeDecision"
    },
    {
      "id" : "Extension.extension:typeDecision.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j398-type-decision-ms"
      }
    },
    {
      "id" : "Extension.extension:dateEffetCloture",
      "path" : "Extension.extension",
      "sliceName" : "dateEffetCloture",
      "short" : "Date d'effet de clôture",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dateEffetCloture.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dateEffetCloture.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dateEffetCloture"
    },
    {
      "id" : "Extension.extension:dateEffetCloture.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:dateDecision",
      "path" : "Extension.extension",
      "sliceName" : "dateDecision",
      "short" : "Date de la décision",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:dateDecision.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:dateDecision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "dateDecision"
    },
    {
      "id" : "Extension.extension:dateDecision.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:motivation",
      "path" : "Extension.extension",
      "sliceName" : "motivation",
      "short" : "Considération(s) de droit ou de fait qui constituent le fondement de la décision.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:motivation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:motivation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "motivation"
    },
    {
      "id" : "Extension.extension:motivation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j399-motivation-ms"
      }
    },
    {
      "id" : "Extension.extension:motivationLocale",
      "path" : "Extension.extension",
      "sliceName" : "motivationLocale",
      "short" : "Champ libre permettant de renseigner une motivation locale",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:motivationLocale.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:motivationLocale.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "motivationLocale"
    },
    {
      "id" : "Extension.extension:motivationLocale.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:commentaire",
      "path" : "Extension.extension",
      "sliceName" : "commentaire",
      "short" : "Commentaire de la décision",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:commentaire.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:commentaire.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "commentaire"
    },
    {
      "id" : "Extension.extension:commentaire.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation",
      "path" : "Extension.extension",
      "sliceName" : "droitPrestation",
      "min" : 0,
      "max" : "1",
      "constraint" : [{
        "key" : "FormationCardinality",
        "severity" : "error",
        "human" : "Formation est obligatoire si typeDroitPrestation = '11.1' (Orientation en Centre de rééducation professionnelle (CRP)).",
        "expression" : "(extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='11.1').exists()) implies (extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='formation').exists())",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      },
      {
        "key" : "PrecisionOrientationValues7.8",
        "severity" : "error",
        "human" : "Si typeDroitPrestation = '7.8' (Orientation vers un Service d'éducation spéciale et de soins à domicile (SESSAD)) alors precisionOrientation doit être entre '1' et\n '6'",
        "expression" : "(\n  extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='7.8').exists()\n  and\n  extension.where(url='detailPrestation').extension.where(url='precisionOrientation').exists()\n)\nimplies\n(\n  extension.where(url='detailPrestation').extension.where(url='precisionOrientation').value.ofType(CodeableConcept).coding.where(code='1' or code='2' or code='3' or code='4' or code='5' or code='6').exists()\n)",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      },
      {
        "key" : "PrecisionOrientationValues7.9",
        "severity" : "error",
        "human" : "Si typeDroitPrestation = '7.9' (Orientation vers un Service d'accompagnement familial et d'éducation précoce (SAFEP)) alors precisionOrientation doit être entre '7' et '8'",
        "expression" : "(\n  extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='7.9').exists()\n  and\n  extension.where(url='detailPrestation').extension.where(url='precisionOrientation').exists()\n)\nimplies\n(\n  extension.where(url='detailPrestation').extension.where(url='precisionOrientation').value.ofType(CodeableConcept).coding.where(code='7' or code='8').exists()\n)",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      },
      {
        "key" : "PrecisionOrientationValues13.1-13.2",
        "severity" : "error",
        "human" : "Si typeDroitPrestation = '13.1' (Orientation vers un établissement d'accueil non médicalisé) ou '13.2' (Orientation vers un établissement d'accueil médicalisé en tout ou partie) alors precisionOrientation est interdit",
        "expression" : "((extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='13.1').exists()) or (extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='13.2').exists())) implies (extension.where(url='detailPrestation').extension.where(url='precisionOrientation').exists().not())",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      },
      {
        "key" : "PrecisionOrientationValues8.3",
        "severity" : "error",
        "human" : "Si typeDroitPrestation = '8.3' (Orientation en Enseignement adapté (SEGPA/EREA)) alors precisionOrientation doit être entre '9' et '10' ",
        "expression" : "(\n  extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='8.3').exists()\n  and\n  extension.where(url='detailPrestation').extension.where(url='precisionOrientation').exists()\n)\nimplies\n(\n  extension.where(url='detailPrestation').extension.where(url='precisionOrientation').value.ofType(CodeableConcept).coding.where(code='9' or code='10').exists()\n)",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      },
      {
        "key" : "PrecisionOrientationValues8.6",
        "severity" : "error",
        "human" : "Si typeDroitPrestation = '8.6' (Orientation en Unité d'enseignement) alors precisionOrientation = 'UEA' (Unité d'enseignement élémentaire autisme) ou 'UEM' (Unité d'enseignement en maternelle plan autisme).",
        "expression" : "(\n  extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='8.6').exists()\n  and\n  extension.where(url='detailPrestation').extension.where(url='precisionOrientation').exists()\n)\nimplies\n(\n  extension.where(url='detailPrestation').extension.where(url='precisionOrientation').value.ofType(CodeableConcept).coding.where(code='UEA' or code='UEM').exists()\n)",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      },
      {
        "key" : "temporaliteAccueilCardinalityViaCategorieDroitPrestation",
        "severity" : "error",
        "human" : "Si categorieDroitPrestation = '13' (Orientation ESMS Adultes) ou '7' (Orientation ESMS Enfants) alors temporaliteAccueil est obligatoire.",
        "expression" : "((extension.where(url='categorieDroitPrestation').value.ofType(CodeableConcept).coding.where(code='13').exists()) or (extension.where(url='categorieDroitPrestation').value.ofType(CodeableConcept).coding.where(code='7')).exists()) implies (extension.where(url='detailPrestation').extension.where(url='temporaliteAccueil').exists())",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      },
      {
        "key" : "temporaliteAccueilCardinalityViaTypeDroitPrestation",
        "severity" : "error",
        "human" : "Si typeDroitPrestation = '8.6' (Orientation en Unité d'enseignement) ou '8.7' (Orientation vers une Scolarisation en milieu ordinaire à temps partagé) ou '8.8' (Orientation vers une Unité d'enseignement et une scolarisation en ULIS à temps partagé) ou '8.10' (Orientation vers une unité d'enseignement et une scolarisation en enseignement adapté à temps partagé) alors la temporalité d'accueil est obligatoire.",
        "expression" : "((extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='8.6').exists()) or (extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='8.7').exists()) or (extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='8.8').exists()) or (extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.where(code='8.10').exists())) implies (extension.where(url='droitPrestation').extension.where(url='detailPrestation').extension.where(url='temporaliteAccueil').exists())",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      },
      {
        "key" : "cretonCardinality",
        "severity" : "error",
        "human" : "Si categorieDroitPrestation = '7' (ESSMS enfant) alors Creton est obligatoire",
        "expression" : "((extension.where(url='categorieDroitPrestation').value.ofType(CodeableConcept).coding.where(code='7').exists()) or (extension.where(url='typeDroitPrestation').value.ofType(CodeableConcept).coding.code.matches('^7[.][0-9]+$'))) implies (extension.where(url='creton').exists())",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension",
      "path" : "Extension.extension.extension",
      "min" : 7
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:categorieDroitPrestation",
      "path" : "Extension.extension.extension",
      "sliceName" : "categorieDroitPrestation",
      "short" : "Catégorie du droit de prestation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:categorieDroitPrestation.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:categorieDroitPrestation.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "categorieDroitPrestation"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:categorieDroitPrestation.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j401-categorie-droit-prestation-ms"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:typeDroitPrestation",
      "path" : "Extension.extension.extension",
      "sliceName" : "typeDroitPrestation",
      "short" : "Type du droit de prestation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:typeDroitPrestation.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:typeDroitPrestation.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "typeDroitPrestation"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:typeDroitPrestation.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j402-type-droit-prestation-ms"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:natureDroitPrestation",
      "path" : "Extension.extension.extension",
      "sliceName" : "natureDroitPrestation",
      "short" : "Nature du droit de prestation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:natureDroitPrestation.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:natureDroitPrestation.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "natureDroitPrestation"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:natureDroitPrestation.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j400-nature-droit-prestation-ms"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:dateOuverture",
      "path" : "Extension.extension.extension",
      "sliceName" : "dateOuverture",
      "short" : "Date d'ouverture du droit",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:dateOuverture.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:dateOuverture.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "dateOuverture"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:dateOuverture.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:dateEcheance",
      "path" : "Extension.extension.extension",
      "sliceName" : "dateEcheance",
      "short" : "Date d'échéance du droit",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:dateEcheance.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:dateEcheance.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "dateEcheance"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:dateEcheance.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:existencePAG",
      "path" : "Extension.extension.extension",
      "sliceName" : "existencePAG",
      "short" : "Existence d'un PAG",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:existencePAG.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:existencePAG.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "existencePAG"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:existencePAG.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:motifFinPAG",
      "path" : "Extension.extension.extension",
      "sliceName" : "motifFinPAG",
      "short" : "Motif de fin du PAG",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:motifFinPAG.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:motifFinPAG.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "motifFinPAG"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:motifFinPAG.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j403-motif-fin-pag-ms"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:creton",
      "path" : "Extension.extension.extension",
      "sliceName" : "creton",
      "short" : "Indicateur creton",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:creton.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:creton.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "creton"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:creton.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:taux",
      "path" : "Extension.extension.extension",
      "sliceName" : "taux",
      "short" : "Taux",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:taux.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:taux.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "taux"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:taux.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:typeCompensation",
      "path" : "Extension.extension.extension",
      "sliceName" : "typeCompensation",
      "short" : "Type de compensation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:typeCompensation.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:typeCompensation.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "typeCompensation"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:typeCompensation.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j394-type-demande-compensation-ms"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:commentaire",
      "path" : "Extension.extension.extension",
      "sliceName" : "commentaire",
      "short" : "Commentaire du droit de prestation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:commentaire.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:commentaire.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "commentaire"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:commentaire.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation",
      "path" : "Extension.extension.extension",
      "sliceName" : "detailPrestation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension",
      "path" : "Extension.extension.extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:temporaliteAccueil",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "temporaliteAccueil",
      "short" : "Temporalité d'accueil",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:temporaliteAccueil.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:temporaliteAccueil.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "temporaliteAccueil"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:temporaliteAccueil.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J30-TemporaliteAccueil-ROR/FHIR/JDV-J30-TemporaliteAccueil-ROR"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:precisionOrientation",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "precisionOrientation",
      "short" : "Précision de l'orientation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:precisionOrientation.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:precisionOrientation.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "precisionOrientation"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:precisionOrientation.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j408-orientation-ms"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "accueilSequentiel",
      "short" : "Accueil séquentiel",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "accueilSequentiel"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:accueilSequentiel.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:formation",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "formation",
      "short" : "Formation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:formation.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:formation.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "formation"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:formation.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "montantAttribue",
      "short" : "Montant attribué",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "montantAttribue"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:montantAttribue.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Money"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:frequence",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "frequence",
      "short" : "Fréquence de versement",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:frequence.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:frequence.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "frequence"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:frequence.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:qualificationOrientation",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "qualificationOrientation",
      "short" : "Qualification de l'orientation",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:qualificationOrientation.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:qualificationOrientation.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "qualificationOrientation"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:qualificationOrientation.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j404-qualification-orientation-ms"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "structureAccueil",
      "short" : "Structure d'accueil",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil.extension",
      "path" : "Extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "structureAccueil"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:structureAccueil.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"]
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge",
      "path" : "Extension.extension.extension.extension",
      "sliceName" : "priseCharge",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:modePriseCharge",
      "path" : "Extension.extension.extension.extension.extension",
      "sliceName" : "modePriseCharge",
      "short" : "Mode de prise en charge",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:modePriseCharge.extension",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:modePriseCharge.url",
      "path" : "Extension.extension.extension.extension.extension.url",
      "fixedUri" : "modePriseCharge"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:modePriseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J264-ModeEtCentreDePriseEnCharge-MDPH/FHIR/JDV-J264-ModeEtCentreDePriseEnCharge-MDPH"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification",
      "path" : "Extension.extension.extension.extension.extension",
      "sliceName" : "quantification",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "sliceName" : "valeurPriseCharge",
      "short" : "Valeur de la prise en charge",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge.extension",
      "path" : "Extension.extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge.url",
      "path" : "Extension.extension.extension.extension.extension.extension.url",
      "fixedUri" : "valeurPriseCharge"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:valeurPriseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "sliceName" : "unitePriseCharge",
      "short" : "Unité de la prise en charge",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge.extension",
      "path" : "Extension.extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge.url",
      "path" : "Extension.extension.extension.extension.extension.extension.url",
      "fixedUri" : "unitePriseCharge"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:unitePriseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:frequencePriseCharge",
      "path" : "Extension.extension.extension.extension.extension.extension",
      "sliceName" : "frequencePriseCharge",
      "short" : "Fréquence de la prise en charge",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:frequencePriseCharge.extension",
      "path" : "Extension.extension.extension.extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:frequencePriseCharge.url",
      "path" : "Extension.extension.extension.extension.extension.extension.url",
      "fixedUri" : "frequencePriseCharge"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.extension:frequencePriseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J37-UcumUniteTemps/FHIR/JDV-J37-UcumUniteTemps"
      }
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.url",
      "path" : "Extension.extension.extension.extension.extension.url",
      "fixedUri" : "quantification"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.extension:quantification.value[x]",
      "path" : "Extension.extension.extension.extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.url",
      "path" : "Extension.extension.extension.extension.url",
      "fixedUri" : "priseCharge"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.extension:priseCharge.value[x]",
      "path" : "Extension.extension.extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "detailPrestation"
    },
    {
      "id" : "Extension.extension:droitPrestation.extension:detailPrestation.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:droitPrestation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "droitPrestation"
    },
    {
      "id" : "Extension.extension:droitPrestation.value[x]",
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
