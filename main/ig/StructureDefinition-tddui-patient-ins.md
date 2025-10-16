# TDDUI Patient INS - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Patient INS**

## Resource Profile: TDDUI Patient INS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins | *Version*:2.0.0 |
| Active as of 2025-10-16 | *Computable Name*:TDDUIPatientINS |

 
Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis. 

**Usages:**

* Use this Profile: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Refer to this Profile: [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md) and [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)
* Examples for this Profile: [Patient/tddui-patient-ins-example](Patient-tddui-patient-ins-example.md)
* CapabilityStatements using this Profile: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-patient-ins)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-patient-ins.csv), [Excel](StructureDefinition-tddui-patient-ins.xlsx), [Schematron](StructureDefinition-tddui-patient-ins.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-patient-ins",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins",
  "version" : "2.0.0",
  "name" : "TDDUIPatientINS",
  "title" : "TDDUI Patient INS",
  "status" : "active",
  "date" : "2025-10-16T12:41:56+00:00",
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
  "description" : "Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis.",
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
      "identity" : "specmetier-to-TDDUIPatientINS",
      "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
      "name" : "Modèle de contenu DUI"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "UsagerINS"
          }
        ]
      },
      {
        "id" : "Patient.extension:birthPlace",
        "path" : "Patient.extension",
        "sliceName" : "birthPlace"
      },
      {
        "id" : "Patient.extension:birthPlace.value[x].country",
        "path" : "Patient.extension.value[x].country",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "paysNaissance"
          }
        ]
      },
      {
        "id" : "Patient.extension:birthPlace.value[x].extension:inseeCode",
        "path" : "Patient.extension.value[x].extension",
        "sliceName" : "inseeCode",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "communeNaissance"
          }
        ]
      },
      {
        "id" : "Patient.identifier:NSS",
        "path" : "Patient.identifier",
        "sliceName" : "NSS",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "numSecuriteSociale"
          }
        ]
      },
      {
        "id" : "Patient.identifier:PI",
        "path" : "Patient.identifier",
        "sliceName" : "PI",
        "short" : "Hospital assigned patient identifier | IPP; Dans le cadre de ce volet, représente l'Identifiant local de l’usager au sein de la structure. Cet identifiant est obtenu par la concaténation du type d'identifiant national de personne (provenant de la nomenclature TRE_G08-TypeIdentifiantPersonne), de l'identifiant de la structure (numéro FINESS), de l'identifiant local de l’usager au sein de la structure (identifiantLocalUsagerESSMS) : 3+FINESS/identifiantLocalUsagerESSMS",
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "identifiantLocalUsagerESSMS"
          }
        ]
      },
      {
        "id" : "Patient.identifier:INS-NIR",
        "path" : "Patient.identifier",
        "sliceName" : "INS-NIR",
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "matriculeINS"
          }
        ]
      },
      {
        "id" : "Patient.identifier:INS-NIR-TEST",
        "path" : "Patient.identifier",
        "sliceName" : "INS-NIR-TEST",
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:INS-NIR-DEMO",
        "path" : "Patient.identifier",
        "sliceName" : "INS-NIR-DEMO",
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:INS-NIA",
        "path" : "Patient.identifier",
        "sliceName" : "INS-NIA",
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "matriculeINS"
          }
        ]
      },
      {
        "id" : "Patient.identifier:InitialNumberMDPH",
        "path" : "Patient.identifier",
        "sliceName" : "InitialNumberMDPH",
        "short" : "Numéro de l’individu attribué par la MDPH ayant créé le dossier Individu (= MDPH initiale).",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "numeroIndividuInitial"
          }
        ]
      },
      {
        "id" : "Patient.identifier:InitialNumberMDPH.use",
        "path" : "Patient.identifier.use",
        "patternCode" : "usual"
      },
      {
        "id" : "Patient.identifier:InitialNumberMDPH.type",
        "path" : "Patient.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier",
              "code" : "PIN",
              "display" : "Patient initial number"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:InitialNumberMDPH.system",
        "path" : "Patient.identifier.system",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:InitialNumberMDPH.value",
        "path" : "Patient.identifier.value",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
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
        "id" : "Patient.name:usualName",
        "path" : "Patient.name",
        "sliceName" : "usualName",
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
        "id" : "Patient.name:usualName.family",
        "path" : "Patient.name.family",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "nomUsage"
          }
        ]
      },
      {
        "id" : "Patient.name:usualName.given",
        "path" : "Patient.name.given",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "prenomUtilise"
          }
        ]
      },
      {
        "id" : "Patient.name:officialName",
        "path" : "Patient.name",
        "sliceName" : "officialName",
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
        "id" : "Patient.name:officialName.extension:birth-list-given-name",
        "path" : "Patient.name.extension",
        "sliceName" : "birth-list-given-name",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "prenom"
          }
        ]
      },
      {
        "id" : "Patient.name:officialName.family",
        "path" : "Patient.name.family",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "nomNaissance"
          }
        ]
      },
      {
        "id" : "Patient.name:officialName.given",
        "path" : "Patient.name.given",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "premierPrenomActeNaissance"
          }
        ]
      },
      {
        "id" : "Patient.name:officialName.prefix",
        "path" : "Patient.name.prefix",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "civilite"
          }
        ]
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "sexe"
          }
        ]
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatientINS",
            "map" : "dateNaissance"
          }
        ]
      }
    ]
  }
}

```
