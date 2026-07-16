# TDDUI Observation Repas - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Resource Profile: TDDUI Observation Repas 

 
Profil de la ressource Observation permettant de représenter si l'usager bénéficie ou non des repas. 

**Usages:**

* Use this Profile: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Examples for this Profile: [Observation/tddui-observation-repas-example](Observation-tddui-observation-repas-example.md)
* CapabilityStatements using this Profile: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-observation-repas.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-observation-repas.csv), [Excel](../StructureDefinition-tddui-observation-repas.xlsx), [Schematron](../StructureDefinition-tddui-observation-repas.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-observation-repas",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-repas",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIObservationRepas",
  "title" : "TDDUI Observation Repas",
  "status" : "active",
  "date" : "2026-07-16T12:36:44+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource Observation permettant de représenter si l'usager bénéficie ou non des repas.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUIObservationRepas",
    "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
    "name" : "Modèle de contenu DUI"
  },
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationRepas",
        "map" : "Repas"
      }]
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
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
      "id" : "Observation.extension:TDDUIParticipantPresent",
      "path" : "Observation.extension",
      "sliceName" : "TDDUIParticipantPresent",
      "short" : "Présence de l'usager au repas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-participant-present"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationRepas",
        "map" : "usagerPresent"
      }]
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.identifier.type",
      "path" : "Observation.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-observation-identifier-repas"
      }
    },
    {
      "id" : "Observation.identifier:idRepas",
      "path" : "Observation.identifier",
      "sliceName" : "idRepas",
      "short" : "Identifiant du repas",
      "min" : 1,
      "max" : "1",
      "constraint" : [{
        "key" : "ObservationRepasIdentifierFormat",
        "severity" : "error",
        "human" : "l'identifiant du repas doit respecter le format : 3+FINESS/identifiantLocalUsagerESSMS-REPAS-numRepas",
        "expression" : "value.matches('^3[0-9]{9}/[A-Za-z0-9]+-REPAS-[A-Za-z0-9]+$')",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-repas"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationRepas",
        "map" : "idRepas"
      }]
    },
    {
      "id" : "Observation.identifier:idRepas.type",
      "path" : "Observation.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-identifier",
          "code" : "REP"
        }]
      }
    },
    {
      "id" : "Observation.identifier:idRepas.system",
      "path" : "Observation.identifier.system",
      "min" : 1,
      "patternUri" : "https://identifiant-medicosocial-repas.esante.gouv.fr"
    },
    {
      "id" : "Observation.identifier:idRepas.value",
      "path" : "Observation.identifier.value",
      "example" : [{
        "label" : "du format d'identifiant à respecter : 3+FINESS/identifiantLocalUsagerESSMS-REPAS-numRepas",
        "valueString" : "3480787529/147720425367411-REPAS-12548"
      }]
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j407-type-repas-ms"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationRepas",
        "map" : "typeRepas"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type",
          "code" : "REPAS",
          "display" : "Repas"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationRepas",
        "map" : "Usager"
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIObservationRepas",
        "map" : "dateRepas"
      }]
    }]
  }
}

```
