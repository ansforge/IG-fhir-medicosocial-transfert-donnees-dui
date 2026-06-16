# TDDUI Consent Accord - Médicosocial - Transfert de données DUI v2.3.0

## : TDDUI Consent Accord 

 
Profil de la ressource Consent permettant de représenter l'accord de l'usager, de son entourage ou de la structure. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référence ce Profil: [TDDUI CarePlan Projet Personalise](StructureDefinition-tddui-careplan-projet-personnalise.md)
* Exemples pour ce/t/te Profil: [Consent/tddui-pp-ime-consent-accord-example](Consent-tddui-pp-ime-consent-accord-example.md) and [Consent/tddui-pp-pa-consent-accord-example](Consent-tddui-pp-pa-consent-accord-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-consent-accord)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Practitioner Role (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role)](StructureDefinition-tddui-practitioner-role.md)
* [TDDUI Practitioner (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner)](StructureDefinition-tddui-practitioner.md)
* [TDDUI RelatedPerson Contact (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact)](StructureDefinition-tddui-related-person-contact.md)
* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Consent.period](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Consent.period.html)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 2 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Practitioner Role (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role)](StructureDefinition-tddui-practitioner-role.md)
* [TDDUI Practitioner (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner)](StructureDefinition-tddui-practitioner.md)
* [TDDUI RelatedPerson Contact (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact)](StructureDefinition-tddui-related-person-contact.md)
* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Consent.period](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Consent.period.html)

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-consent-accord",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord",
  "version" : "2.3.0",
  "name" : "TDDUIConsentAccord",
  "title" : "TDDUI Consent Accord",
  "status" : "active",
  "date" : "2026-06-16T12:06:06+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource Consent permettant de représenter l'accord de l'usager, de son entourage ou de la structure.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUIConsentAccord",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIConsentAccord",
        "map" : "Accord"
      }]
    },
    {
      "id" : "Consent.extension",
      "path" : "Consent.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Consent.extension:TDDUI-consentPeriod-r5",
      "path" : "Consent.extension",
      "sliceName" : "TDDUI-consentPeriod-r5",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Consent.period"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIConsentAccord",
        "map" : "dureeValidite"
      }]
    },
    {
      "id" : "Consent.dateTime",
      "path" : "Consent.dateTime",
      "min" : 1,
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIConsentAccord",
        "map" : "dateSignature"
      }]
    },
    {
      "id" : "Consent.performer",
      "path" : "Consent.performer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIConsentAccord",
        "map" : "auteur"
      }]
    }]
  }
}

```
