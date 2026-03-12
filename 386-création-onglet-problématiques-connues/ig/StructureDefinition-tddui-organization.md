# TDDUI Organization - Médicosocial - Transfert de données DUI v2.3.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Organization**

## Resource Profile: TDDUI Organization 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization | *Version*:2.3.0-ballot |
| Active as of 2026-03-12 | *Computable Name*:TDDUIOrganization |

 
Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référence ce Profil: [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md), [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md), [TDDUI Observation Periode Scolaire](StructureDefinition-tddui-observation-periode-scolaire.md)... Show 3 more, [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md), [TDDUI QR Participant](StructureDefinition-tddui-qr-participant.md) and [TDDUI Task Transport](StructureDefinition-tddui-task-transport.md)
* Exemples pour ce/t/te Profil: [Les Chênes Verts](Organization-tddui-organization-example.md) and [Les Résidences du Lac](Organization-tddui-organization-origine-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-organization.csv), [Excel](StructureDefinition-tddui-organization.xlsx), [Schematron](StructureDefinition-tddui-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization",
  "version" : "2.3.0-ballot",
  "name" : "TDDUIOrganization",
  "title" : "TDDUI Organization",
  "status" : "active",
  "date" : "2026-03-12T08:40:42+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUIOrganization",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIOrganization",
        "map" : "EntiteJuridique"
      }]
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "min" : 1
    },
    {
      "id" : "Organization.identifier.type",
      "path" : "Organization.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-organization-identifier-type"
      }
    },
    {
      "id" : "Organization.identifier:idNatSt",
      "path" : "Organization.identifier",
      "sliceName" : "idNatSt",
      "min" : 1,
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIOrganization",
        "map" : "idNat_Struct"
      }]
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIOrganization",
        "map" : "raisonSocial"
      }]
    }]
  }
}

```
