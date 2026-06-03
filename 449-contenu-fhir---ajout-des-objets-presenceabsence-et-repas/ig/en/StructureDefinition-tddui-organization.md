# TDDUI Organization - Médicosocial - Transfert de données DUI v2.3.0-ballot

## Resource Profile: TDDUI Organization 

 
Profil de la ressource FRCoreOrganizationProfile permettant de représenter les entités juridiques. 

**Usages:**

* Use this Profile: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Refer to this Profile: [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md), [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md), [TDDUI Observation Periode Scolaire](StructureDefinition-tddui-observation-periode-scolaire.md)... Show 3 more, [TDDUI Practitioner Role](StructureDefinition-tddui-practitioner-role.md), [TDDUI QR Participant](StructureDefinition-tddui-qr-participant.md) and [TDDUI Task Transport](StructureDefinition-tddui-task-transport.md)
* Examples for this Profile: [Les Chênes Verts](Organization-tddui-organization-example.md) and [Les Résidences du Lac](Organization-tddui-organization-origine-example.md)
* CapabilityStatements using this Profile: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-organization.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-organization.csv), [Excel](../StructureDefinition-tddui-organization.xlsx), [Schematron](../StructureDefinition-tddui-organization.sch) 



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
  "date" : "2026-06-03T14:26:22+00:00",
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
