# TDDUI Practitioner Role - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Practitioner Role**

## Resource Profile: TDDUI Practitioner Role 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role | *Version*:2.1.0-ballot |
| Active as of 2025-11-04 | *Computable Name*:TDDUIPractitionerRole |

 
Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel. 

**Usages:**

* Use this Profile: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Refer to this Profile: [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md) and [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)
* Examples for this Profile: [PractitionerRole/tddui-practitioner-role-example](PractitionerRole-tddui-practitioner-role-example.md)
* CapabilityStatements using this Profile: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-practitioner-role)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-practitioner-role.csv), [Excel](StructureDefinition-tddui-practitioner-role.xlsx), [Schematron](StructureDefinition-tddui-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-practitioner-role",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role",
  "version" : "2.1.0-ballot",
  "name" : "TDDUIPractitionerRole",
  "title" : "TDDUI Practitioner Role",
  "status" : "active",
  "date" : "2025-11-04T09:41:06+00:00",
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
  "description" : "Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel.",
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
      "identity" : "specmetier-to-TDDUIPractitionerRole",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole",
        "path" : "PractitionerRole",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitionerRole",
            "map" : "Professionnel"
          }
        ]
      },
      {
        "id" : "PractitionerRole.extension:TDDUIProfession",
        "path" : "PractitionerRole.extension",
        "sliceName" : "TDDUIProfession",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exercise-mode"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitionerRole",
            "map" : "modeExercice"
          }
        ]
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitionerRole",
            "map" : "etablissementDeRattachement"
          }
        ]
      },
      {
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "short" : "Rôle fonctionnel du professionnel.",
        "max" : "1",
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitionerRole",
            "map" : "rôle"
          }
        ]
      },
      {
        "id" : "PractitionerRole.code.extension:TDDUIProfession",
        "path" : "PractitionerRole.code.extension",
        "sliceName" : "TDDUIProfession",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-profession"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "specmetier-to-TDDUIPractitionerRole",
            "map" : "profession"
          }
        ]
      },
      {
        "id" : "PractitionerRole.code.coding",
        "path" : "PractitionerRole.code.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS"
        }
      }
    ]
  }
}

```
