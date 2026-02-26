# TDDUI Observation PeriodeScolaire Example - Médicosocial - Transfert de données DUI v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TDDUI Observation PeriodeScolaire Example**

## Example Observation: TDDUI Observation PeriodeScolaire Example

Profil: [TDDUI Observation Periode Scolaire](StructureDefinition-tddui-observation-periode-scolaire.md)

**identifier**: `https://identifiant-medicosocial-periodescolaire.esante.gouv.fr`/3480787529/147720425367411-PSCO-12548

**status**: Registered

**code**: Période scolaire

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**performer**: [RelatedPerson : identifier = 3480787529/123456789-PPAttente-1234-enfant; relationship = Responsable légal,Père](RelatedPerson-tddui-related-person-contact-example.md)

> **component****code**: Type enseignement spécialisé**value**: Scolarisation en ULIS collège

> **component****code**: Diplôme**value**: Diplôme d'études spécialisées



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "tddui-observation-periodescolaire-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-observation-periode-scolaire"]
  },
  "identifier" : [{
    "system" : "https://identifiant-medicosocial-periodescolaire.esante.gouv.fr",
    "value" : "3480787529/147720425367411-PSCO-12548"
  }],
  "status" : "registered",
  "code" : {
    "coding" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-type",
      "code" : "PERIODESCOL",
      "display" : "Période scolaire"
    }]
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "performer" : [{
    "reference" : "RelatedPerson/tddui-related-person-contact-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-periode-scolaire",
        "code" : "typeEnseignementSpecialise",
        "display" : "Type enseignement spécialisé"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r408-type-enseignement-specialise",
        "code" : "3",
        "display" : "Scolarisation en ULIS collège"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-observation-periode-scolaire",
        "code" : "diplome",
        "display" : "Diplôme"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome",
        "code" : "DES",
        "display" : "Diplôme d'études spécialisées"
      }]
    }
  }]
}

```
