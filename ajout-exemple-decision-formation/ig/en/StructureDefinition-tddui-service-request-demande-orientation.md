# TDDUI ServiceRequest DemandeOrientation - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Resource Profile: TDDUI ServiceRequest DemandeOrientation 

 
Profil de la ressource ServiceRequest permettant de représenter la demande d'orientation adressée à la CDAPH. 

**Usages:**

* Use this Profile: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Refer to this Profile: [TDDUI Basic Decision](StructureDefinition-tddui-basic-decision.md)
* Examples for this Profile: [ServiceRequest/tddui-service-request-demande-orientation-example](ServiceRequest-tddui-service-request-demande-orientation-example.md)
* CapabilityStatements using this Profile: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.tddui|current/StructureDefinition/StructureDefinition-tddui-service-request-demande-orientation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-tddui-service-request-demande-orientation.csv), [Excel](../StructureDefinition-tddui-service-request-demande-orientation.xlsx), [Schematron](../StructureDefinition-tddui-service-request-demande-orientation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-service-request-demande-orientation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-demande-orientation",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIServiceRequestDemandeOrientation",
  "title" : "TDDUI ServiceRequest DemandeOrientation",
  "status" : "active",
  "date" : "2026-07-21T09:07:21+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource ServiceRequest permettant de représenter la demande d'orientation adressée à la CDAPH.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
    "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
    "name" : "Modèle de contenu DUI"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "DemandeOrientation"
      }]
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
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
      "id" : "ServiceRequest.identifier.type",
      "path" : "ServiceRequest.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-service-request-identifier-demande-orientation"
      }
    },
    {
      "id" : "ServiceRequest.identifier:idDemandeOrientation",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "idDemandeOrientation",
      "min" : 1,
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "idDemandeOrientation"
      }]
    },
    {
      "id" : "ServiceRequest.identifier:idDemandeOrientation.type",
      "path" : "ServiceRequest.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-service-request-identifier",
          "code" : "DEMANDE_ORIENTATION"
        }]
      }
    },
    {
      "id" : "ServiceRequest.identifier:idDemandeOrientation.system",
      "path" : "ServiceRequest.identifier.system",
      "short" : "oid de la MPDH",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.identifier:idDemandeOrientation.value",
      "path" : "ServiceRequest.identifier.value",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j394-type-demande-compensation-ms"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "typeDemande"
      }]
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j395-nature-demande-compensation-ms"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "natureDemande"
      }]
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "Usager"
      }]
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrencePeriod",
      "path" : "ServiceRequest.occurrence[x]",
      "sliceName" : "occurrencePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrencePeriod.start",
      "path" : "ServiceRequest.occurrence[x].start",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "dateEnvoiDemande"
      }]
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrencePeriod.end",
      "path" : "ServiceRequest.occurrence[x].end",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "dateReponseOrientation"
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "extension('https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator').value"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.supportingInfo.extension",
      "path" : "ServiceRequest.supportingInfo.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.supportingInfo.extension:TDDUIDiscriminator",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "TDDUIDiscriminator",
      "min" : 1,
      "max" : "4",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:demandeOrientation",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "demandeOrientation",
      "short" : "Demande d'orientation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "demandeOrientation"
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:demandeOrientation.extension:TDDUIDiscriminator",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "TDDUIDiscriminator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:demandeOrientation.extension:TDDUIDiscriminator.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
          "code" : "demandeOrientation"
        }]
      },
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-servicerequest-supportinginfo"
      }
    },
    {
      "id" : "ServiceRequest.supportingInfo:depotPoste",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "depotPoste",
      "short" : "Dépôt de la poste",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "depotPoste"
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:depotPoste.extension:TDDUIDiscriminator",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "TDDUIDiscriminator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:depotPoste.extension:TDDUIDiscriminator.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
          "code" : "depotPoste"
        }]
      },
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-servicerequest-supportinginfo"
      }
    },
    {
      "id" : "ServiceRequest.supportingInfo:reponseOrientation",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "reponseOrientation",
      "short" : "Réponse de la CDAPH à la demande d'orientation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "reponseOrientation"
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:reponseOrientation.extension:TDDUIDiscriminator",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "TDDUIDiscriminator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:reponseOrientation.extension:TDDUIDiscriminator.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
          "code" : "reponseOrientation"
        }]
      },
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-servicerequest-supportinginfo"
      }
    },
    {
      "id" : "ServiceRequest.supportingInfo:pieceComplementaire",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "pieceComplementaire",
      "short" : "Pièce(s) complémentaire(s) à la demande d'orientation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIServiceRequestDemandeOrientation",
        "map" : "pieceComplementaire"
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:pieceComplementaire.extension:TDDUIDiscriminator",
      "path" : "ServiceRequest.supportingInfo.extension",
      "sliceName" : "TDDUIDiscriminator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-discriminator"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo:pieceComplementaire.extension:TDDUIDiscriminator.value[x]",
      "path" : "ServiceRequest.supportingInfo.extension.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-discriminator",
          "code" : "pieceComplementaire"
        }]
      },
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-servicerequest-supportinginfo"
      }
    }]
  }
}

```
