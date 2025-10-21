# tddui-task-transport-professionel-example - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-task-transport-professionel-example**

## Example Task: tddui-task-transport-professionel-example

Profil: [TDDUI Task Transport Professionnel](StructureDefinition-tddui-task-transport-professionnel.md)

**identifier**: `https://identifiant-medicosocial-transportprofessionnel.cnsa.fr`/3480787529/147720425367411-TPPro-154674

**status**: Completed

**intent**: plan

**code**: Véhicule individuel

**for**: [Practitioner Claire Martin](Practitioner-tddui-practitioner-example.md)

**encounter**: [Encounter : extension = ,Observations cliniques : ; Recommandations pour les jours à venir : ; Prochaine visite : 15 avril 2023, 10h30 ; Remarque : Monsieur Dupont a compris les consignes pour la gestion de sa douleur et la mobilisation de sa hanche opérée.,Cet évènement a débuté plus tard l’usager était sous la douche à l’heure du début du rendez-vous.,Visite à domicile pour soins infirmier.,Suivi post-opératoire suite à intervention chirurgicale de la hanche.; identifier = Visit Number; status = finished; class = home health (ActCode#HH); type = Intervention d'un infirmer salarié,; period = 2023-04-14 10:30:00+0200 --> 2023-04-14 11:15:00+0200](Encounter-tddui-encounter-evenement-example.md)

**executionPeriod**: 2023-04-14 10:30:00+0200 --> 2023-04-14 11:15:00+0200

**owner**: [Organization Les Chênes Verts](Organization-tddui-organization-example.md)

> **input****type**:Type de motorisation associée au véhicule utilisé lors du transport.**value**:Véhicule électrique

> **input****type**:Budget prévisionnel pour assurer le transport de la personne physique.**value**:€2,00(EUR)

> **input****type**:Budget réel pour assurer le transport de la personne physique.**value**:€2,00(EUR)

> **input****type**:Distance du transport de la personne physique.**value**: No display for Distance (value : 4; unit : kilometers; system : http://unitsofmeasure.org; code : km)

> **input****type**:Durée théorique du transport de la personne physique.**value**: No display for Duration (value : 10; unit : minutes; system : http://unitsofmeasure.org; code : min)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-task-transport-professionel-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-professionnel"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-transportprofessionnel.cnsa.fr",
      "value" : "3480787529/147720425367411-TPPro-154674"
    }
  ],
  "status" : "completed",
  "intent" : "plan",
  "code" : {
    "coding" : [
      {
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "ORG-202",
        "display" : "Véhicule individuel"
      }
    ]
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
  "input" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
            "code" : "typeMotorisation"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "GEN-355",
            "display" : "Véhicule électrique"
          }
        ]
      }
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
            "code" : "budgetPrevisionnel"
          }
        ]
      },
      "valueMoney" : {
        "value" : 2,
        "currency" : "EUR"
      }
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
            "code" : "budgetReel"
          }
        ]
      },
      "valueMoney" : {
        "value" : 2,
        "currency" : "EUR"
      }
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
            "code" : "distance"
          }
        ]
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
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
            "code" : "dureeTheorique"
          }
        ]
      },
      "valueDuration" : {
        "value" : 10,
        "unit" : "minutes",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }
  ]
}

```
