# tddui-encounter-evenement-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-encounter-evenement-example**

## Example Encounter: tddui-encounter-evenement-example

Profil: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md)

> **Ressources utilisées**
* TDDUIRessourceType: Matériel spécialisé
* TDDUIMaterialDetail: Materiel médical

**Rapport de l’évènement**: Observations cliniques : ; Recommandations pour les jours à venir : ; Prochaine visite : 15 avril 2023, 10h30 ; Remarque : Monsieur Dupont a compris les consignes pour la gestion de sa douleur et la mobilisation de sa hanche opérée.

**Commentaire**: Cet évènement a débuté plus tard l’usager était sous la douche à l’heure du début du rendez-vous.

**Libellé de l'évènement**: Visite à domicile pour soins infirmier.

**Motif de l’évènement**: Suivi post-opératoire suite à intervention chirurgicale de la hanche.

**identifier**: Visit Number/3480787529/147720425367411-EVN-12548

**status**: Finished

**class**: [ActCode: HH](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ActCode.html#v3-ActCode-HH) (home health)

**type**: Intervention d'un infirmer salarié, Intervention

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | Participation | [Practitioner Claire Martin](Practitioner-tddui-practitioner-example.md) |

**period**: 2023-04-14 10:30:00+0200 --> 2023-04-14 11:15:00+0200

### Locations

| | |
| :--- | :--- |
| - | **Location** |
| * | [Location](Location-tddui-event-location-example.md) |

**serviceProvider**: [Organization Les Chênes Verts](Organization-tddui-organization-example.md)

**partOf**: [Encounter : extension = 2023-04-11,Date de début du suivi post-opératoire : 14/04/2023,Sortie prévisionnelle prévue pour le 5 mai 2023,2023-05-05; identifier = Identifiant du séjour: 3480787529/147720425367411-SEJOUR-1012; status = in-progress; class = home health (ActCode#HH); period = 2023-04-14 --> (en cours)](Encounter-tddui-encounter-sejour-example.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "tddui-encounter-evenement-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-encounter-evenement"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "TDDUIRessourceType",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                "code" : "ORG-206",
                "display" : "Matériel spécialisé"
              }
            ]
          }
        },
        {
          "url" : "TDDUIMaterialDetail",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
                "code" : "ORG-208",
                "display" : "Materiel médical"
              }
            ]
          }
        }
      ],
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-ressources-used"
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-report",
      "valueString" : "Observations cliniques : ; Recommandations pour les jours à venir : ; Prochaine visite : 15 avril 2023, 10h30 ; Remarque : Monsieur Dupont a compris les consignes pour la gestion de sa douleur et la mobilisation de sa hanche opérée."
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment",
      "valueString" : "Cet évènement a débuté plus tard l’usager était sous la douche à l’heure du début du rendez-vous."
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-label",
      "valueString" : "Visite à domicile pour soins infirmier."
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-event-reason",
      "valueString" : "Suivi post-opératoire suite à intervention chirurgicale de la hanche."
    }
  ],
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identifier-type",
            "code" : "VN"
          }
        ]
      },
      "system" : "https://identifiant-medicosocial-evenement.esante.gouv.fr",
      "value" : "3480787529/147720425367411-EVN-12548"
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "HH"
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "MED-1298",
          "display" : "Intervention d'un infirmer salarié"
        }
      ]
    },
    {
      "text" : "Intervention"
    }
  ],
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "participant" : [
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "PART"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/tddui-practitioner-example"
      }
    }
  ],
  "period" : {
    "start" : "2023-04-14T10:30:00+02:00",
    "end" : "2023-04-14T11:15:00+02:00"
  },
  "location" : [
    {
      "location" : {
        "reference" : "Location/tddui-event-location-example"
      }
    }
  ],
  "serviceProvider" : {
    "reference" : "Organization/tddui-organization-example"
  },
  "partOf" : {
    "reference" : "Encounter/tddui-encounter-sejour-example"
  }
}

```
