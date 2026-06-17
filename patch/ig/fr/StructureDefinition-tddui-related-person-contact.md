# TDDUI RelatedPerson Contact - Médicosocial - Transfert de données DUI v2.3.0

## Profil de ressource: TDDUI RelatedPerson Contact 

 
Profil de la ressource FRCoreRelatedPersonProfile permettant de représenter un contact de l'usager. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référence ce Profil: [TDDUI Consent Accord](StructureDefinition-tddui-consent-accord.md), [TDDUI Observation Periode Scolaire](StructureDefinition-tddui-observation-periode-scolaire.md) and [TDDUI Task Bilan](StructureDefinition-tddui-task-bilan.md)
* Exemples pour ce/t/te Profil: [RelatedPerson/tddui-related-person-contact-example](RelatedPerson-tddui-related-person-contact-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-related-person-contact)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreRelatedPersonProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreRelatedPersonProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)
* [TDDUI Human Name DataType (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name)](StructureDefinition-tddui-human-name.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-nationality](StructureDefinition-tddui-nationality.md)
* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment](StructureDefinition-tddui-comment.md)
* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact-description](StructureDefinition-tddui-related-person-contact-description.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreRelatedPersonProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreRelatedPersonProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)
* [TDDUI Human Name DataType (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name)](StructureDefinition-tddui-human-name.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-nationality](StructureDefinition-tddui-nationality.md)
* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment](StructureDefinition-tddui-comment.md)
* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact-description](StructureDefinition-tddui-related-person-contact-description.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-related-person-contact.csv), [Excel](../StructureDefinition-tddui-related-person-contact.xlsx), [Schematron](../StructureDefinition-tddui-related-person-contact.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-related-person-contact",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact",
  "version" : "2.3.0",
  "name" : "TDDUIRelatedPersonContact",
  "title" : "TDDUI RelatedPerson Contact",
  "status" : "active",
  "date" : "2026-06-17T07:23:16+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource FRCoreRelatedPersonProfile permettant de représenter un contact de l'usager.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-TDDUIRelatedPersonContact",
    "uri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/sfe_modelisation_contenu.html",
    "name" : "Modèle de contenu DUI"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "ContactPersonnePhysique"
      }]
    },
    {
      "id" : "RelatedPerson.extension",
      "path" : "RelatedPerson.extension",
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
      "id" : "RelatedPerson.extension:nationality",
      "path" : "RelatedPerson.extension",
      "sliceName" : "nationality",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-nationality"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "paysNationalite"
      }]
    },
    {
      "id" : "RelatedPerson.extension:comment",
      "path" : "RelatedPerson.extension",
      "sliceName" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "commentaire"
      }]
    },
    {
      "id" : "RelatedPerson.extension:description",
      "path" : "RelatedPerson.extension",
      "sliceName" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact-description"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "description"
      }]
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "identifiantPP"
      }]
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient",
        "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"]
      }]
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-related-person-relashionship"
      }
    },
    {
      "id" : "RelatedPerson.relationship:Role",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "Role",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j384-role-membre-famille-ms"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "role"
      }]
    },
    {
      "id" : "RelatedPerson.relationship:RelationType",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "RelationType",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-relation"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "relation"
      }]
    },
    {
      "id" : "RelatedPerson.relationship:LegalProtection",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "LegalProtection",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-contact-protection-juridique"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "relation"
      }]
    },
    {
      "id" : "RelatedPerson.relationship:LegalProtection.coding.system",
      "path" : "RelatedPerson.relationship.coding.system",
      "min" : 1,
      "patternUri" : "https://mos.esante.gouv.fr/NOS/TRE_R217-ProtectionJuridique/FHIR/TRE-R217-ProtectionJuridique"
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name"]
      }]
    },
    {
      "id" : "RelatedPerson.name.family",
      "path" : "RelatedPerson.name.family",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "nomNaissance"
      }]
    },
    {
      "id" : "RelatedPerson.name.given",
      "path" : "RelatedPerson.name.given",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "prenom"
      }]
    },
    {
      "id" : "RelatedPerson.name.prefix",
      "path" : "RelatedPerson.name.prefix",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "civilite"
      }]
    },
    {
      "id" : "RelatedPerson.telecom",
      "path" : "RelatedPerson.telecom",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "telecommunication"
      }]
    },
    {
      "id" : "RelatedPerson.gender",
      "path" : "RelatedPerson.gender",
      "short" : "male | female | unknown",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-gender-INS"
      },
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "sexe"
      }]
    },
    {
      "id" : "RelatedPerson.birthDate",
      "path" : "RelatedPerson.birthDate",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "dateNaissance"
      }]
    },
    {
      "id" : "RelatedPerson.address",
      "path" : "RelatedPerson.address",
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIRelatedPersonContact",
        "map" : "adresse"
      }]
    }]
  }
}

```
