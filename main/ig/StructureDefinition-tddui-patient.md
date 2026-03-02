# TDDUI Patient - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Patient**

## Resource Profile: TDDUI Patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient | *Version*:2.2.0 |
| Active as of 2026-03-02 | *Computable Name*:TDDUIPatient |

 
Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référence ce Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md), [TDDUI Consent Accord](StructureDefinition-tddui-consent-accord.md), [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)... Show 10 more, [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md), [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md), [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md), [TDDUI Observation Cause Mortalite](StructureDefinition-tddui-observation-cause-mortalite.md), [TDDUI Observation Mobilite Usager](StructureDefinition-tddui-observation-mobilite-usager.md), [TDDUI Observation Periode Scolaire](StructureDefinition-tddui-observation-periode-scolaire.md), [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md), [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md), [TDDUI ServiceRequest Besoin](StructureDefinition-tddui-service-request-besoin.md) and [TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md)
* Exemples pour ce/t/te Profil: [Patient/tddui-patient-example](Patient-tddui-patient-example.md), [Patient/tddui-pp-ime-patient-example](Patient-tddui-pp-ime-patient-example.md) and [Patient/tddui-pp-pa-patient-example-pp](Patient-tddui-pp-pa-patient-example-pp.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-patient.csv), [Excel](StructureDefinition-tddui-patient.xlsx), [Schematron](StructureDefinition-tddui-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-patient",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
  "version" : "2.2.0",
  "name" : "TDDUIPatient",
  "title" : "TDDUI Patient",
  "status" : "active",
  "date" : "2026-03-02T09:04:22+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource FrCorePatientProfile permettant de représenter un usager lorsque l'INS n'est pas transmis.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "Usager"
      }]
    },
    {
      "id" : "Patient.extension:nationality",
      "path" : "Patient.extension",
      "sliceName" : "nationality",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "paysNationalite"
      }]
    },
    {
      "id" : "Patient.extension:deathPlace",
      "path" : "Patient.extension",
      "sliceName" : "deathPlace",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "departementNaissance"
      }]
    },
    {
      "id" : "Patient.extension:birthPlace.value[x].country",
      "path" : "Patient.extension.value[x].country",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "paysNaissance"
      }]
    },
    {
      "id" : "Patient.extension:birthPlace.value[x].extension:inseeCode",
      "path" : "Patient.extension.value[x].extension",
      "sliceName" : "inseeCode",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "situationFamiliale"
      }]
    },
    {
      "id" : "Patient.extension:TDDUIHouseholdSituation.extension:householdComposition",
      "path" : "Patient.extension.extension",
      "sliceName" : "householdComposition",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "compositionFoyer"
      }]
    },
    {
      "id" : "Patient.extension:TDDUIHouseholdSituation.extension:householdCompositionDescription",
      "path" : "Patient.extension.extension",
      "sliceName" : "householdCompositionDescription",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
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
      "id" : "Patient.identifier:InitialNumberMDPH",
      "path" : "Patient.identifier",
      "sliceName" : "InitialNumberMDPH",
      "short" : "Numéro de l’individu attribué par la MDPH ayant créé le dossier Individu (= MDPH initiale).",
      "min" : 0,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "numPermisConduire"
      }]
    },
    {
      "id" : "Patient.identifier:driverLicense.period.start",
      "path" : "Patient.identifier.period.start",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "dateObtention"
      }]
    },
    {
      "id" : "Patient.identifier:driverLicense.period.end",
      "path" : "Patient.identifier.period.end",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "dateValidite"
      }]
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
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
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "nomUsage"
      }]
    },
    {
      "id" : "Patient.name:usualName.given",
      "path" : "Patient.name.given",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "prenomUtilise"
      }]
    },
    {
      "id" : "Patient.name:officialName",
      "path" : "Patient.name",
      "sliceName" : "officialName",
      "min" : 1,
      "max" : "1",
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
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "prenom"
      }]
    },
    {
      "id" : "Patient.name:officialName.family",
      "path" : "Patient.name.family",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "nomNaissance"
      }]
    },
    {
      "id" : "Patient.name:officialName.given",
      "path" : "Patient.name.given",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "premierPrenomActeNaissance"
      }]
    },
    {
      "id" : "Patient.name:officialName.prefix",
      "path" : "Patient.name.prefix",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "civilite"
      }]
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "Telecommunication"
      }]
    },
    {
      "id" : "Patient.telecom.system",
      "path" : "Patient.telecom.system",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "canal"
      }]
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "adressTelecom"
      }]
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "male | female | unknown",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-gender-INS"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "sexe"
      }]
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "min" : 1,
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "dateNaissance"
      }]
    },
    {
      "id" : "Patient.birthDate.extension",
      "path" : "Patient.birthDate.extension",
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
      "id" : "Patient.birthDate.extension:tddui-birth-order",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "tddui-birth-order",
      "short" : "Ordre d’enregistrement de la naissance dans le registre d’état civil de la commune de naissance pour le mois de la naissance. Il compose les 3 derniers chiffres du NIR de l'usager avant la clé de sécurité et permet de distinguer les personnes nées au même lieu et à la même période.  Il est obligatoire si le NIR n'est pas transmis.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-birth-order"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "ordreNaissanceEtatCivil"
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
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "commentaire"
      }]
    },
    {
      "id" : "Patient.address.type",
      "path" : "Patient.address.type",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "type"
      }]
    },
    {
      "id" : "Patient.address.line.extension:additionalLocator",
      "path" : "Patient.address.line.extension",
      "sliceName" : "additionalLocator",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "libelleVoie"
      }]
    },
    {
      "id" : "Patient.address.line.extension:houseNumber",
      "path" : "Patient.address.line.extension",
      "sliceName" : "houseNumber",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "numeroVoie"
      }]
    },
    {
      "id" : "Patient.address.line.extension:postBox",
      "path" : "Patient.address.line.extension",
      "sliceName" : "postBox",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "mentionDistribution"
      }]
    },
    {
      "id" : "Patient.address.line.extension:streetNameBase",
      "path" : "Patient.address.line.extension",
      "sliceName" : "streetNameBase",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "complementPointGeographique"
      }]
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "localite"
      }]
    },
    {
      "id" : "Patient.address.postalCode",
      "path" : "Patient.address.postalCode",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "codePostal"
      }]
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "pays"
      }]
    },
    {
      "id" : "Patient.photo",
      "path" : "Patient.photo",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPatient",
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
        "identity" : "specmetier-to-TDDUIPatient",
        "map" : "langueParlee"
      }]
    }]
  }
}

```
