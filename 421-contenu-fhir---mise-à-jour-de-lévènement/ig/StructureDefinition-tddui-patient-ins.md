# TDDUI Patient INS - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Patient INS**

## Resource Profile: TDDUI Patient INS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins | *Version*:2.2.0 |
| Active as of 2026-02-27 | *Computable Name*:TDDUIPatientINS |

 
Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référence ce Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md), [TDDUI Consent Accord](StructureDefinition-tddui-consent-accord.md), [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)... Show 10 more, [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md), [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md), [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md), [TDDUI Observation Cause Mortalite](StructureDefinition-tddui-observation-cause-mortalite.md), [TDDUI Observation Mobilite Usager](StructureDefinition-tddui-observation-mobilite-usager.md), [TDDUI Observation Periode Scolaire](StructureDefinition-tddui-observation-periode-scolaire.md), [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md), [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md), [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md) and [TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md)
* Exemples pour ce/t/te Profil: [Patient/tddui-patient-ins-example](Patient-tddui-patient-ins-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-patient-ins)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-patient-ins.csv), [Excel](StructureDefinition-tddui-patient-ins.xlsx), [Schematron](StructureDefinition-tddui-patient-ins.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-patient-ins",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins",
  "version" : "2.2.0",
  "name" : "TDDUIPatientINS",
  "title" : "TDDUI Patient INS",
  "status" : "active",
  "date" : "2026-02-27T15:25:53+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource FRCorePatientINSProfile permettant de représenter un usager lorsque l'INS est transmis.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "UsagerINS"
      }]
    },
    {
      "id" : "Patient.extension:nationality",
      "path" : "Patient.extension",
      "sliceName" : "nationality",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "paysNationalite"
      }]
    },
    {
      "id" : "Patient.extension:deathPlace",
      "path" : "Patient.extension",
      "sliceName" : "deathPlace",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "communeDeces/departementDeces/paysDeces"
      }]
    },
    {
      "id" : "Patient.extension:birthPlace",
      "path" : "Patient.extension",
      "sliceName" : "birthPlace"
    },
    {
      "id" : "Patient.extension:birthPlace.value[x].district",
      "path" : "Patient.extension.value[x].district",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J258-Departement/FHIR/JDV-J258-Departement"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "departementNaissance"
      }]
    },
    {
      "id" : "Patient.extension:birthPlace.value[x].country",
      "path" : "Patient.extension.value[x].country",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "paysNaissance"
      }]
    },
    {
      "id" : "Patient.extension:birthPlace.value[x].extension:inseeCode",
      "path" : "Patient.extension.value[x].extension",
      "sliceName" : "inseeCode",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "communeNaissance"
      }]
    },
    {
      "id" : "Patient.extension:TDDUIHouseholdSituation",
      "path" : "Patient.extension",
      "sliceName" : "TDDUIHouseholdSituation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-household-situation"]
      }]
    },
    {
      "id" : "Patient.extension:TDDUIHouseholdSituation.extension:familySituation",
      "path" : "Patient.extension.extension",
      "sliceName" : "familySituation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "situationFamiliale"
      }]
    },
    {
      "id" : "Patient.extension:TDDUIHouseholdSituation.extension:householdComposition",
      "path" : "Patient.extension.extension",
      "sliceName" : "householdComposition",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "compositionFoyer"
      }]
    },
    {
      "id" : "Patient.extension:TDDUIHouseholdSituation.extension:householdCompositionDescription",
      "path" : "Patient.extension.extension",
      "sliceName" : "householdCompositionDescription",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "descriptionCompositionFoyer"
      }]
    },
    {
      "id" : "Patient.extension:TDDUIComment",
      "path" : "Patient.extension",
      "sliceName" : "TDDUIComment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "commentaire"
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier"
    },
    {
      "id" : "Patient.identifier.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-patient-identifier"
      }
    },
    {
      "id" : "Patient.identifier:NSS",
      "path" : "Patient.identifier",
      "sliceName" : "NSS",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "numSecuriteSociale"
      }]
    },
    {
      "id" : "Patient.identifier:PI",
      "path" : "Patient.identifier",
      "sliceName" : "PI",
      "short" : "Hospital assigned patient identifier | IPP; Dans le cadre de ce volet, représente l'Identifiant local de l’usager au sein de la structure.",
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "identifiantUsagerESSMS"
      }]
    },
    {
      "id" : "Patient.identifier:PI.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "https://identifiant-medicosocial-localusager.esante.gouv.fr"
    },
    {
      "id" : "Patient.identifier:PI.value",
      "path" : "Patient.identifier.value",
      "example" : [{
        "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS",
        "valueString" : "3480787529/194704032"
      }]
    },
    {
      "id" : "Patient.identifier:INS-NIR",
      "path" : "Patient.identifier",
      "sliceName" : "INS-NIR",
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "matriculeINS"
      }]
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
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "matriculeINS"
      }]
    },
    {
      "id" : "Patient.identifier:InitialNumberMDPH",
      "path" : "Patient.identifier",
      "sliceName" : "InitialNumberMDPH",
      "short" : "Numéro de l’individu attribué par la MDPH ayant créé le dossier Individu (= MDPH initiale).",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "numeroIndividuInitial"
      }]
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
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-identifier",
          "code" : "PIN",
          "display" : "Patient initial number"
        }]
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
      "id" : "Patient.identifier:driverLicense",
      "path" : "Patient.identifier",
      "sliceName" : "driverLicense",
      "short" : "Permis de conduire",
      "min" : 0,
      "max" : "*",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "PermisConduire"
      }]
    },
    {
      "id" : "Patient.identifier:driverLicense.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "DL"
        }]
      }
    },
    {
      "id" : "Patient.identifier:driverLicense.system",
      "path" : "Patient.identifier.system",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:driverLicense.value",
      "path" : "Patient.identifier.value",
      "min" : 1,
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "numPermisConduire"
      }]
    },
    {
      "id" : "Patient.identifier:driverLicense.period.start",
      "path" : "Patient.identifier.period.start",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "dateObtention"
      }]
    },
    {
      "id" : "Patient.identifier:driverLicense.period.end",
      "path" : "Patient.identifier.period.end",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "dateValidite"
      }]
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name"]
      }]
    },
    {
      "id" : "Patient.name:usualName",
      "path" : "Patient.name",
      "sliceName" : "usualName",
      "max" : "1",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name"]
      }]
    },
    {
      "id" : "Patient.name:usualName.family",
      "path" : "Patient.name.family",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "nomUsage"
      }]
    },
    {
      "id" : "Patient.name:usualName.given",
      "path" : "Patient.name.given",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "prenomUtilise"
      }]
    },
    {
      "id" : "Patient.name:officialName",
      "path" : "Patient.name",
      "sliceName" : "officialName",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name"]
      }]
    },
    {
      "id" : "Patient.name:officialName.extension:birth-list-given-name",
      "path" : "Patient.name.extension",
      "sliceName" : "birth-list-given-name",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "prenom"
      }]
    },
    {
      "id" : "Patient.name:officialName.family",
      "path" : "Patient.name.family",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "nomNaissance"
      }]
    },
    {
      "id" : "Patient.name:officialName.given",
      "path" : "Patient.name.given",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "premierPrenomActeNaissance"
      }]
    },
    {
      "id" : "Patient.name:officialName.prefix",
      "path" : "Patient.name.prefix",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "civilite"
      }]
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "Telecommunication"
      }]
    },
    {
      "id" : "Patient.telecom.system",
      "path" : "Patient.telecom.system",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "canal"
      }]
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "adressTelecom"
      }]
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "sexe"
      }]
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "dateNaissance"
      }]
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
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
      "id" : "Patient.deceased[x]:deceasedDateTime",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "dateDeces"
      }]
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-address-extended"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "Adresse"
      }]
    },
    {
      "id" : "Patient.address.extension:TDDUIComment",
      "path" : "Patient.address.extension",
      "sliceName" : "TDDUIComment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "commentaire"
      }]
    },
    {
      "id" : "Patient.address.type",
      "path" : "Patient.address.type",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "type"
      }]
    },
    {
      "id" : "Patient.address.line.extension:additionalLocator",
      "path" : "Patient.address.line.extension",
      "sliceName" : "additionalLocator",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "libelleVoie"
      }]
    },
    {
      "id" : "Patient.address.line.extension:houseNumber",
      "path" : "Patient.address.line.extension",
      "sliceName" : "houseNumber",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "numeroVoie"
      }]
    },
    {
      "id" : "Patient.address.line.extension:postBox",
      "path" : "Patient.address.line.extension",
      "sliceName" : "postBox",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "mentionDistribution"
      }]
    },
    {
      "id" : "Patient.address.line.extension:streetNameBase",
      "path" : "Patient.address.line.extension",
      "sliceName" : "streetNameBase",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "complementPointGeographique"
      }]
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "localite"
      }]
    },
    {
      "id" : "Patient.address.postalCode",
      "path" : "Patient.address.postalCode",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "codePostal"
      }]
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "pays"
      }]
    },
    {
      "id" : "Patient.photo",
      "path" : "Patient.photo",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "photo"
      }]
    },
    {
      "id" : "Patient.communication.language",
      "path" : "Patient.communication.language",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J115-Langue-ENREG/FHIR/JDV-J115-Langue-ENREG"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatientINS",
        "map" : "langueParlee"
      }]
    }]
  }
}

```
