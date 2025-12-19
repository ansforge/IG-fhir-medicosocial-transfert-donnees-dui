# tddui-patient-example - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-patient-example**

## Example Patient: tddui-patient-example

Profil: [TDDUI Patient](StructureDefinition-tddui-patient.md)

DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)

-------

| | |
| :--- | :--- |
| Nom alternatif : | Jean DUPONT (Official) |
| Coordonnées | 12 rue des Lilas, 76748 Vittefleur, France(home) |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-birthPlace.html) | Mazoires FRA |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "tddui-patient-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
      "valueAddress" : {
        "extension" : [
          {
            "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
            "valueCoding" : {
              "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM",
              "code" : "63220"
            }
          }
        ],
        "city" : "Mazoires",
        "country" : "FRA"
      }
    }
  ],
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PI",
            "display" : "Patient internal identifier"
          }
        ]
      },
      "system" : "https://identifiant-medicosocial-localusager.esante.gouv.fr",
      "value" : "3480787529/194704032"
    }
  ],
  "name" : [
    {
      "extension" : [
        {
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
          "valueString" : "Jean Stéphane Patrick"
        }
      ],
      "use" : "official",
      "family" : "DUPONT",
      "given" : ["Jean"]
    },
    {
      "use" : "usual",
      "family" : "DUPONT"
    }
  ],
  "gender" : "male",
  "birthDate" : "1947-04-03",
  "_birthDate" : {
    "extension" : [
      {
        "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-birth-order",
        "valuePositiveInt" : 2
      }
    ]
  },
  "address" : [
    {
      "use" : "home",
      "text" : "12 rue des Lilas, 76748 Vittefleur, France",
      "line" : ["12 rue des Lilas"],
      "city" : "Vittefleur",
      "postalCode" : "76748"
    }
  ]
}

```
