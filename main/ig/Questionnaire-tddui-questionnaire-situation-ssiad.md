# Évaluation de la situation SSIAD - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Évaluation de la situation SSIAD**

## Questionnaire: Évaluation de la situation SSIAD 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-situation-ssiad | *Version*:2.2.0-ballot |
| Active as of 2025-12-19 | *Computable Name*: |

 
Grille d'évaluation de la situation SSIAD 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "tddui-questionnaire-situation-ssiad",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/Questionnaire/tddui-questionnaire-situation-ssiad",
  "version" : "2.2.0-ballot",
  "title" : "Évaluation de la situation SSIAD",
  "status" : "active",
  "date" : "2025-12-19T09:03:44+00:00",
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
  "description" : "Grille d'évaluation de la situation SSIAD",
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
  "code" : [
    {
      "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
      "code" : "MED-1290",
      "display" : "Evaluation de la situation SSIAD"
    }
  ],
  "item" : [
    {
      "linkId" : "incontinence",
      "code" : [
        {
          "system" : "https://smt.esante.gouv.fr/terminologie-cim-10",
          "code" : "R32",
          "display" : "Incontinence urinaire, sans précision"
        }
      ],
      "text" : "Incontinence urinaire, sans précision",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "incontinence-fec",
      "code" : [
        {
          "system" : "https://smt.esante.gouv.fr/terminologie-cim-10",
          "code" : "R15",
          "display" : "Incontinence des matières fécales"
        }
      ],
      "text" : "Incontinence des matières fécales",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "obesite",
      "code" : [
        {
          "system" : "https://smt.esante.gouv.fr/terminologie-cim-10",
          "code" : "E66.9",
          "display" : "Obésité, sans précision"
        }
      ],
      "text" : "Obésité, sans précision",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "trouble-cognitif",
      "code" : [
        {
          "system" : "https://smt.esante.gouv.fr/terminologie-cim-10",
          "code" : "F06.7",
          "display" : "Trouble cognitif léger"
        }
      ],
      "text" : "Trouble cognitif léger",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "trouble-personnalite",
      "code" : [
        {
          "system" : "https://smt.esante.gouv.fr/terminologie-cim-10",
          "code" : "F69",
          "display" : "Trouble de la personnalité et du comportement chez l'adulte, sans précision"
        }
      ],
      "text" : "Trouble de la personnalité et du comportement chez l'adulte, sans précision",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "soins-ide",
      "code" : [
        {
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "MED-1294",
          "display" : "Soins IDE pour escarres et autres plaies chroniques"
        }
      ],
      "text" : "Soins IDE pour escarres et autres plaies chroniques",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "prise-charge-ide",
      "code" : [
        {
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "MED-1295",
          "display" : "Prise en charge IDE du diabète insulinotraité"
        }
      ],
      "text" : "Prise en charge IDE du diabète insulinotraité",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "aucun-motif",
      "code" : [
        {
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "GEN-365",
          "display" : "Aucun de ces motifs"
        }
      ],
      "text" : "Aucun de ces motifs",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    }
  ]
}

```
