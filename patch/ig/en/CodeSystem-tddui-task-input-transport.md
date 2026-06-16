# TDDUI Task Input Transport - Médicosocial - Transfert de données DUI v2.3.0

## CodeSystem: TDDUI Task Input Transport 

 
CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI. 

This Code system is referenced in the definition of the following value sets:

* [TDDUITaskInputTransport](ValueSet-tddui-task-input-transport.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tddui-task-input-transport",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-task-input-transport",
  "version" : "2.3.0",
  "name" : "TDDUITaskInputTransport",
  "title" : "TDDUI Task Input Transport",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T15:20:57+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem pour la définition des éléments spécifiques des input dans la ressource Task utilisée pour les transports dans le cadre du DUI.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
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
  }]
}

```
