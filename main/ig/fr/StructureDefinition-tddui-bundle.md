# TDDUI Bundle - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Profil de ressource: TDDUI Bundle 

 
Profil générique créé pour transmettre des données d'un logiciel DUI. 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md), [Bundle/tddui-pp-ime-bundle-example](Bundle-tddui-pp-ime-bundle-example.md) and [Bundle/tddui-pp-pa-bundle-example](Bundle-tddui-pp-pa-bundle-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-bundle)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 0 élément(60 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)
* [TDDUI Organization (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization)](StructureDefinition-tddui-organization.md)
* [TDDUI Encounter Sejour (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour)](StructureDefinition-tddui-encounter-sejour.md)
* [TDDUI Encounter Evenement (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement)](StructureDefinition-tddui-encounter-evenement.md)
* [TDDUI Practitioner (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner)](StructureDefinition-tddui-practitioner.md)
* [TDDUI Practitioner Role (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role)](StructureDefinition-tddui-practitioner-role.md)
* [TDDUI Task Transport Professionnel (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel)](StructureDefinition-tddui-task-transport-professionnel.md)
* [TDDUI Task Transport Usager (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager)](StructureDefinition-tddui-task-transport-usager.md)
* [TDDUI DocumentReference (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference)](StructureDefinition-tddui-document-reference.md)
* [TDDUI QuestionnaireResponse (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response)](StructureDefinition-tddui-questionnaire-response.md)
* [TDDUI CarePlan Projet Personalise (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise)](StructureDefinition-tddui-careplan-projet-personnalise.md)
* [TDDUI Consent Accord (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord)](StructureDefinition-tddui-consent-accord.md)
* [TDDUI Goal Attente (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente)](StructureDefinition-tddui-goal-attente.md)
* [TDDUI Goal Objectif (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif)](StructureDefinition-tddui-goal-objectif.md)
* [TDDUI ServiceRequest Besoin (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin)](StructureDefinition-tddui-service-request-besoin.md)
* [TDDUI Task Action (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action)](StructureDefinition-tddui-task-action.md)
* [TDDUI Task Bilan (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan)](StructureDefinition-tddui-task-bilan.md)
* [TDDUI Task MoyenRessource (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource)](StructureDefinition-tddui-task-moyen-ressource.md)
* [TDDUI Task Prestation (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation)](StructureDefinition-tddui-task-prestation.md)
* [TDDUI RelatedPerson Contact (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact)](StructureDefinition-tddui-related-person-contact.md)
* [TDDUI Observation Cause Mortalite (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-cause-mortalite)](StructureDefinition-tddui-observation-cause-mortalite.md)
* [TDDUI Observation Periode Scolaire (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-periode-scolaire)](StructureDefinition-tddui-observation-periode-scolaire.md)
* [TDDUI Observation Mobilite Usager (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-mobilite-usager)](StructureDefinition-tddui-observation-mobilite-usager.md)
* [TDDUI ServiceRequest DemandeOrientation (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-demande-orientation)](StructureDefinition-tddui-service-request-demande-orientation.md)
* [TDDUI Basic Decision (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-decision)](StructureDefinition-tddui-basic-decision.md)
* [TDDUI Observation Repas (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-repas)](StructureDefinition-tddui-observation-repas.md)
* [TDDUI Schedule (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-schedule)](StructureDefinition-tddui-schedule.md)
* [TDDUI Slot Presence Absence (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-slot-presence-absence)](StructureDefinition-tddui-slot-presence-absence.md)
* [TDDUI Goal Projet Vie (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-projet-vie)](StructureDefinition-tddui-goal-projet-vie.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Bundle](http://hl7.org/fhir/R4/bundle.html) 

** Résumé **

Obligatoire : 0 élément(60 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [TDDUI Patient (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient)](StructureDefinition-tddui-patient.md)
* [TDDUI Patient INS (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins)](StructureDefinition-tddui-patient-ins.md)
* [TDDUI Organization (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization)](StructureDefinition-tddui-organization.md)
* [TDDUI Encounter Sejour (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour)](StructureDefinition-tddui-encounter-sejour.md)
* [TDDUI Encounter Evenement (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement)](StructureDefinition-tddui-encounter-evenement.md)
* [TDDUI Practitioner (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner)](StructureDefinition-tddui-practitioner.md)
* [TDDUI Practitioner Role (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role)](StructureDefinition-tddui-practitioner-role.md)
* [TDDUI Task Transport Professionnel (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel)](StructureDefinition-tddui-task-transport-professionnel.md)
* [TDDUI Task Transport Usager (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager)](StructureDefinition-tddui-task-transport-usager.md)
* [TDDUI DocumentReference (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference)](StructureDefinition-tddui-document-reference.md)
* [TDDUI QuestionnaireResponse (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response)](StructureDefinition-tddui-questionnaire-response.md)
* [TDDUI CarePlan Projet Personalise (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise)](StructureDefinition-tddui-careplan-projet-personnalise.md)
* [TDDUI Consent Accord (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord)](StructureDefinition-tddui-consent-accord.md)
* [TDDUI Goal Attente (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente)](StructureDefinition-tddui-goal-attente.md)
* [TDDUI Goal Objectif (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif)](StructureDefinition-tddui-goal-objectif.md)
* [TDDUI ServiceRequest Besoin (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin)](StructureDefinition-tddui-service-request-besoin.md)
* [TDDUI Task Action (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action)](StructureDefinition-tddui-task-action.md)
* [TDDUI Task Bilan (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan)](StructureDefinition-tddui-task-bilan.md)
* [TDDUI Task MoyenRessource (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource)](StructureDefinition-tddui-task-moyen-ressource.md)
* [TDDUI Task Prestation (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation)](StructureDefinition-tddui-task-prestation.md)
* [TDDUI RelatedPerson Contact (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact)](StructureDefinition-tddui-related-person-contact.md)
* [TDDUI Observation Cause Mortalite (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-cause-mortalite)](StructureDefinition-tddui-observation-cause-mortalite.md)
* [TDDUI Observation Periode Scolaire (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-periode-scolaire)](StructureDefinition-tddui-observation-periode-scolaire.md)
* [TDDUI Observation Mobilite Usager (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-mobilite-usager)](StructureDefinition-tddui-observation-mobilite-usager.md)
* [TDDUI ServiceRequest DemandeOrientation (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-demande-orientation)](StructureDefinition-tddui-service-request-demande-orientation.md)
* [TDDUI Basic Decision (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-decision)](StructureDefinition-tddui-basic-decision.md)
* [TDDUI Observation Repas (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-repas)](StructureDefinition-tddui-observation-repas.md)
* [TDDUI Schedule (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-schedule)](StructureDefinition-tddui-schedule.md)
* [TDDUI Slot Presence Absence (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-slot-presence-absence)](StructureDefinition-tddui-slot-presence-absence.md)
* [TDDUI Goal Projet Vie (https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-projet-vie)](StructureDefinition-tddui-goal-projet-vie.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Bundle.entry

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-bundle.csv), [Excel](../StructureDefinition-tddui-bundle.xlsx), [Schematron](../StructureDefinition-tddui-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-bundle",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-bundle",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIBundle",
  "title" : "TDDUI Bundle",
  "status" : "active",
  "date" : "2026-06-30T14:55:37+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil générique créé pour transmettre des données d'un logiciel DUI.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "description" : "Slicing based on the profile conformance of the entry",
        "rules" : "open"
      }
    },
    {
      "id" : "Bundle.entry:DUIPatient",
      "path" : "Bundle.entry",
      "sliceName" : "DUIPatient",
      "short" : "Patient conforming to the TDDUIPatient profile, used to convey patients without an INS identity.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIPatient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIPatient.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIPatient.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIPatientINS",
      "path" : "Bundle.entry",
      "sliceName" : "DUIPatientINS",
      "short" : "Patient conforming to the TDDUIPatientINS profile, used to convey patients identified by an INS identity.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIPatientINS.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-patient-ins"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIPatientINS.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIPatientINS.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIOrganization",
      "path" : "Bundle.entry",
      "sliceName" : "DUIOrganization",
      "short" : "Organization conforming to the TDDUIOrganization profile, used to convey the responsible organization.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIOrganization.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-organization"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIOrganization.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIOrganization.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIEncounterSejour",
      "path" : "Bundle.entry",
      "sliceName" : "DUIEncounterSejour",
      "short" : "Encounter conforming to the TDDUIEncounterSejour profile, used to convey the patient's stay.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIEncounterSejour.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-sejour"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIEncounterSejour.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIEncounterSejour.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIEncounterEvenement",
      "path" : "Bundle.entry",
      "sliceName" : "DUIEncounterEvenement",
      "short" : "Encounter conforming to the TDDUIEncounterEvenement profile, used to convey event linked to the patient patient's stay.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIEncounterEvenement.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIEncounterEvenement.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIEncounterEvenement.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIPractitioner",
      "path" : "Bundle.entry",
      "sliceName" : "DUIPractitioner",
      "short" : "Practitioner conforming to the TDDUIPractitioner profile, used to convey the practitioner.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIPractitioner.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIPractitioner.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIPractitioner.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIPractitionerRole",
      "path" : "Bundle.entry",
      "sliceName" : "DUIPractitionerRole",
      "short" : "PractitionerRole conforming to the TDDUIPractitionerRole profile, used to convey the practitioner.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIPractitionerRole.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-practitioner-role"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIPractitionerRole.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIPractitionerRole.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUITransportProfessionnel",
      "path" : "Bundle.entry",
      "sliceName" : "DUITransportProfessionnel",
      "short" : "Task conforming to the TDDUITaskTransportProfessionnel profile, used to convey the practitioner transportation.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUITransportProfessionnel.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Task",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel"]
      }]
    },
    {
      "id" : "Bundle.entry:DUITransportProfessionnel.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUITransportProfessionnel.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUITransportUsager",
      "path" : "Bundle.entry",
      "sliceName" : "DUITransportUsager",
      "short" : "Task conforming to the TDDUITaskTransportUsager profile, used to convey the patient transportation.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUITransportUsager.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Task",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager"]
      }]
    },
    {
      "id" : "Bundle.entry:DUITransportUsager.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUITransportUsager.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIDocumentReference",
      "path" : "Bundle.entry",
      "sliceName" : "DUIDocumentReference",
      "short" : "DocumentReference conforming to the TDDUIDocumentReference profile, used to convey evaluation attachement",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIDocumentReference.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "DocumentReference",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-document-reference"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIDocumentReference.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIDocumentReference.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIQuestionnaireResponse",
      "path" : "Bundle.entry",
      "sliceName" : "DUIQuestionnaireResponse",
      "short" : "QuestionnaireResponse conforming to the TDDUIQuestionnaireResponse profile, used to convey the evaluation",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIQuestionnaireResponse.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-questionnaire-response"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIQuestionnaireResponse.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIQuestionnaireResponse.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUICarePlanProjetPersonnalise",
      "path" : "Bundle.entry",
      "sliceName" : "DUICarePlanProjetPersonnalise",
      "short" : "CarePlan conforming to the TDDUICarePlanProjetPersonnalise profile, used to convey the personalized care plan",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUICarePlanProjetPersonnalise.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "CarePlan",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-projet-personnalise"]
      }]
    },
    {
      "id" : "Bundle.entry:DUICarePlanProjetPersonnalise.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUICarePlanProjetPersonnalise.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIConsentAccord",
      "path" : "Bundle.entry",
      "sliceName" : "DUIConsentAccord",
      "short" : "Consent conforming to the TDDUIConsentAccord profile, used to document the patient’s and the organization’s agreement",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIConsentAccord.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Consent",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-consent-accord"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIConsentAccord.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIConsentAccord.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIGoalAttente",
      "path" : "Bundle.entry",
      "sliceName" : "DUIGoalAttente",
      "short" : "Goal conforming to the TDDUIGoalAttente profile, used to convey the patient’s expectations",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIGoalAttente.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Goal",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIGoalAttente.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIGoalAttente.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIGoalObjectif",
      "path" : "Bundle.entry",
      "sliceName" : "DUIGoalObjectif",
      "short" : "Goal conforming to the TDDUIGoalObjectif profile, used to convey the objectives of the personalized care plan",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIGoalObjectif.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Goal",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-objectif"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIGoalObjectif.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIGoalObjectif.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIServiceRequestBesoin",
      "path" : "Bundle.entry",
      "sliceName" : "DUIServiceRequestBesoin",
      "short" : "ServiceRequest conforming to the TDDUIServiceRequestBesoin profile, used to convey the needs",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIServiceRequestBesoin.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "ServiceRequest",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-besoin"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIServiceRequestBesoin.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIServiceRequestBesoin.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUITaskAction",
      "path" : "Bundle.entry",
      "sliceName" : "DUITaskAction",
      "short" : "Task conforming to the TDDUITaskAction profile, used to convey the actions to be performed",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUITaskAction.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Task",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-action"]
      }]
    },
    {
      "id" : "Bundle.entry:DUITaskAction.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUITaskAction.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUITaskBilan",
      "path" : "Bundle.entry",
      "sliceName" : "DUITaskBilan",
      "short" : "Task conforming to the TDDUITaskBilan profile, used to convey the summary",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUITaskBilan.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Task",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-bilan"]
      }]
    },
    {
      "id" : "Bundle.entry:DUITaskBilan.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUITaskBilan.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUITaskMoyenRessource",
      "path" : "Bundle.entry",
      "sliceName" : "DUITaskMoyenRessource",
      "short" : "Task conforming to the TDDUITaskMoyenRessource profile, used to convey the means and resources",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUITaskMoyenRessource.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Task",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-moyen-ressource"]
      }]
    },
    {
      "id" : "Bundle.entry:DUITaskMoyenRessource.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUITaskMoyenRessource.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUITaskPrestation",
      "path" : "Bundle.entry",
      "sliceName" : "DUITaskPrestation",
      "short" : "Task conforming to the TDDUITaskPrestation profile, used to convey the services provided",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUITaskPrestation.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Task",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-prestation"]
      }]
    },
    {
      "id" : "Bundle.entry:DUITaskPrestation.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUITaskPrestation.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIRelatedPersonContact",
      "path" : "Bundle.entry",
      "sliceName" : "DUIRelatedPersonContact",
      "short" : "RelatedPerson conforming to the TDDUIRelatedPersonContact profile, used to convey information about the contact person.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIRelatedPersonContact.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-related-person-contact"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIRelatedPersonContact.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIRelatedPersonContact.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIObservationCauseMortalite",
      "path" : "Bundle.entry",
      "sliceName" : "DUIObservationCauseMortalite",
      "short" : "Observation conforming to the DUIObservationCauseMortalite profile, used to convey the cause of death.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIObservationCauseMortalite.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-cause-mortalite"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIObservationCauseMortalite.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIObservationCauseMortalite.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIObservationPeriodeScolaire",
      "path" : "Bundle.entry",
      "sliceName" : "DUIObservationPeriodeScolaire",
      "short" : "Observation conforming to the DUIObservationPeriodeScolaire profile, used to convey the school period.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIObservationPeriodeScolaire.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-periode-scolaire"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIObservationPeriodeScolaire.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIObservationPeriodeScolaire.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIObservationMobiliteUsager",
      "path" : "Bundle.entry",
      "sliceName" : "DUIObservationMobiliteUsager",
      "short" : "Observation conforming to the DUIObservationMobiliteUsager profile, used to convey the mobility.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIObservationMobiliteUsager.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-mobilite-usager"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIObservationMobiliteUsager.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIObservationMobiliteUsager.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIServiceRequestDemandeOrientation",
      "path" : "Bundle.entry",
      "sliceName" : "DUIServiceRequestDemandeOrientation",
      "short" : "ServiceRequest conforming to the TDDUIServiceRequestDemandeOrientation profile, used to convey the request for orientation.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIServiceRequestDemandeOrientation.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "ServiceRequest",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-service-request-demande-orientation"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIServiceRequestDemandeOrientation.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIServiceRequestDemandeOrientation.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIBasicDroitDecision",
      "path" : "Bundle.entry",
      "sliceName" : "DUIBasicDroitDecision",
      "short" : "Basic conforming to the TDDUIBasicDecision profile, used to convey the decision of the CDAPH.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIBasicDroitDecision.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Basic",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-basic-decision"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIBasicDroitDecision.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIBasicDroitDecision.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIObservationRepas",
      "path" : "Bundle.entry",
      "sliceName" : "DUIObservationRepas",
      "short" : "Observation conforming to the DUIObservationRepas profile, used to convey the meals.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIObservationRepas.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-repas"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIObservationRepas.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIObservationRepas.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUISchedule",
      "path" : "Bundle.entry",
      "sliceName" : "DUISchedule",
      "short" : "Schedule conforming to the TDDUISchedule profile, used to convey the schedule.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUISchedule.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Schedule",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-schedule"]
      }]
    },
    {
      "id" : "Bundle.entry:DUISchedule.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUISchedule.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUISlotPresenceAbsence",
      "path" : "Bundle.entry",
      "sliceName" : "DUISlotPresenceAbsence",
      "short" : "Slot conforming to the TDDUISlotPresenceAbsence profile, used to convey the presence or absence.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUISlotPresenceAbsence.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Slot",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-slot-presence-absence"]
      }]
    },
    {
      "id" : "Bundle.entry:DUISlotPresenceAbsence.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUISlotPresenceAbsence.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:DUIGoalProjetVie",
      "path" : "Bundle.entry",
      "sliceName" : "DUIGoalProjetVie",
      "short" : "Goal conforming to the TDDUIGoalProjetVie profile, used to convey the life project.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DUIGoalProjetVie.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Goal",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-projet-vie"]
      }]
    },
    {
      "id" : "Bundle.entry:DUIGoalProjetVie.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DUIGoalProjetVie.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    }]
  }
}

```
