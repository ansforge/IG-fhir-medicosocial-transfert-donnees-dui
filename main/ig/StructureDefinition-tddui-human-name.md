# TDDUI Human Name DataType - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Human Name DataType**

## Data Type Profile: TDDUI Human Name DataType 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name | *Version*:2.1.0 |
| Active as of 2025-12-17 | *Computable Name*:tddui-humanname |

 

| | |
| :--- | :--- |
| French profile of datatype HumanName with constraints on prefix and suffix | Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix |

 

**Utilisations:**

* Utiliser ce Profil de type de données: [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md), [TDDUI Patient](StructureDefinition-tddui-patient.md) and [TDDUI Practitioner](StructureDefinition-tddui-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-human-name)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-human-name.csv), [Excel](StructureDefinition-tddui-human-name.xlsx), [Schematron](StructureDefinition-tddui-human-name.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-human-name",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name",
  "version" : "2.1.0",
  "name" : "tddui-humanname",
  "title" : "TDDUI Human Name DataType",
  "status" : "active",
  "date" : "2025-12-17T14:24:53+00:00",
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
  "description" : "French profile of datatype HumanName with constraints on prefix and suffix | Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HumanName.prefix",
        "path" : "HumanName.prefix",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS"
        }
      }
    ]
  }
}

```
