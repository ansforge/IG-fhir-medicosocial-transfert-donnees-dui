# TDDUI Basic Decision Example - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Example Basic: TDDUI Basic Decision Example

-------

**English**

-------

Profile: [TDDUI Basic Decision](StructureDefinition-tddui-basic-decision.md)

> **TDDUI Decision**
> **url**typeDecision
**value**: Attribution
> **url**motivation
**value**: Autre
> **url**dateEffetCloture
**value**: 2020-01-01**categorieDroitPrestation**: Orientation scolaire**typeDroitPrestation**: Orientation vers un Service d'éducation spéciale et de soins à domicile (SESSAD)**natureDroitPrestation**: Renouvellement**dateOuverture**: 2020-01-01**dateEcheance**: 2020-12-31**existencePAG**: false
> **detailPrestation**
* qualificationOrientation: Cible
* temporaliteAccueil: Temporaire
* precisionOrientation: SESSAD polyvalent
* structureAccueil: [Organization Les Chênes Verts](Organization-tddui-organization-example.md)

**creton**: true
> **url**droitPrestation

> **url**motivationLocale
**value**: Motivation locale pour la décision

**identifier**: Identifiant principal de la décision/1254 (use: official, ), Identifiant révisé de la décision/1255

**code**: Décision

**subject**: [ServiceRequest: identifier = Identifiant de la demande d'orientation; status = active; intent = plan; occurrence[x] = 2020-01-01 --> 2020-01-31](ServiceRequest-tddui-service-request-demande-orientation-example.md)



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "tddui-basic-decision-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-decision"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "typeDecision",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R327-TypeDecision/FHIR/TRE-R327-TypeDecision",
          "code" : "1"
        }]
      }
    },
    {
      "url" : "motivation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r419-motivation",
          "code" : "9999"
        }]
      }
    },
    {
      "url" : "dateEffetCloture",
      "valueDate" : "2020-01-01"
    },
    {
      "extension" : [{
        "url" : "categorieDroitPrestation",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r420-droit-prestation",
            "code" : "8"
          }]
        }
      },
      {
        "url" : "typeDroitPrestation",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r420-droit-prestation",
            "code" : "7.8"
          }]
        }
      },
      {
        "url" : "natureDroitPrestation",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R327-TypeDecision/FHIR/TRE-R327-TypeDecision",
            "code" : "6"
          }]
        }
      },
      {
        "url" : "dateOuverture",
        "valueDate" : "2020-01-01"
      },
      {
        "url" : "dateEcheance",
        "valueDate" : "2020-12-31"
      },
      {
        "url" : "existencePAG",
        "valueBoolean" : false
      },
      {
        "extension" : [{
          "url" : "qualificationOrientation",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r422-qualification-orientation",
              "code" : "1"
            }]
          }
        },
        {
          "url" : "temporaliteAccueil",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://mos.esante.gouv.fr/NOS/TRE_R240-TemporaliteAccueil/FHIR/TRE-R240-TemporaliteAccueil",
              "code" : "01"
            }]
          }
        },
        {
          "url" : "precisionOrientation",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r426-orientation",
              "code" : "1"
            }]
          }
        },
        {
          "url" : "structureAccueil",
          "valueReference" : {
            "reference" : "Organization/tddui-organization-example"
          }
        }],
        "url" : "detailPrestation"
      },
      {
        "url" : "creton",
        "valueBoolean" : true
      }],
      "url" : "droitPrestation"
    },
    {
      "url" : "motivationLocale",
      "valueString" : "Motivation locale pour la décision"
    }],
    "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-decision"
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
        "code" : "IDDECISION",
        "display" : "Identifiant principal de la décision"
      }]
    },
    "system" : "urn:oid:1.2.250.1.213.7.1",
    "value" : "1254"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-decision-identifier",
        "code" : "IDDECISIONMAJ",
        "display" : "Identifiant révisé de la décision"
      }]
    },
    "system" : "urn:oid:1.2.250.1.213.7.1",
    "value" : "1255"
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-basic-type",
      "code" : "DECISION",
      "display" : "Décision"
    }]
  },
  "subject" : {
    "reference" : "ServiceRequest/tddui-service-request-demande-orientation-example"
  }
}

```
