# tddui-patient-ins-example - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-patient-ins-example**

## Example Patient: tddui-patient-ins-example

Profil: [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md)

DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)

-------

| | |
| :--- | :--- |
| Other Id: | NIR définitif/147720425367411 (use: official, ) |
| Nom alternatif : | Jean DUPONT (Official) |
| Contact Detail | 12 rue des Lilas, 76748 Vittefleur, France(home) |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-birthPlace.html) | Mazoires FRA |
| FR Core Patient Ident Reliability Extension: | * identityStatus: [FR Core CodeSystem v2-0445 VALI](https://hl7.fr/ig/fhir/core/2.1.0/CodeSystem-fr-core-cs-v2-0445.html#fr-core-cs-v2-0445-VALI): Identité validée
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "tddui-patient-ins-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "identityStatus",
          "valueCoding" : {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
            "code" : "VALI"
          }
        }
      ],
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
    },
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
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "INS-NIR"
          }
        ]
      },
      "system" : "urn:oid:1.2.250.1.213.1.4.8",
      "value" : "147720425367411"
    },
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
      "system" : "https://identifiant-medicosocial-localusager.cnsa.fr",
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
