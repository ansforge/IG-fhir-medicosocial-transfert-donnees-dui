# fr-core-related-person-example - Médicosocial - Transfert de données DUI v2.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **fr-core-related-person-example**

## Example RelatedPerson: fr-core-related-person-example

Profil: [FR Core Related Person Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-related-person.html)

**identifier**: 3480787529/147720425367411-PPAttente-12549-famille

**patient**: [DUPONT Male, Date de Naissance :1947-04-03 ( Patient internal identifier: 3480787529/194704032)](Patient-tddui-patient-ins-example.md)

**relationship**: Enfant



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "fr-core-related-person-example",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
    ]
  },
  "identifier" : [
    {
      "value" : "3480787529/147720425367411-PPAttente-12549-famille"
    }
  ],
  "patient" : {
    "reference" : "Patient/tddui-patient-ins-example"
  },
  "relationship" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode",
          "code" : "CHILD",
          "display" : "Enfant"
        }
      ]
    }
  ]
}

```
