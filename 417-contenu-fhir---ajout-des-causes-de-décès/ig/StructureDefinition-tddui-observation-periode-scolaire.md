# TDDUI Obervation Periode Scolaire - Médicosocial - Transfert de données DUI v2.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Obervation Periode Scolaire**

## Resource Profile: TDDUI Obervation Periode Scolaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-periode-scolaire | *Version*:2.2.0-ballot |
| Active as of 2026-02-06 | *Computable Name*:TDDUIObservationPeriodeScolaire |

 
Profil de la ressource Organization permettant de représenter la période scolaire de l'usager. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-observation-periode-scolaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tddui-observation-periode-scolaire.csv), [Excel](StructureDefinition-tddui-observation-periode-scolaire.xlsx), [Schematron](StructureDefinition-tddui-observation-periode-scolaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-observation-periode-scolaire",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-periode-scolaire",
  "version" : "2.2.0-ballot",
  "name" : "TDDUIObservationPeriodeScolaire",
  "title" : "TDDUI Obervation Periode Scolaire",
  "status" : "active",
  "date" : "2026-02-06T08:16:26+00:00",
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
  "description" : "Profil de la ressource Organization permettant de représenter la période scolaire de l'usager.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "short" : "Identifiant de la période scolaire",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.identifier.system",
        "path" : "Observation.identifier.system",
        "patternUri" : "https://identifiant-medicosocial-periodescolaire.esante.gouv.fr"
      },
      {
        "id" : "Observation.identifier.value",
        "path" : "Observation.identifier.value",
        "example" : [
          {
            "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-PSCO-numPeriodeScolaire",
            "valueString" : "3480787529/147720425367411-PSCO-12548"
          }
        ]
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "PERIODESCOL",
              "display" : "Période scolaire"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-observation-type|2.2.0-ballot"
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient|2.2.0-ballot",
              "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins|2.2.0-ballot"
            ]
          }
        ]
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-observation-periode-scolaire|2.2.0-ballot"
        }
      },
      {
        "id" : "Observation.component:niveauScolaireReel",
        "path" : "Observation.component",
        "sliceName" : "niveauScolaireReel",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:niveauScolaireReel.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "niveauScolaireReel",
              "display" : "Niveau scolaire réel"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:niveauScolaireSuivi",
        "path" : "Observation.component",
        "sliceName" : "niveauScolaireSuivi",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:niveauScolaireSuivi.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "niveauScolaireSuivi",
              "display" : "Niveau scolaire suivi"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:typeEnseignementSpecialise",
        "path" : "Observation.component",
        "sliceName" : "typeEnseignementSpecialise",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:typeEnseignementSpecialise.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "typeEnseignementSpecialise",
              "display" : "Type d'enseignement spécialisé"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:typeEnseignementSpecialise.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:typeEnseignementSpecialise.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j386-type-enseignement-specialise-ms"
        }
      },
      {
        "id" : "Observation.component:diplome",
        "path" : "Observation.component",
        "sliceName" : "diplome",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:diplome.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "diplome",
              "display" : "Diplôme"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:diplome.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:diplome.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J81-TypeDiplome-RASS/FHIR/JDV-J81-TypeDiplome-RASS|20230526120000"
        }
      },
      {
        "id" : "Observation.component:volumeScolarisation",
        "path" : "Observation.component",
        "sliceName" : "volumeScolarisation",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:volumeScolarisation.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "volumeScolarisation",
              "display" : "Volume de scolarisation"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:volumeScolarisation.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
