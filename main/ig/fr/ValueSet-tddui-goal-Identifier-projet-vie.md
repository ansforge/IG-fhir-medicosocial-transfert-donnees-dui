# TDDUI Goal Identifier Projet Vie - Médicosocial - Transfert de données DUI v2.4.0-ballot

## ValueSet: TDDUI Goal Identifier Projet Vie 

 
ValueSet définissant les types de notes pour l'élément Goal.note. 

 **References** 

Ce jeu de valeurs n'est pas utilisé ici ; il peut être utilisé autre part (par exemple dans les spécifications et / ou implémentations qui utilisent ce contenu)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tddui-goal-Identifier-projet-vie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/ValueSet/tddui-goal-Identifier-projet-vie",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIGoalIdentifierProjetVie",
  "title" : "TDDUI Goal Identifier Projet Vie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-01T13:17:54+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet définissant les types de notes pour l'élément Goal.note.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-goal-identifier",
      "concept" : [{
        "code" : "PDV"
      }]
    }]
  }
}

```
