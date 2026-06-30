# TDDUI Participant Present - Médicosocial - Transfert de données DUI v2.3.0

## Extension: TDDUI Participant Present 

Indique la présence du participant à l'événement.

* **Événement** :Indique la présence du participant à l'événement.
* **Repas** : Indique la présence de l'usager au repas.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md) and [TDDUI Observation Repas](StructureDefinition-tddui-observation-repas.md)
* Exemples pour ce/t/te Extension: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md) and [Observation/tddui-observation-repas-example](Observation-tddui-observation-repas-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-participant-present)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type boolean : Indique la présence du participant à l'événement.

* **Événement** :Indique la présence du participant à l'événement.
* **Repas** : Indique la présence de l'usager au repas.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type boolean : Indique la présence du participant à l'événement.

* **Événement** :Indique la présence du participant à l'événement.
* **Repas** : Indique la présence de l'usager au repas.

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-participant-present.csv), [Excel](../StructureDefinition-tddui-participant-present.xlsx), [Schematron](../StructureDefinition-tddui-participant-present.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-participant-present",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-participant-present",
  "version" : "2.3.0",
  "name" : "TDDUIParticipantPresent",
  "title" : "TDDUI Participant Present",
  "status" : "active",
  "date" : "2026-06-30T07:08:27+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Indique la présence du participant à l'événement.\n- **Événement** :Indique la présence du participant à l'événement.\n- **Repas** : Indique la présence de l'usager au repas.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Encounter.participant"
  },
  {
    "type" : "element",
    "expression" : "Encounter.serviceProvider"
  },
  {
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Participant Present",
      "definition" : "Indique la présence du participant à l'événement.\n- **Événement** :Indique la présence du participant à l'événement.\n- **Repas** : Indique la présence de l'usager au repas."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-participant-present"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
