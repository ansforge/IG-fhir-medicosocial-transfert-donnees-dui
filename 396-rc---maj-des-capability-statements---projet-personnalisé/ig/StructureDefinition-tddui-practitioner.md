# TDDUI Practitioner - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Practitioner**

## Resource Profile: TDDUI Practitioner 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner | *Version*:2.1.0 |
| Active as of 2025-12-17 | *Computable Name*:TDDUIPractitioner |

 
Profil de la ressource FRCorePractitionerProfile permettant de représenter un professionnel du médicosocial dans le cadre de TDDUI. Le profil AsPractitionerRoleProfile n'a pas été utilisé car il comportait trop de contraintes non présentes dans les DUI. 

**Utilisations:**

* Utiliser ce Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référer à ce Profil: [TDDUI Consent Accord](StructureDefinition-tddui-consent-accord.md), [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md), [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)...Show 7 more,[TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md),[Responsable et auteur du statut de l'évaluation](StructureDefinition-tddui-qr-participant.md),[TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md),[TDDUI Auteur statut](StructureDefinition-tddui-status-author.md),[TDDUI Task Action](StructureDefinition-tddui-task-action.md),[TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md)and[TDDUI Task Transport Professionnel](StructureDefinition-tddui-task-transport-professionnel.md)
* Exemples pour ce Profil: [Practitioner/tddui-pp-pa-practitioner-ide-example](Practitioner-tddui-pp-pa-practitioner-ide-example.md) and [Practitioner/tddui-practitioner-example](Practitioner-tddui-practitioner-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-practitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-practitioner.csv), [Excel](StructureDefinition-tddui-practitioner.xlsx), [Schematron](StructureDefinition-tddui-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-practitioner",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
  "version" : "2.1.0",
  "name" : "TDDUIPractitioner",
  "title" : "TDDUI Practitioner",
  "status" : "active",
  "date" : "2025-12-17T10:39:00+00:00",
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
  "description" : "Profil de la ressource FRCorePractitionerProfile permettant de représenter un professionnel du médicosocial dans le cadre de TDDUI. Le profil AsPractitionerRoleProfile n'a pas été utilisé car il comportait trop de contraintes non présentes dans les DUI.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "specmetier-to-TDDUIPractitioner",
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
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitioner",
            "map" : "Professionnel"
          }
        ]
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:idNatPs",
        "path" : "Practitioner.identifier",
        "sliceName" : "idNatPs",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitioner",
            "map" : "idNat_PS"
          }
        ]
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "max" : "1",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name"
            ]
          }
        ]
      },
      {
        "id" : "Practitioner.name.family",
        "path" : "Practitioner.name.family",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitioner",
            "map" : "nom"
          }
        ]
      },
      {
        "id" : "Practitioner.name.given",
        "path" : "Practitioner.name.given",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitioner",
            "map" : "prenom"
          }
        ]
      },
      {
        "id" : "Practitioner.name.prefix",
        "path" : "Practitioner.name.prefix",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitioner",
            "map" : "civilite"
          }
        ]
      }
    ]
  }
}

```
