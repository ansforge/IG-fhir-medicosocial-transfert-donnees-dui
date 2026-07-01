# TDDUI Comment - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Extension: TDDUI Comment 

* **Séjour** : commentaire relatif au séjour.
* **Événement** : commentaires sur le déroulé de l’évènement.
* **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.
* **Champ évalué** : commentaire spécifique à un item ou sous-item évalué.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [TDDUI Encounter Evenement](StructureDefinition-tddui-encounter-evenement.md), [TDDUI Encounter Sejour](StructureDefinition-tddui-encounter-sejour.md), [TDDUI Patient INS](StructureDefinition-tddui-patient-ins.md), [TDDUI Patient](StructureDefinition-tddui-patient.md)... Show 2 more, [TDDUI QuestionnaireResponse](StructureDefinition-tddui-questionnaire-response.md) and [TDDUI RelatedPerson Contact](StructureDefinition-tddui-related-person-contact.md)
* Exemples pour ce/t/te Extension: [Bundle/tddui-bundle-example](Bundle-tddui-bundle-example.md), [Encounter/tddui-encounter-evenement-example](Encounter-tddui-encounter-evenement-example.md), [QuestionnaireResponse/tddui-questionnaire-response-serafin-precision-example](QuestionnaireResponse-tddui-questionnaire-response-serafin-precision-example.md) and [QuestionnaireResponse/tddui-questionnaire-response-serafin-sans-precision-example](QuestionnaireResponse-tddui-questionnaire-response-serafin-sans-precision-example.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.tddui|current/StructureDefinition/tddui-comment)

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

Extension simple avec le type string : 
* **Séjour** : commentaire relatif au séjour.
* **Événement** : commentaires sur le déroulé de l’évènement.
* **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.
* **Champ évalué** : commentaire spécifique à un item ou sous-item évalué.

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type string : 
* **Séjour** : commentaire relatif au séjour.
* **Événement** : commentaires sur le déroulé de l’évènement.
* **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.
* **Champ évalué** : commentaire spécifique à un item ou sous-item évalué.

 

Autres représentations du profil : [CSV](../StructureDefinition-tddui-comment.csv), [Excel](../StructureDefinition-tddui-comment.xlsx), [Schematron](../StructureDefinition-tddui-comment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tddui-comment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment",
  "version" : "2.4.0-ballot",
  "name" : "TDDUIComment",
  "title" : "TDDUI Comment",
  "status" : "active",
  "date" : "2026-07-01T08:54:05+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "\n- **Séjour** : commentaire relatif au séjour.\n- **Événement** : commentaires sur le déroulé de l’évènement.\n- **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.\n- **Champ évalué** : commentaire spécifique à un item ou sous-item évalué.",
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
    "expression" : "Encounter"
  },
  {
    "type" : "element",
    "expression" : "QuestionnaireResponse"
  },
  {
    "type" : "element",
    "expression" : "Patient"
  },
  {
    "type" : "element",
    "expression" : "Patient.address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "TDDUI Comment",
      "definition" : "\n- **Séjour** : commentaire relatif au séjour.\n- **Événement** : commentaires sur le déroulé de l’évènement.\n- **Évaluation** : commentaire libre sur le contenu ou le résultat de l’évaluation.\n- **Champ évalué** : commentaire spécifique à un item ou sous-item évalué."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-comment"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Exemple de commentaire : Cet évènement a débuté plus tard l’usager était sous la douche à l’heure du début du rendez-vous.",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
