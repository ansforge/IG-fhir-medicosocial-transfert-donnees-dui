# TDDUI Human Name DataType - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Profil du type de données: TDDUI Human Name DataType 

 

| | |
| :--- | :--- |
| French profile of datatype HumanName with constraints on prefix and suffix | Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix |

 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md), [TDDUI Patient](StructureDefinition-tddui-patient.md), [TDDUI Practitioner](StructureDefinition-tddui-practitioner.md) and [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-human-name)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreHumanNameProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-human-name.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreHumanNameProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-human-name.html) 

** Résumé **

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreHumanNameProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-human-name.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreHumanNameProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-human-name.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-human-name.csv), [Excel](../StructureDefinition-tddui-human-name.xlsx), [Schematron](../StructureDefinition-tddui-human-name.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-human-name",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-human-name",
  "version" : "2.4.0-ballot",
  "name" : "tddui-humanname",
  "title" : "TDDUI Human Name DataType",
  "status" : "active",
  "date" : "2026-07-01T13:56:20+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "French profile of datatype HumanName with constraints on prefix and suffix | Profilage du type de données HumanName pour prise en compte de la civilté au niveau de l'élément prefix et du titre au niveau de l'élément suffix",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-human-name",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HumanName.prefix",
      "path" : "HumanName.prefix",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS"
      }
    }]
  }
}

```
