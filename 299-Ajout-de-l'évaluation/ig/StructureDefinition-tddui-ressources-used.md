# Ressources utilisées - Médicosocial - Transfert de données DUI v2.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ressources utilisées**

## Extension: Ressources utilisées 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used | *Version*:2.0.0-ballot |
| Active as of 2025-10-15 | *Computable Name*:TDDUIRessourcesUsed |

Ressources utilisées lors de l’évènement (ex : chambre, matériel médical, véhicule).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)
* Examples for this Extension: [Encounter/tddui-encounter-evenement-example](Encounter-tddui-encounter-evenement-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-ressources-used)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-ressources-used.csv), [Excel](StructureDefinition-tddui-ressources-used.xlsx), [Schematron](StructureDefinition-tddui-ressources-used.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-ressources-used",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used",
  "version" : "2.0.0-ballot",
  "name" : "TDDUIRessourcesUsed",
  "title" : "Ressources utilisées",
  "status" : "active",
  "date" : "2025-10-15T11:51:21+00:00",
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
  "description" : "Ressources utilisées lors de l’évènement (ex : chambre, matériel médical, véhicule).",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Encounter"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Ressources utilisées",
        "definition" : "Ressources utilisées lors de l’évènement (ex : chambre, matériel médical, véhicule)."
      },
      {
        "id" : "Extension.extension:TDDUIRessourceType",
        "path" : "Extension.extension",
        "sliceName" : "TDDUIRessourceType",
        "short" : "Type de ressources utilisées dans le cadre de l’évènement (matériel, immobilier, véhicule).",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:TDDUIRessourceType.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:TDDUIRessourceType.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "TDDUIRessourceType"
      },
      {
        "id" : "Extension.extension:TDDUIRessourceType.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-ressource-utilisee-cisis"
        }
      },
      {
        "id" : "Extension.extension:TDDUIMaterialDetail",
        "path" : "Extension.extension",
        "sliceName" : "TDDUIMaterialDetail",
        "short" : "Détail des ressources matérielles (ex: matériel médical, pédagogique)",
        "min" : 0,
        "max" : "*",
        "constraint" : [
          {
            "key" : "MatDetailOnlyIfTypeOrg206",
            "severity" : "error",
            "human" : "TDDUIMaterialDetail ne doit être utilisé que si TDDUIRessourceType vaut ORG-206 ou n'est pas renseigné.",
            "expression" : "extension('TDDUIRessourceType').empty() or extension('TDDUIRessourceType').value.coding.code = 'ORG-206'",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used"
          }
        ]
      },
      {
        "id" : "Extension.extension:TDDUIMaterialDetail.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:TDDUIMaterialDetail.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "TDDUIMaterialDetail"
      },
      {
        "id" : "Extension.extension:TDDUIMaterialDetail.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-detail-materiel-specialise-cisis"
        }
      },
      {
        "id" : "Extension.extension:TDDUIFacilityResource",
        "path" : "Extension.extension",
        "sliceName" : "TDDUIFacilityResource",
        "short" : "Détail des ressources immobilières (ex: bâtiment, salle, chambre)",
        "min" : 0,
        "max" : "*",
        "constraint" : [
          {
            "key" : "FacilityOnlyIfTypeOrg207",
            "severity" : "error",
            "human" : "TDDUIFacilityResource ne doit être utilisé que si TDDUIRessourceType vaut ORG-207 ou n'est pas renseigné.",
            "expression" : "extension('TDDUIRessourceType').empty() or extension('TDDUIRessourceType').value.coding.code = 'ORG-207'",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used"
          }
        ]
      },
      {
        "id" : "Extension.extension:TDDUIFacilityResource.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:TDDUIFacilityResource.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "TDDUIFacilityResource"
      },
      {
        "id" : "Extension.extension:TDDUIFacilityResource.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-detail-ressource-immobiliere-utilisee-cisis"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
