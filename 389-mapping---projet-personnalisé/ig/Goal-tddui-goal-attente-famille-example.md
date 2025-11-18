# tddui-goal-attente-famille-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **tddui-goal-attente-famille-example**

## Example Goal: tddui-goal-attente-famille-example

Profil: [TDDUI Goal Attente](StructureDefinition-tddui-goal-attente.md)

**Lien vers le projet personnalisé**: [CarePlan Projet personnalisé de Mme Dupont](CarePlan-tddui-careplan-projet-perso-example.md)

**identifier**: 3480787529/147720425367411-PPAttente-12549

**lifecycleStatus**: Active

**description**: - Prévenir les chutes
- Stabiliser le poids et le plaisir alimentaire
- Maintenir le lien familial (visios)

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**expressedBy**: [RelatedPerson : identifier = 3480787529/147720425367411-PPAttente-12549-famille; relationship = Enfant](RelatedPerson-fr-core-related-person-example.md)



## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-goal-attente-famille-example",
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
      "value" : "3480787529/147720425367411-PPAttente-12549"
    }
  ],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "- Prévenir les chutes\n- Stabiliser le poids et le plaisir alimentaire\n- Maintenir le lien familial (visios)"
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "expressedBy" : {
    "reference" : "RelatedPerson/fr-core-related-person-example"
  }
}

```
