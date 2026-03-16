# TDDUI Patient Example - Médicosocial - Transfert de données DUI v2.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Patient Example**

## Example Patient: TDDUI Patient Example

Profil: [TDDUI Patient](StructureDefinition-tddui-patient.md)

DUPONT Male, Date de Naissance : ( Patient internal identifier: 3480787529/194704032)

-------

| | |
| :--- | :--- |
| Autre identifiant : | Driver's license number/822146819 (, période : 1980-01-01 --> (en cours)) |
| Nom alternatif : | Jean DUPONT (Official) |
| Coordonnées | 12 rue des Lilas 76748 99100 (home) |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-birthPlace.html) | Mazoires FRA |
| TDDUI Household Situation: | * familySituation: Seul
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "tddui-patient-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "extension" : [{
        "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
        "valueCoding" : {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM",
          "code" : "63220"
        }
      }],
      "city" : "Mazoires",
      "country" : "FRA"
    }
  },
  {
    "extension" : [{
      "url" : "familySituation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R317-SituationVieQuotidienne/FHIR/TRE-R317-SituationVieQuotidienne",
          "code" : "01",
          "display" : "Seul"
        }]
      }
    }],
    "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-household-situation"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PI",
        "display" : "Patient internal identifier"
      }]
    },
    "system" : "https://identifiant-medicosocial-localusager.esante.gouv.fr",
    "value" : "3480787529/194704032"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "DL"
      }]
    },
    "system" : "https://ants.gouv.fr/",
    "value" : "822146819",
    "period" : {
      "start" : "1980-01-01"
    }
  }],
  "name" : [{
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
      "valueString" : "Jean Stéphane Patrick"
    }],
    "use" : "official",
    "family" : "DUPONT",
    "given" : ["Jean"]
  },
  {
    "use" : "usual",
    "family" : "DUPONT"
  }],
  "gender" : "male",
  "_birthDate" : {
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-birth-order",
      "valuePositiveInt" : 2
    }]
  },
  "address" : [{
    "use" : "home",
    "line" : ["12 rue des Lilas"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "12"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
        "valueString" : "rue des Lilas"
      }]
    }],
    "postalCode" : "76748",
    "country" : "99100"
  }]
}

```
