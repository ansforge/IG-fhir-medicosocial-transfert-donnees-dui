# TDDUI Patient - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Patient**

## Resource Profile: TDDUI Patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient | *Version*:2.0.0 |
| Active as of 2025-11-28 | *Computable Name*:TDDUIPatient |

 
Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis. 

**Usages:**

* Use this Profile: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Refer to this Profile: [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md)
* Examples for this Profile: [Patient/tddui-patient-example](Patient-tddui-patient-example.md)
* CapabilityStatements using this Profile: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-patient.csv), [Excel](StructureDefinition-tddui-patient.xlsx), [Schematron](StructureDefinition-tddui-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-patient",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
  "version" : "2.0.0",
  "name" : "TDDUIPatient",
  "title" : "TDDUI Patient",
  "status" : "active",
  "date" : "2025-11-28T15:30:37+00:00",
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
  "description" : "Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis.",
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
      "identity" : "specmetier-to-TDDUIPatient",
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
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "Usager"
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
            "identity" : "specmetier-to-TDDUIPatient",
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
            "identity" : "specmetier-to-TDDUIPatient",
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
            "identity" : "specmetier-to-TDDUIPatient",
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
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "identifiantLocalUsagerESSMS"
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
            "identity" : "specmetier-to-TDDUIPatient",
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
        "min" : 1,
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
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "nomUsage"
          }
        ]
      },
      {
        "id" : "Patient.name:usualName.given",
        "path" : "Patient.name.given",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "prenomUtilise"
          }
        ]
      },
      {
        "id" : "Patient.name:officialName",
        "path" : "Patient.name",
        "sliceName" : "officialName",
        "min" : 1,
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
        "id" : "Patient.name:officialName.extension:birth-list-given-name",
        "path" : "Patient.name.extension",
        "sliceName" : "birth-list-given-name",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "prenom"
          }
        ]
      },
      {
        "id" : "Patient.name:officialName.family",
        "path" : "Patient.name.family",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "nomNaissance"
          }
        ]
      },
      {
        "id" : "Patient.name:officialName.given",
        "path" : "Patient.name.given",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "premierPrenomActeNaissance"
          }
        ]
      },
      {
        "id" : "Patient.name:officialName.prefix",
        "path" : "Patient.name.prefix",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "civilite"
          }
        ]
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "short" : "male | female | unknown",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-gender-INS"
        },
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "sexe"
          }
        ]
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "dateNaissance"
          }
        ]
      },
      {
        "id" : "Patient.birthDate.extension",
        "path" : "Patient.birthDate.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.birthDate.extension:tddui-birth-order",
        "path" : "Patient.birthDate.extension",
        "sliceName" : "tddui-birth-order",
        "short" : "Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période.  Il est obligatoire si le NIR n'est pas transmis.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-birth-order"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPatient",
            "map" : "ordreNaissanceEtatCivil"
          }
        ]
      }
    ]
  }
}

```
