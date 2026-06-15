# TDDUI Practitioner Role - Médicosocial - Transfert de données DUI v2.3.0

## : TDDUI Practitioner Role 

 
Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel. 

**Utilisations:**

* Utilise ce/t/te Profil: [TDDUI Bundle](StructureDefinition-tddui-bundle.md)
* Référence ce Profil: [TDDUI Consent Accord](StructureDefinition-tddui-consent-accord.md), [TDDUI DocumentReference](StructureDefinition-tddui-document-reference.md), [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md), [TDDUI Goal Objectif](StructureDefinition-tddui-goal-objectif.md)... Show 2 more, [TDDUI Status Author](StructureDefinition-tddui-status-author.md) and [TDDUI Task Action](StructureDefinition-tddui-task-action.md)
* Exemples pour ce/t/te Profil: [PractitionerRole/tddui-practitioner-role-example](PractitionerRole-tddui-practitioner-role-example.md)
* CapabilityStatements utilisant ce Profil: [TDDUI-Consommateur](CapabilityStatement-TDDUIConsommateur.md) and [TDDUI-Producteur](CapabilityStatement-TDDUIProducteur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-practitioner-role)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Practitioner (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner)](StructureDefinition-tddui-practitioner.md)
* [TDDUI Organization (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization)](StructureDefinition-tddui-organization.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exercise-mode](StructureDefinition-tddui-exercise-mode.md)
* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-profession](StructureDefinition-tddui-profession.md)

#### Bindings terminologiques (différentiel)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Practitioner (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner)](StructureDefinition-tddui-practitioner.md)
* [TDDUI Organization (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization)](StructureDefinition-tddui-organization.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exercise-mode](StructureDefinition-tddui-exercise-mode.md)
* [https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-profession](StructureDefinition-tddui-profession.md)

 

 ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-practitioner-role",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role",
  "version" : "2.3.0",
  "name" : "TDDUIPractitionerRole",
  "title" : "TDDUI Practitioner Role",
  "status" : "active",
  "date" : "2026-06-15T09:02:12+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource FRCorePractitionerRole permettant de représenter un Professionnel.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPractitionerRole",
        "map" : "Professionnel"
      }]
    },
    {
      "id" : "PractitionerRole.extension:TDDUIProfession",
      "path" : "PractitionerRole.extension",
      "sliceName" : "TDDUIProfession",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-exercise-mode"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPractitionerRole",
        "map" : "modeExercice"
      }]
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPractitionerRole",
        "map" : "etablissementDeRattachement"
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Rôle fonctionnel du professionnel.",
      "max" : "1",
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPractitionerRole",
        "map" : "rôle"
      }]
    },
    {
      "id" : "PractitionerRole.code.extension:TDDUIProfession",
      "path" : "PractitionerRole.code.extension",
      "sliceName" : "TDDUIProfession",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-profession"]
      }],
      "mapping" : [{
        "identity" : "specmetier-to-TDDUIPractitionerRole",
        "map" : "profession"
      }]
    },
    {
      "id" : "PractitionerRole.code.coding",
      "path" : "PractitionerRole.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS"
      }
    }]
  }
}

```
