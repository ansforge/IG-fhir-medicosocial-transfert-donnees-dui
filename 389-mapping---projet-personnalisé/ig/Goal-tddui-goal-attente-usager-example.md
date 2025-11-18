# tddui-goal-attente-usager-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-goal-attente-usager-example**

## Example Goal: tddui-goal-attente-usager-example

Profil: [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md)

**Lien vers le projet personnalisé**: [CarePlan Projet personnalisé de Mme Dupont](CarePlan-tddui-careplan-projet-perso-example.md)

**identifier**: 3480787529/147720425367411-PPAttente-12548

**lifecycleStatus**: Active

**description**: - Garder la main sur l'organisation de ses journées
- Participer à une chorale et à un club lecture
- Se sentir en sécurité lors des déplacements

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**expressedBy**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)



## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-goal-attente-usager-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-attente"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-careplan-reference",
      "valueReference" : {
        "reference" : "CarePlan/tddui-careplan-projet-perso-example"
      }
    }
  ],
  "identifier" : [
    {
      "value" : "3480787529/147720425367411-PPAttente-12548"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "- Garder la main sur l'organisation de ses journées \n- Participer à une chorale et à un club lecture\n- Se sentir en sécurité lors des déplacements"
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "expressedBy" : {
    "reference" : "Patient/tddui-patient-ins-example"
  }
}

```
