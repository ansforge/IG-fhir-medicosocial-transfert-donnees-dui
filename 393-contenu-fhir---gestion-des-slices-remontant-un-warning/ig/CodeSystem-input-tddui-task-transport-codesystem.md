# InputTaskTransportCodeSystem - Médicosocial - Transfert de données DUI v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InputTaskTransportCodeSystem**

## CodeSystem: InputTaskTransportCodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem | *Version*:2.1.0 |
| Active as of 2025-12-18 | *Computable Name*:InputTDDUITaskTransportCodeSystem |

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI. 

 Cette terminologie de référence (CodeSystem) est référencé dans la définition de contenu des jeux de valeurs (ValueSet) suivants : 

* [InputTDDUITaskTransportValueSet](ValueSet-input-tddui-task-transport-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "input-tddui-task-transport-codesystem",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/input-tddui-task-transport-codesystem",
  "version" : "2.1.0",
  "name" : "InputTDDUITaskTransportCodeSystem",
  "title" : "InputTaskTransportCodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-18T10:03:00+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 10,
  "concept" : [
    {
      "code" : "typeMotorisation",
      "display" : "Type de motorisation associée au véhicule utilisé lors du transport."
    },
    {
      "code" : "adresseDepart",
      "display" : "Adresse de départ du transport."
    },
    {
      "code" : "adresseDestination",
      "display" : "Adresse de destination du transport."
    },
    {
      "code" : "budgetPrevisionnel",
      "display" : "Budget prévisionnel pour assurer le transport de la personne physique."
    },
    {
      "code" : "budgetReel",
      "display" : "Budget réel pour assurer le transport de la personne physique."
    },
    {
      "code" : "distance",
      "display" : "Distance du transport de la personne physique."
    },
    {
      "code" : "dureeTheorique",
      "display" : "Durée théorique du transport de la personne physique."
    },
    {
      "code" : "accompagnement",
      "display" : "Accompagnement nécessaire ou non de l'usager. "
    },
    {
      "code" : "asepsie",
      "display" : "Lors du transport de l'usager l'asepsie est rigoureusement respectée ou n'est pas nécessaire."
    },
    {
      "code" : "natureTransport",
      "display" : "Nature du transport de l'usager."
    }
  ]
}

```
