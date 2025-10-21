# tddui-task-transport-usager-example - Médicosocial - Transfert de données DUI v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-task-transport-usager-example**

## Example Task: tddui-task-transport-usager-example

Profil: [TDDUI Task Transport Usager](StructureDefinition-tddui-task-transport-usager.md)

**identifier**: `https://identifiant-medicosocial-transportusager.cnsa.fr`/3480787529/147720425367411-TPU-154675

**status**: Completed

**intent**: plan

**code**: Taxi

**encounter**: [Encounter : extension = ,Observations cliniques : ; Recommandations pour les jours à venir : ; Prochaine visite : 15 avril 2023, 10h30 ; Remarque : Monsieur Dupont a compris les consignes pour la gestion de sa douleur et la mobilisation de sa hanche opérée.,Cet évènement a débuté plus tard l’usager était sous la douche à l’heure du début du rendez-vous.,Visite à domicile pour soins infirmier.,Suivi post-opératoire suite à intervention chirurgicale de la hanche.; identifier = Visit Number; status = finished; class = home health (ActCode#HH); type = Intervention d'un infirmer salarié,; period = 2023-04-14 10:30:00+0200 --> 2023-04-14 11:15:00+0200](Encounter-tddui-encounter-evenement-example.md)

**executionPeriod**: 2023-04-14 10:30:00+0200 --> 2023-04-14 11:15:00+0200

> **input****type**:Budget prévisionnel pour assurer le transport de la personne physique.**value**:€2,00(EUR)

> **input****type**:Budget réel pour assurer le transport de la personne physique.**value**:€2,00(EUR)

> **input****type**:Distance du transport de la personne physique.**value**: No display for Distance (value : 4; unit : kilometers; system : http://unitsofmeasure.org; code : km)

> **input****type**:Durée théorique du transport de la personne physique.**value**: No display for Duration (value : 10; unit : minutes; system : http://unitsofmeasure.org; code : min)

> **input****type**:Accompagnement nécessaire ou non de l'usager.**value**: true

> **input****type**:Lors du transport de l'usager l'asepsie est rigoureusement respectée ou n'est pas nécessaire.**value**: false

> **input****type**:Nature du transport de l'usager.**value**:Transports liés au projet individuel



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "tddui-task-transport-usager-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-task-transport-usager"
    ]
  },
  "identifier" : [
    {
      "system" : "https://identifiant-medicosocial-transportusager.cnsa.fr",
      "value" : "3480787529/147720425367411-TPU-154675"
    }
  ],
  "status" : "completed",
  "intent" : "plan",
  "code" : {
    "coding" : [
      {
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "ORG-156",
        "display" : "Taxi"
      }
    ]
  },
  "encounter" : {
    "reference" : "Encounter/tddui-encounter-evenement-example"
  },
  "executionPeriod" : {
    "start" : "2023-04-14T10:30:00+02:00",
    "end" : "2023-04-14T11:15:00+02:00"
  },
  "input" : [
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
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
            "code" : "accompagnement"
          }
        ]
      },
      "valueBoolean" : true
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
            "code" : "asepsie"
          }
        ]
      },
      "valueBoolean" : false
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
            "code" : "natureTransport"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://smt.esante.gouv.fr/terminologie-SERAFINPH",
            "code" : "3.2.4",
            "display" : "Transports liés au projet individuel"
          }
        ]
      }
    }
  ]
}

```
