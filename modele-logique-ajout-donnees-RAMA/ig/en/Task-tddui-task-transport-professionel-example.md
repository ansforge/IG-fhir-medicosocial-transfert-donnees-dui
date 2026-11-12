# TDDUI Task Transport Professionel Example - Médicosocial - Transfert de données DUI v2.4.0

## Example Task: TDDUI Task Transport Professionel Example

-------

**English**

-------

Profile: [TDDUI Task Transport Professionnel](StructureDefinition-tddui-task-transport-professionnel.md)

**identifier**: `https://identifiant-medicosocial-transportprofessionnel.esante.gouv.fr`/3480787529/147720425367411-TPPro-154674

**status**: Completed

**intent**: plan

**code**: Véhicule individuel

**for**: [Claire Martin (urn:oid:1.2.250.1.71.4.2.1#10103441234)](Practitioner-tddui-practitioner-example.md)

**encounter**: [Encounter: extension = ,Observations cliniques : ; Recommandations pour les jours à venir : ; Prochaine visite : 15 avril 2023, 10h30 ; Remarque : Monsieur Dupont a compris les consignes pour la gestion de sa douleur et la mobilisation de sa hanche opérée.,Cet évènement a débuté plus tard l’usager était sous la douche à l’heure du début du rendez-vous.,Visite à domicile pour soins infirmier.,Suivi post-opératoire suite à intervention chirurgicale de la hanche.,true; identifier = Visit Number: 3480787529/147720425367411-EVN-12548; status = finished; class = home health (ActCode#HH); type = Intervention d'un infirmer salarié,Intervention; period = 2023-04-14 10:30:00+0200 --> 2023-04-14 11:15:00+0200](Encounter-tddui-encounter-evenement-example.md)

**executionPeriod**: 2023-04-14 10:30:00+0200 --> 2023-04-14 11:15:00+0200

**owner**: [Les Chênes Verts (Identification nationale de structure définie par l’ANS dans le CI_SIS: 1480787529)](Organization-tddui-organization-example.md)

> **input****type**: Type de motorisation associée au véhicule utilisé lors du transport.**value**: Véhicule électrique

> **input****type**: Budget prévisionnel pour assurer le transport de la personne physique.**value**: €2.00 (EUR)

> **input****type**: Budget réel pour assurer le transport de la personne physique.**value**: €2.00 (EUR)

> **input****type**: Distance du transport de la personne physique.**value**: 4 kilometers (Details: UCUM codekm = 'km')

> **input****type**: Durée théorique du transport de la personne physique.**value**: 10 minutes (Details: UCUM codemin = 'min')



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-task-transport-professionel-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel"]
  },
  "identifier" : [{
    "system" : "https://identifiant-medicosocial-transportprofessionnel.esante.gouv.fr",
    "value" : "3480787529/147720425367411-TPPro-154674"
  }],
  "status" : "completed",
  "intent" : "plan",
  "code" : {
    "coding" : [{
      "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
      "code" : "ORG-202",
      "display" : "Véhicule individuel"
    }]
  },
  "for" : {
    "reference" : "Practitioner/tddui-practitioner-example"
  },
  "encounter" : {
    "reference" : "Encounter/tddui-encounter-evenement-example"
  },
  "executionPeriod" : {
    "start" : "2023-04-14T10:30:00+02:00",
    "end" : "2023-04-14T11:15:00+02:00"
  },
  "owner" : {
    "reference" : "Organization/tddui-organization-example"
  },
  "input" : [{
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-transport",
        "code" : "typeMotorisation"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "GEN-355",
        "display" : "Véhicule électrique"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-transport",
        "code" : "budgetPrevisionnel"
      }]
    },
    "valueMoney" : {
      "value" : 2,
      "currency" : "EUR"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-transport",
        "code" : "budgetReel"
      }]
    },
    "valueMoney" : {
      "value" : 2,
      "currency" : "EUR"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-transport",
        "code" : "distance"
      }]
    },
    "valueDistance" : {
      "value" : 4,
      "unit" : "kilometers",
      "system" : "http://unitsofmeasure.org",
      "code" : "km"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-transport",
        "code" : "dureeTheorique"
      }]
    },
    "valueDuration" : {
      "value" : 10,
      "unit" : "minutes",
      "system" : "http://unitsofmeasure.org",
      "code" : "min"
    }
  }]
}

```
