# TDDUI Goal ProjetVie Example - Médicosocial - Transfert de données DUI v2.4.0-ballot

## Exemple Goal: TDDUI Goal ProjetVie Example

-------

**French**

-------

Profil: [TDDUI Goal Projet Vie](StructureDefinition-tddui-goal-projet-vie.md)

**identifier**: Identifiant du projet de vie/3480787529/123456789-PDV-1234

**lifecycleStatus**: Active

**description**: Projet de vie de Mr. Dupont

**subject**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**start**: 2024-01-01

### Targets

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Measure** | **Detail[x]** | **Due[x]** |
| * |  | Permettre à Monsieur Dupont de maintenir sa vie à domicile le plus longtemps possible. | 2025-01-01 |



## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "tddui-goal-projet-vie-example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/tddui/StructureDefinition/tddui-goal-projet-vie"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://interop.esante.gouv.fr/ig/fhir/tddui/CodeSystem/tddui-goal-identifier",
        "code" : "PDV"
      }]
    },
    "system" : "https://identifiant-medicosocial-projetvie.esante.gouv.fr",
    "value" : "3480787529/123456789-PDV-1234"
  }],
  "lifecycleStatus" : "active",
  "description" : {
    "text" : "Projet de vie de Mr. Dupont"
  },
  "subject" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "startDate" : "2024-01-01",
  "target" : [{
    "measure" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "not-permitted"
      }]
    },
    "detailString" : "Permettre à Monsieur Dupont de maintenir sa vie à domicile le plus longtemps possible.",
    "dueDate" : "2025-01-01"
  }]
}

```
